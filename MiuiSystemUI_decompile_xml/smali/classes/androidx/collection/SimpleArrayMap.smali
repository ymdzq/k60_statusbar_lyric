.class public Landroidx/collection/SimpleArrayMap;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public array:[Ljava/lang/Object;

.field public hashes:[I

.field public size:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Landroidx/collection/SimpleArrayMap;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    .line 3
    sget-object v0, Landroidx/collection/internal/ContainerHelpersKt;->EMPTY_INTS:[I

    goto :goto_0

    .line 4
    :cond_0
    new-array v0, p1, [I

    .line 5
    :goto_0
    iput-object v0, p0, Landroidx/collection/SimpleArrayMap;->hashes:[I

    if-nez p1, :cond_1

    .line 6
    sget-object p1, Landroidx/collection/internal/ContainerHelpersKt;->EMPTY_OBJECTS:[Ljava/lang/Object;

    goto :goto_1

    :cond_1
    shl-int/lit8 p1, p1, 0x1

    .line 7
    new-array p1, p1, [Ljava/lang/Object;

    .line 8
    :goto_1
    iput-object p1, p0, Landroidx/collection/SimpleArrayMap;->array:[Ljava/lang/Object;

    return-void
.end method

.method private final indexOf(ILjava/lang/Object;)I
    .locals 5

    .line 1
    iget v0, p0, Landroidx/collection/SimpleArrayMap;->size:I

    .line 2
    if-nez v0, :cond_0

    .line 4
    const/4 p0, -0x1

    .line 6
    return p0

    .line 7
    :cond_0
    iget-object v1, p0, Landroidx/collection/SimpleArrayMap;->hashes:[I

    .line 8
    invoke-static {v0, p1, v1}, Landroidx/collection/internal/ContainerHelpersKt;->binarySearch(II[I)I

    .line 10
    move-result v1

    .line 13
    if-gez v1, :cond_1

    .line 14
    return v1

    .line 16
    :cond_1
    iget-object v2, p0, Landroidx/collection/SimpleArrayMap;->array:[Ljava/lang/Object;

    .line 17
    shl-int/lit8 v3, v1, 0x1

    .line 19
    aget-object v2, v2, v3

    .line 21
    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 23
    move-result v2

    .line 26
    if-eqz v2, :cond_2

    .line 27
    return v1

    .line 29
    :cond_2
    add-int/lit8 v2, v1, 0x1

    .line 30
    :goto_0
    if-ge v2, v0, :cond_4

    .line 32
    iget-object v3, p0, Landroidx/collection/SimpleArrayMap;->hashes:[I

    .line 34
    aget v3, v3, v2

    .line 36
    if-ne v3, p1, :cond_4

    .line 38
    iget-object v3, p0, Landroidx/collection/SimpleArrayMap;->array:[Ljava/lang/Object;

    .line 40
    shl-int/lit8 v4, v2, 0x1

    .line 42
    aget-object v3, v3, v4

    .line 44
    invoke-static {p2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 46
    move-result v3

    .line 49
    if-eqz v3, :cond_3

    .line 50
    return v2

    .line 52
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 53
    goto :goto_0

    .line 55
    :cond_4
    add-int/lit8 v1, v1, -0x1

    .line 56
    :goto_1
    if-ltz v1, :cond_6

    .line 58
    iget-object v0, p0, Landroidx/collection/SimpleArrayMap;->hashes:[I

    .line 60
    aget v0, v0, v1

    .line 62
    if-ne v0, p1, :cond_6

    .line 64
    iget-object v0, p0, Landroidx/collection/SimpleArrayMap;->array:[Ljava/lang/Object;

    .line 66
    shl-int/lit8 v3, v1, 0x1

    .line 68
    aget-object v0, v0, v3

    .line 70
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 72
    move-result v0

    .line 75
    if-eqz v0, :cond_5

    .line 76
    return v1

    .line 78
    :cond_5
    add-int/lit8 v1, v1, -0x1

    .line 79
    goto :goto_1

    .line 81
    :cond_6
    not-int p0, v2

    .line 82
    return p0
    .line 83
.end method

.method private final indexOfNull()I
    .locals 5

    .line 1
    iget v0, p0, Landroidx/collection/SimpleArrayMap;->size:I

    .line 2
    if-nez v0, :cond_0

    .line 4
    const/4 p0, -0x1

    .line 6
    return p0

    .line 7
    :cond_0
    iget-object v1, p0, Landroidx/collection/SimpleArrayMap;->hashes:[I

    .line 8
    const/4 v2, 0x0

    .line 10
    invoke-static {v0, v2, v1}, Landroidx/collection/internal/ContainerHelpersKt;->binarySearch(II[I)I

    .line 11
    move-result v1

    .line 14
    if-gez v1, :cond_1

    .line 15
    return v1

    .line 17
    :cond_1
    iget-object v2, p0, Landroidx/collection/SimpleArrayMap;->array:[Ljava/lang/Object;

    .line 18
    shl-int/lit8 v3, v1, 0x1

    .line 20
    aget-object v2, v2, v3

    .line 22
    if-nez v2, :cond_2

    .line 24
    return v1

    .line 26
    :cond_2
    add-int/lit8 v2, v1, 0x1

    .line 27
    :goto_0
    if-ge v2, v0, :cond_4

    .line 29
    iget-object v3, p0, Landroidx/collection/SimpleArrayMap;->hashes:[I

    .line 31
    aget v3, v3, v2

    .line 33
    if-nez v3, :cond_4

    .line 35
    iget-object v3, p0, Landroidx/collection/SimpleArrayMap;->array:[Ljava/lang/Object;

    .line 37
    shl-int/lit8 v4, v2, 0x1

    .line 39
    aget-object v3, v3, v4

    .line 41
    if-nez v3, :cond_3

    .line 43
    return v2

    .line 45
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 46
    goto :goto_0

    .line 48
    :cond_4
    add-int/lit8 v1, v1, -0x1

    .line 49
    :goto_1
    if-ltz v1, :cond_6

    .line 51
    iget-object v0, p0, Landroidx/collection/SimpleArrayMap;->hashes:[I

    .line 53
    aget v0, v0, v1

    .line 55
    if-nez v0, :cond_6

    .line 57
    iget-object v0, p0, Landroidx/collection/SimpleArrayMap;->array:[Ljava/lang/Object;

    .line 59
    shl-int/lit8 v3, v1, 0x1

    .line 61
    aget-object v0, v0, v3

    .line 63
    if-nez v0, :cond_5

    .line 65
    return v1

    .line 67
    :cond_5
    add-int/lit8 v1, v1, -0x1

    .line 68
    goto :goto_1

    .line 70
    :cond_6
    not-int p0, v2

    .line 71
    return p0
    .line 72
.end method


# virtual methods
.method public final __restricted$indexOfValue(Ljava/lang/Object;)I
    .locals 4

    .line 1
    iget v0, p0, Landroidx/collection/SimpleArrayMap;->size:I

    .line 2
    mul-int/lit8 v0, v0, 0x2

    .line 4
    iget-object p0, p0, Landroidx/collection/SimpleArrayMap;->array:[Ljava/lang/Object;

    .line 6
    const/4 v1, 0x1

    .line 8
    if-nez p1, :cond_1

    .line 9
    move p1, v1

    .line 11
    :goto_0
    if-ge p1, v0, :cond_3

    .line 12
    aget-object v2, p0, p1

    .line 14
    if-nez v2, :cond_0

    .line 16
    shr-int/lit8 p0, p1, 0x1

    .line 18
    return p0

    .line 20
    :cond_0
    add-int/lit8 p1, p1, 0x2

    .line 21
    goto :goto_0

    .line 23
    :cond_1
    move v2, v1

    .line 24
    :goto_1
    if-ge v2, v0, :cond_3

    .line 25
    aget-object v3, p0, v2

    .line 27
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    move-result v3

    .line 32
    if-eqz v3, :cond_2

    .line 33
    shr-int/lit8 p0, v2, 0x1

    .line 35
    return p0

    .line 37
    :cond_2
    add-int/lit8 v2, v2, 0x2

    .line 38
    goto :goto_1

    .line 40
    :cond_3
    const/4 p0, -0x1

    .line 41
    return p0
    .line 42
.end method

.method public final clear()V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/collection/SimpleArrayMap;->size:I

    .line 2
    if-lez v0, :cond_0

    .line 4
    sget-object v0, Landroidx/collection/internal/ContainerHelpersKt;->EMPTY_INTS:[I

    .line 6
    iput-object v0, p0, Landroidx/collection/SimpleArrayMap;->hashes:[I

    .line 8
    sget-object v0, Landroidx/collection/internal/ContainerHelpersKt;->EMPTY_OBJECTS:[Ljava/lang/Object;

    .line 10
    iput-object v0, p0, Landroidx/collection/SimpleArrayMap;->array:[Ljava/lang/Object;

    .line 12
    const/4 v0, 0x0

    .line 14
    iput v0, p0, Landroidx/collection/SimpleArrayMap;->size:I

    .line 15
    :cond_0
    iget p0, p0, Landroidx/collection/SimpleArrayMap;->size:I

    .line 17
    if-gtz p0, :cond_1

    .line 19
    return-void

    .line 21
    :cond_1
    new-instance p0, Ljava/util/ConcurrentModificationException;

    .line 22
    invoke-direct {p0}, Ljava/util/ConcurrentModificationException;-><init>()V

    .line 24
    throw p0
    .line 27
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/collection/SimpleArrayMap;->indexOfKey(Ljava/lang/Object;)I

    .line 2
    move-result p0

    .line 5
    if-ltz p0, :cond_0

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

.method public containsValue(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/collection/SimpleArrayMap;->__restricted$indexOfValue(Ljava/lang/Object;)I

    .line 2
    move-result p0

    .line 5
    if-ltz p0, :cond_0

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

.method public final ensureCapacity(I)V
    .locals 3

    .line 1
    iget v0, p0, Landroidx/collection/SimpleArrayMap;->size:I

    .line 2
    iget-object v1, p0, Landroidx/collection/SimpleArrayMap;->hashes:[I

    .line 4
    array-length v2, v1

    .line 6
    if-ge v2, p1, :cond_0

    .line 7
    invoke-static {v1, p1}, Ljava/util/Arrays;->copyOf([II)[I

    .line 9
    move-result-object v1

    .line 12
    iput-object v1, p0, Landroidx/collection/SimpleArrayMap;->hashes:[I

    .line 13
    iget-object v1, p0, Landroidx/collection/SimpleArrayMap;->array:[Ljava/lang/Object;

    .line 15
    mul-int/lit8 p1, p1, 0x2

    .line 17
    invoke-static {v1, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 19
    move-result-object p1

    .line 22
    iput-object p1, p0, Landroidx/collection/SimpleArrayMap;->array:[Ljava/lang/Object;

    .line 23
    :cond_0
    iget p0, p0, Landroidx/collection/SimpleArrayMap;->size:I

    .line 25
    if-ne p0, v0, :cond_1

    .line 27
    return-void

    .line 29
    :cond_1
    new-instance p0, Ljava/util/ConcurrentModificationException;

    .line 30
    invoke-direct {p0}, Ljava/util/ConcurrentModificationException;-><init>()V

    .line 32
    throw p0
    .line 35
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    :try_start_0
    instance-of v2, p1, Landroidx/collection/SimpleArrayMap;

    .line 7
    if-eqz v2, :cond_6

    .line 9
    iget v2, p0, Landroidx/collection/SimpleArrayMap;->size:I

    .line 11
    move-object v3, p1

    .line 13
    check-cast v3, Landroidx/collection/SimpleArrayMap;

    .line 14
    iget v3, v3, Landroidx/collection/SimpleArrayMap;->size:I

    .line 16
    if-eq v2, v3, :cond_1

    .line 18
    return v1

    .line 20
    :cond_1
    check-cast p1, Landroidx/collection/SimpleArrayMap;

    .line 21
    move v3, v1

    .line 23
    :goto_0
    if-ge v3, v2, :cond_5

    .line 24
    invoke-virtual {p0, v3}, Landroidx/collection/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 26
    move-result-object v4

    .line 29
    invoke-virtual {p0, v3}, Landroidx/collection/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 30
    move-result-object v5

    .line 33
    invoke-virtual {p1, v4}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    move-result-object v6

    .line 37
    if-nez v5, :cond_3

    .line 38
    if-nez v6, :cond_2

    .line 40
    invoke-virtual {p1, v4}, Landroidx/collection/SimpleArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 42
    move-result v4

    .line 45
    if-nez v4, :cond_4

    .line 46
    :cond_2
    return v1

    .line 48
    :cond_3
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 49
    move-result v4

    .line 52
    if-nez v4, :cond_4

    .line 53
    return v1

    .line 55
    :cond_4
    add-int/lit8 v3, v3, 0x1

    .line 56
    goto :goto_0

    .line 58
    :cond_5
    return v0

    .line 59
    :cond_6
    instance-of v2, p1, Ljava/util/Map;

    .line 60
    if-eqz v2, :cond_c

    .line 62
    iget v2, p0, Landroidx/collection/SimpleArrayMap;->size:I

    .line 64
    move-object v3, p1

    .line 66
    check-cast v3, Ljava/util/Map;

    .line 67
    invoke-interface {v3}, Ljava/util/Map;->size()I

    .line 69
    move-result v3

    .line 72
    if-eq v2, v3, :cond_7

    .line 73
    return v1

    .line 75
    :cond_7
    iget v2, p0, Landroidx/collection/SimpleArrayMap;->size:I

    .line 76
    move v3, v1

    .line 78
    :goto_1
    if-ge v3, v2, :cond_b

    .line 79
    invoke-virtual {p0, v3}, Landroidx/collection/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 81
    move-result-object v4

    .line 84
    invoke-virtual {p0, v3}, Landroidx/collection/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 85
    move-result-object v5

    .line 88
    move-object v6, p1

    .line 89
    check-cast v6, Ljava/util/Map;

    .line 90
    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    move-result-object v6

    .line 95
    if-nez v5, :cond_9

    .line 96
    if-nez v6, :cond_8

    .line 98
    move-object v5, p1

    .line 100
    check-cast v5, Ljava/util/Map;

    .line 101
    invoke-interface {v5, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 103
    move-result v4

    .line 106
    if-nez v4, :cond_a

    .line 107
    :cond_8
    return v1

    .line 109
    :cond_9
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 110
    move-result v4
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    if-nez v4, :cond_a

    .line 114
    return v1

    .line 116
    :cond_a
    add-int/lit8 v3, v3, 0x1

    .line 117
    goto :goto_1

    .line 119
    :cond_b
    return v0

    .line 120
    :catch_0
    :cond_c
    return v1
    .line 121
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/collection/SimpleArrayMap;->indexOfKey(Ljava/lang/Object;)I

    .line 2
    move-result p1

    .line 5
    if-ltz p1, :cond_0

    .line 6
    iget-object p0, p0, Landroidx/collection/SimpleArrayMap;->array:[Ljava/lang/Object;

    .line 8
    shl-int/lit8 p1, p1, 0x1

    .line 10
    add-int/lit8 p1, p1, 0x1

    .line 12
    aget-object p0, p0, p1

    .line 14
    goto :goto_0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    :goto_0
    return-object p0
    .line 18
.end method

.method public final getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/collection/SimpleArrayMap;->indexOfKey(Ljava/lang/Object;)I

    .line 2
    move-result p1

    .line 5
    if-ltz p1, :cond_0

    .line 6
    iget-object p0, p0, Landroidx/collection/SimpleArrayMap;->array:[Ljava/lang/Object;

    .line 8
    shl-int/lit8 p1, p1, 0x1

    .line 10
    add-int/lit8 p1, p1, 0x1

    .line 12
    aget-object p2, p0, p1

    .line 14
    :cond_0
    return-object p2
    .line 16
.end method

.method public final hashCode()I
    .locals 8

    .line 1
    iget-object v0, p0, Landroidx/collection/SimpleArrayMap;->hashes:[I

    .line 2
    iget-object v1, p0, Landroidx/collection/SimpleArrayMap;->array:[Ljava/lang/Object;

    .line 4
    iget p0, p0, Landroidx/collection/SimpleArrayMap;->size:I

    .line 6
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x1

    .line 9
    move v4, v2

    .line 10
    move v5, v4

    .line 11
    :goto_0
    if-ge v4, p0, :cond_1

    .line 12
    aget-object v6, v1, v3

    .line 14
    aget v7, v0, v4

    .line 16
    if-eqz v6, :cond_0

    .line 18
    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    .line 20
    move-result v6

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    move v6, v2

    .line 25
    :goto_1
    xor-int/2addr v6, v7

    .line 26
    add-int/2addr v5, v6

    .line 27
    add-int/lit8 v4, v4, 0x1

    .line 28
    add-int/lit8 v3, v3, 0x2

    .line 30
    goto :goto_0

    .line 32
    :cond_1
    return v5
    .line 33
.end method

.method public final indexOfKey(Ljava/lang/Object;)I
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    invoke-direct {p0}, Landroidx/collection/SimpleArrayMap;->indexOfNull()I

    .line 4
    move-result p0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 9
    move-result v0

    .line 12
    invoke-direct {p0, v0, p1}, Landroidx/collection/SimpleArrayMap;->indexOf(ILjava/lang/Object;)I

    .line 13
    move-result p0

    .line 16
    :goto_0
    return p0
    .line 17
.end method

.method public final isEmpty()Z
    .locals 0

    .line 1
    iget p0, p0, Landroidx/collection/SimpleArrayMap;->size:I

    .line 2
    if-gtz p0, :cond_0

    .line 4
    const/4 p0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    :goto_0
    return p0
    .line 9
.end method

.method public final keyAt(I)Ljava/lang/Object;
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    if-ltz p1, :cond_0

    .line 4
    iget v2, p0, Landroidx/collection/SimpleArrayMap;->size:I

    .line 6
    if-ge p1, v2, :cond_0

    .line 8
    move v1, v0

    .line 10
    :cond_0
    if-eqz v1, :cond_1

    .line 11
    iget-object p0, p0, Landroidx/collection/SimpleArrayMap;->array:[Ljava/lang/Object;

    .line 13
    shl-int/2addr p1, v0

    .line 15
    aget-object p0, p0, p1

    .line 16
    return-object p0

    .line 18
    :cond_1
    const-string p0, "Expected index to be within 0..size()-1, but was "

    .line 19
    invoke-static {p0, p1}, Landroidx/appcompat/view/menu/SubMenuBuilder$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 21
    move-result-object p0

    .line 24
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 25
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 27
    move-result-object p0

    .line 30
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 31
    throw p1
    .line 34
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    iget v0, p0, Landroidx/collection/SimpleArrayMap;->size:I

    .line 2
    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 6
    move-result v1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v1, 0x0

    .line 11
    :goto_0
    if-eqz p1, :cond_1

    .line 12
    invoke-direct {p0, v1, p1}, Landroidx/collection/SimpleArrayMap;->indexOf(ILjava/lang/Object;)I

    .line 14
    move-result v2

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    invoke-direct {p0}, Landroidx/collection/SimpleArrayMap;->indexOfNull()I

    .line 19
    move-result v2

    .line 22
    :goto_1
    if-ltz v2, :cond_2

    .line 23
    shl-int/lit8 p1, v2, 0x1

    .line 25
    add-int/lit8 p1, p1, 0x1

    .line 27
    iget-object p0, p0, Landroidx/collection/SimpleArrayMap;->array:[Ljava/lang/Object;

    .line 29
    aget-object v0, p0, p1

    .line 31
    aput-object p2, p0, p1

    .line 33
    return-object v0

    .line 35
    :cond_2
    not-int v2, v2

    .line 36
    iget-object v3, p0, Landroidx/collection/SimpleArrayMap;->hashes:[I

    .line 37
    array-length v4, v3

    .line 39
    if-lt v0, v4, :cond_6

    .line 40
    const/16 v4, 0x8

    .line 42
    if-lt v0, v4, :cond_3

    .line 44
    shr-int/lit8 v4, v0, 0x1

    .line 46
    add-int/2addr v4, v0

    .line 48
    goto :goto_2

    .line 49
    :cond_3
    const/4 v5, 0x4

    .line 50
    if-lt v0, v5, :cond_4

    .line 51
    goto :goto_2

    .line 53
    :cond_4
    move v4, v5

    .line 54
    :goto_2
    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([II)[I

    .line 55
    move-result-object v3

    .line 58
    iput-object v3, p0, Landroidx/collection/SimpleArrayMap;->hashes:[I

    .line 59
    iget-object v3, p0, Landroidx/collection/SimpleArrayMap;->array:[Ljava/lang/Object;

    .line 61
    shl-int/lit8 v4, v4, 0x1

    .line 63
    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 65
    move-result-object v3

    .line 68
    iput-object v3, p0, Landroidx/collection/SimpleArrayMap;->array:[Ljava/lang/Object;

    .line 69
    iget v3, p0, Landroidx/collection/SimpleArrayMap;->size:I

    .line 71
    if-ne v0, v3, :cond_5

    .line 73
    goto :goto_3

    .line 75
    :cond_5
    new-instance p0, Ljava/util/ConcurrentModificationException;

    .line 76
    invoke-direct {p0}, Ljava/util/ConcurrentModificationException;-><init>()V

    .line 78
    throw p0

    .line 81
    :cond_6
    :goto_3
    if-ge v2, v0, :cond_7

    .line 82
    iget-object v3, p0, Landroidx/collection/SimpleArrayMap;->hashes:[I

    .line 84
    add-int/lit8 v4, v2, 0x1

    .line 86
    sub-int v5, v0, v2

    .line 88
    invoke-static {v3, v2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 90
    iget-object v3, p0, Landroidx/collection/SimpleArrayMap;->array:[Ljava/lang/Object;

    .line 93
    shl-int/lit8 v4, v4, 0x1

    .line 95
    shl-int/lit8 v5, v2, 0x1

    .line 97
    iget v6, p0, Landroidx/collection/SimpleArrayMap;->size:I

    .line 99
    shl-int/lit8 v6, v6, 0x1

    .line 101
    sub-int/2addr v6, v5

    .line 103
    invoke-static {v3, v5, v3, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 104
    :cond_7
    iget v3, p0, Landroidx/collection/SimpleArrayMap;->size:I

    .line 107
    if-ne v0, v3, :cond_8

    .line 109
    iget-object v0, p0, Landroidx/collection/SimpleArrayMap;->hashes:[I

    .line 111
    array-length v4, v0

    .line 113
    if-ge v2, v4, :cond_8

    .line 114
    aput v1, v0, v2

    .line 116
    iget-object v0, p0, Landroidx/collection/SimpleArrayMap;->array:[Ljava/lang/Object;

    .line 118
    shl-int/lit8 v1, v2, 0x1

    .line 120
    aput-object p1, v0, v1

    .line 122
    add-int/lit8 v1, v1, 0x1

    .line 124
    aput-object p2, v0, v1

    .line 126
    add-int/lit8 v3, v3, 0x1

    .line 128
    iput v3, p0, Landroidx/collection/SimpleArrayMap;->size:I

    .line 130
    const/4 p0, 0x0

    .line 132
    return-object p0

    .line 133
    :cond_8
    new-instance p0, Ljava/util/ConcurrentModificationException;

    .line 134
    invoke-direct {p0}, Ljava/util/ConcurrentModificationException;-><init>()V

    .line 136
    throw p0
    .line 139
.end method

.method public final putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    invoke-virtual {p0, p1, p2}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 11
    :cond_0
    return-object v0
    .line 12
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/collection/SimpleArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Landroidx/collection/SimpleArrayMap;->removeAt(I)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .line 3
    invoke-virtual {p0, p1}, Landroidx/collection/SimpleArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 4
    invoke-virtual {p0, p1}, Landroidx/collection/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    .line 5
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 6
    invoke-virtual {p0, p1}, Landroidx/collection/SimpleArrayMap;->removeAt(I)Ljava/lang/Object;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final removeAt(I)Ljava/lang/Object;
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-ltz p1, :cond_0

    .line 4
    iget v2, p0, Landroidx/collection/SimpleArrayMap;->size:I

    .line 6
    if-ge p1, v2, :cond_0

    .line 8
    move v2, v1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v2, v0

    .line 12
    :goto_0
    if-eqz v2, :cond_9

    .line 13
    iget-object v2, p0, Landroidx/collection/SimpleArrayMap;->array:[Ljava/lang/Object;

    .line 15
    shl-int/lit8 v3, p1, 0x1

    .line 17
    add-int/lit8 v4, v3, 0x1

    .line 19
    aget-object v4, v2, v4

    .line 21
    iget v5, p0, Landroidx/collection/SimpleArrayMap;->size:I

    .line 23
    if-gt v5, v1, :cond_1

    .line 25
    invoke-virtual {p0}, Landroidx/collection/SimpleArrayMap;->clear()V

    .line 27
    goto/16 :goto_2

    .line 30
    :cond_1
    add-int/lit8 v6, v5, -0x1

    .line 32
    iget-object v7, p0, Landroidx/collection/SimpleArrayMap;->hashes:[I

    .line 34
    array-length v8, v7

    .line 36
    const/16 v9, 0x8

    .line 37
    if-le v8, v9, :cond_5

    .line 39
    array-length v8, v7

    .line 41
    div-int/lit8 v8, v8, 0x3

    .line 42
    if-ge v5, v8, :cond_5

    .line 44
    if-le v5, v9, :cond_2

    .line 46
    shr-int/lit8 v8, v5, 0x1

    .line 48
    add-int v9, v5, v8

    .line 50
    :cond_2
    invoke-static {v7, v9}, Ljava/util/Arrays;->copyOf([II)[I

    .line 52
    move-result-object v8

    .line 55
    iput-object v8, p0, Landroidx/collection/SimpleArrayMap;->hashes:[I

    .line 56
    iget-object v8, p0, Landroidx/collection/SimpleArrayMap;->array:[Ljava/lang/Object;

    .line 58
    shl-int/lit8 v1, v9, 0x1

    .line 60
    invoke-static {v8, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 62
    move-result-object v1

    .line 65
    iput-object v1, p0, Landroidx/collection/SimpleArrayMap;->array:[Ljava/lang/Object;

    .line 66
    iget v1, p0, Landroidx/collection/SimpleArrayMap;->size:I

    .line 68
    if-ne v5, v1, :cond_4

    .line 70
    if-lez p1, :cond_3

    .line 72
    iget-object v1, p0, Landroidx/collection/SimpleArrayMap;->hashes:[I

    .line 74
    add-int/lit8 v8, p1, 0x0

    .line 76
    invoke-static {v7, v0, v1, v0, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 78
    iget-object v1, p0, Landroidx/collection/SimpleArrayMap;->array:[Ljava/lang/Object;

    .line 81
    add-int/lit8 v8, v3, 0x0

    .line 83
    invoke-static {v2, v0, v1, v0, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 85
    :cond_3
    if-ge p1, v6, :cond_7

    .line 88
    iget-object v0, p0, Landroidx/collection/SimpleArrayMap;->hashes:[I

    .line 90
    add-int/lit8 v1, p1, 0x1

    .line 92
    add-int/lit8 v8, v6, 0x1

    .line 94
    sub-int v9, v8, v1

    .line 96
    invoke-static {v7, v1, v0, p1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 98
    iget-object p1, p0, Landroidx/collection/SimpleArrayMap;->array:[Ljava/lang/Object;

    .line 101
    shl-int/lit8 v0, v1, 0x1

    .line 103
    shl-int/lit8 v1, v8, 0x1

    .line 105
    sub-int/2addr v1, v0

    .line 107
    invoke-static {v2, v0, p1, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 108
    goto :goto_1

    .line 111
    :cond_4
    new-instance p0, Ljava/util/ConcurrentModificationException;

    .line 112
    invoke-direct {p0}, Ljava/util/ConcurrentModificationException;-><init>()V

    .line 114
    throw p0

    .line 117
    :cond_5
    if-ge p1, v6, :cond_6

    .line 118
    add-int/lit8 v0, p1, 0x1

    .line 120
    add-int/lit8 v2, v6, 0x1

    .line 122
    sub-int v8, v2, v0

    .line 124
    invoke-static {v7, v0, v7, p1, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 126
    iget-object p1, p0, Landroidx/collection/SimpleArrayMap;->array:[Ljava/lang/Object;

    .line 129
    shl-int/2addr v0, v1

    .line 131
    shl-int/2addr v2, v1

    .line 132
    sub-int/2addr v2, v0

    .line 133
    invoke-static {p1, v0, p1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 134
    :cond_6
    iget-object p1, p0, Landroidx/collection/SimpleArrayMap;->array:[Ljava/lang/Object;

    .line 137
    shl-int/lit8 v0, v6, 0x1

    .line 139
    const/4 v2, 0x0

    .line 141
    aput-object v2, p1, v0

    .line 142
    add-int/2addr v0, v1

    .line 144
    aput-object v2, p1, v0

    .line 145
    :cond_7
    :goto_1
    iget p1, p0, Landroidx/collection/SimpleArrayMap;->size:I

    .line 147
    if-ne v5, p1, :cond_8

    .line 149
    iput v6, p0, Landroidx/collection/SimpleArrayMap;->size:I

    .line 151
    :goto_2
    return-object v4

    .line 153
    :cond_8
    new-instance p0, Ljava/util/ConcurrentModificationException;

    .line 154
    invoke-direct {p0}, Ljava/util/ConcurrentModificationException;-><init>()V

    .line 156
    throw p0

    .line 159
    :cond_9
    const-string p0, "Expected index to be within 0..size()-1, but was "

    .line 160
    invoke-static {p0, p1}, Landroidx/appcompat/view/menu/SubMenuBuilder$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 162
    move-result-object p0

    .line 165
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 166
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 168
    move-result-object p0

    .line 171
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 172
    throw p1
    .line 175
.end method

.method public final replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/collection/SimpleArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1, p2}, Landroidx/collection/SimpleArrayMap;->setValueAt(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .line 3
    invoke-virtual {p0, p1}, Landroidx/collection/SimpleArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 4
    invoke-virtual {p0, p1}, Landroidx/collection/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    .line 5
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 6
    invoke-virtual {p0, p1, p3}, Landroidx/collection/SimpleArrayMap;->setValueAt(ILjava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final setValueAt(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-ltz p1, :cond_0

    .line 4
    iget v2, p0, Landroidx/collection/SimpleArrayMap;->size:I

    .line 6
    if-ge p1, v2, :cond_0

    .line 8
    move v0, v1

    .line 10
    :cond_0
    if-eqz v0, :cond_1

    .line 11
    shl-int/2addr p1, v1

    .line 13
    add-int/2addr p1, v1

    .line 14
    iget-object p0, p0, Landroidx/collection/SimpleArrayMap;->array:[Ljava/lang/Object;

    .line 15
    aget-object v0, p0, p1

    .line 17
    aput-object p2, p0, p1

    .line 19
    return-object v0

    .line 21
    :cond_1
    const-string p0, "Expected index to be within 0..size()-1, but was "

    .line 22
    invoke-static {p0, p1}, Landroidx/appcompat/view/menu/SubMenuBuilder$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 24
    move-result-object p0

    .line 27
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 28
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 30
    move-result-object p0

    .line 33
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 34
    throw p1
    .line 37
.end method

.method public final size()I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/collection/SimpleArrayMap;->size:I

    .line 2
    return p0
    .line 4
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroidx/collection/SimpleArrayMap;->isEmpty()Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    const-string/jumbo p0, "{}"

    .line 8
    return-object p0

    .line 11
    :cond_0
    iget v0, p0, Landroidx/collection/SimpleArrayMap;->size:I

    .line 12
    mul-int/lit8 v0, v0, 0x1c

    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    .line 16
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 18
    const/16 v0, 0x7b

    .line 21
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 23
    iget v0, p0, Landroidx/collection/SimpleArrayMap;->size:I

    .line 26
    const/4 v2, 0x0

    .line 28
    :goto_0
    if-ge v2, v0, :cond_4

    .line 29
    if-lez v2, :cond_1

    .line 31
    const-string v3, ", "

    .line 33
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    :cond_1
    invoke-virtual {p0, v2}, Landroidx/collection/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 38
    move-result-object v3

    .line 41
    const-string v4, "(this Map)"

    .line 42
    if-eq v3, v1, :cond_2

    .line 44
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 46
    goto :goto_1

    .line 49
    :cond_2
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    :goto_1
    const/16 v3, 0x3d

    .line 53
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {p0, v2}, Landroidx/collection/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 58
    move-result-object v3

    .line 61
    if-eq v3, v1, :cond_3

    .line 62
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 64
    goto :goto_2

    .line 67
    :cond_3
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 71
    goto :goto_0

    .line 73
    :cond_4
    const/16 p0, 0x7d

    .line 74
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    move-result-object p0

    .line 82
    return-object p0
    .line 83
.end method

.method public final valueAt(I)Ljava/lang/Object;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-ltz p1, :cond_0

    .line 4
    iget v2, p0, Landroidx/collection/SimpleArrayMap;->size:I

    .line 6
    if-ge p1, v2, :cond_0

    .line 8
    move v0, v1

    .line 10
    :cond_0
    if-eqz v0, :cond_1

    .line 11
    iget-object p0, p0, Landroidx/collection/SimpleArrayMap;->array:[Ljava/lang/Object;

    .line 13
    shl-int/2addr p1, v1

    .line 15
    add-int/2addr p1, v1

    .line 16
    aget-object p0, p0, p1

    .line 17
    return-object p0

    .line 19
    :cond_1
    const-string p0, "Expected index to be within 0..size()-1, but was "

    .line 20
    invoke-static {p0, p1}, Landroidx/appcompat/view/menu/SubMenuBuilder$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 22
    move-result-object p0

    .line 25
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 26
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 28
    move-result-object p0

    .line 31
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 32
    throw p1
    .line 35
.end method
