.class public final Landroidx/collection/LongSparseArray;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public synthetic garbage:Z

.field public synthetic keys:[J

.field public synthetic size:I

.field public synthetic values:[Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0xa

    .line 7
    invoke-direct {p0, v0}, Landroidx/collection/LongSparseArray;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    .line 2
    sget-object p1, Landroidx/collection/internal/ContainerHelpersKt;->EMPTY_LONGS:[J

    iput-object p1, p0, Landroidx/collection/LongSparseArray;->keys:[J

    .line 3
    sget-object p1, Landroidx/collection/internal/ContainerHelpersKt;->EMPTY_OBJECTS:[Ljava/lang/Object;

    iput-object p1, p0, Landroidx/collection/LongSparseArray;->values:[Ljava/lang/Object;

    goto :goto_2

    :cond_0
    mul-int/lit8 p1, p1, 0x8

    const/4 v0, 0x4

    :goto_0
    const/16 v1, 0x20

    if-ge v0, v1, :cond_2

    const/4 v1, 0x1

    shl-int/2addr v1, v0

    add-int/lit8 v1, v1, -0xc

    if-gt p1, v1, :cond_1

    move p1, v1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4
    :cond_2
    :goto_1
    div-int/lit8 p1, p1, 0x8

    .line 5
    new-array v0, p1, [J

    iput-object v0, p0, Landroidx/collection/LongSparseArray;->keys:[J

    .line 6
    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Landroidx/collection/LongSparseArray;->values:[Ljava/lang/Object;

    :goto_2
    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 5

    .line 1
    iget v0, p0, Landroidx/collection/LongSparseArray;->size:I

    .line 2
    iget-object v1, p0, Landroidx/collection/LongSparseArray;->values:[Ljava/lang/Object;

    .line 4
    const/4 v2, 0x0

    .line 6
    move v3, v2

    .line 7
    :goto_0
    if-ge v3, v0, :cond_0

    .line 8
    const/4 v4, 0x0

    .line 10
    aput-object v4, v1, v3

    .line 11
    add-int/lit8 v3, v3, 0x1

    .line 13
    goto :goto_0

    .line 15
    :cond_0
    iput v2, p0, Landroidx/collection/LongSparseArray;->size:I

    .line 16
    iput-boolean v2, p0, Landroidx/collection/LongSparseArray;->garbage:Z

    .line 18
    return-void
    .line 20
.end method

.method public final clone()Landroidx/collection/LongSparseArray;
    .locals 2

    .line 2
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/collection/LongSparseArray;

    .line 3
    iget-object v1, p0, Landroidx/collection/LongSparseArray;->keys:[J

    invoke-virtual {v1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    iput-object v1, v0, Landroidx/collection/LongSparseArray;->keys:[J

    .line 4
    iget-object p0, p0, Landroidx/collection/LongSparseArray;->values:[Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    iput-object p0, v0, Landroidx/collection/LongSparseArray;->values:[Ljava/lang/Object;

    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/collection/LongSparseArray;->clone()Landroidx/collection/LongSparseArray;

    move-result-object p0

    return-object p0
.end method

.method public final get(J)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/collection/LongSparseArray;->keys:[J

    .line 2
    iget v1, p0, Landroidx/collection/LongSparseArray;->size:I

    .line 4
    invoke-static {v0, v1, p1, p2}, Landroidx/collection/internal/ContainerHelpersKt;->binarySearch([JIJ)I

    .line 6
    move-result p1

    .line 9
    if-ltz p1, :cond_0

    .line 10
    iget-object p0, p0, Landroidx/collection/LongSparseArray;->values:[Ljava/lang/Object;

    .line 12
    aget-object p0, p0, p1

    .line 14
    sget-object p1, Landroidx/collection/LongSparseArrayKt;->DELETED:Ljava/lang/Object;

    .line 16
    if-ne p0, p1, :cond_1

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 20
    :cond_1
    return-object p0
    .line 21
.end method

.method public final indexOfKey(J)I
    .locals 9

    .line 1
    iget-boolean v0, p0, Landroidx/collection/LongSparseArray;->garbage:Z

    .line 2
    if-eqz v0, :cond_3

    .line 4
    iget v0, p0, Landroidx/collection/LongSparseArray;->size:I

    .line 6
    iget-object v1, p0, Landroidx/collection/LongSparseArray;->keys:[J

    .line 8
    iget-object v2, p0, Landroidx/collection/LongSparseArray;->values:[Ljava/lang/Object;

    .line 10
    const/4 v3, 0x0

    .line 12
    move v4, v3

    .line 13
    move v5, v4

    .line 14
    :goto_0
    if-ge v4, v0, :cond_2

    .line 15
    aget-object v6, v2, v4

    .line 17
    sget-object v7, Landroidx/collection/LongSparseArrayKt;->DELETED:Ljava/lang/Object;

    .line 19
    if-eq v6, v7, :cond_1

    .line 21
    if-eq v4, v5, :cond_0

    .line 23
    aget-wide v7, v1, v4

    .line 25
    aput-wide v7, v1, v5

    .line 27
    aput-object v6, v2, v5

    .line 29
    const/4 v6, 0x0

    .line 31
    aput-object v6, v2, v4

    .line 32
    :cond_0
    add-int/lit8 v5, v5, 0x1

    .line 34
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 36
    goto :goto_0

    .line 38
    :cond_2
    iput-boolean v3, p0, Landroidx/collection/LongSparseArray;->garbage:Z

    .line 39
    iput v5, p0, Landroidx/collection/LongSparseArray;->size:I

    .line 41
    :cond_3
    iget-object v0, p0, Landroidx/collection/LongSparseArray;->keys:[J

    .line 43
    iget p0, p0, Landroidx/collection/LongSparseArray;->size:I

    .line 45
    invoke-static {v0, p0, p1, p2}, Landroidx/collection/internal/ContainerHelpersKt;->binarySearch([JIJ)I

    .line 47
    move-result p0

    .line 50
    return p0
    .line 51
.end method

.method public final keyAt(I)J
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    if-ltz p1, :cond_0

    .line 3
    iget v1, p0, Landroidx/collection/LongSparseArray;->size:I

    .line 5
    if-ge p1, v1, :cond_0

    .line 7
    const/4 v1, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move v1, v0

    .line 11
    :goto_0
    if-eqz v1, :cond_5

    .line 12
    iget-boolean v1, p0, Landroidx/collection/LongSparseArray;->garbage:Z

    .line 14
    if-eqz v1, :cond_4

    .line 16
    iget v1, p0, Landroidx/collection/LongSparseArray;->size:I

    .line 18
    iget-object v2, p0, Landroidx/collection/LongSparseArray;->keys:[J

    .line 20
    iget-object v3, p0, Landroidx/collection/LongSparseArray;->values:[Ljava/lang/Object;

    .line 22
    move v4, v0

    .line 24
    move v5, v4

    .line 25
    :goto_1
    if-ge v4, v1, :cond_3

    .line 26
    aget-object v6, v3, v4

    .line 28
    sget-object v7, Landroidx/collection/LongSparseArrayKt;->DELETED:Ljava/lang/Object;

    .line 30
    if-eq v6, v7, :cond_2

    .line 32
    if-eq v4, v5, :cond_1

    .line 34
    aget-wide v7, v2, v4

    .line 36
    aput-wide v7, v2, v5

    .line 38
    aput-object v6, v3, v5

    .line 40
    const/4 v6, 0x0

    .line 42
    aput-object v6, v3, v4

    .line 43
    :cond_1
    add-int/lit8 v5, v5, 0x1

    .line 45
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 47
    goto :goto_1

    .line 49
    :cond_3
    iput-boolean v0, p0, Landroidx/collection/LongSparseArray;->garbage:Z

    .line 50
    iput v5, p0, Landroidx/collection/LongSparseArray;->size:I

    .line 52
    :cond_4
    iget-object p0, p0, Landroidx/collection/LongSparseArray;->keys:[J

    .line 54
    aget-wide p0, p0, p1

    .line 56
    return-wide p0

    .line 58
    :cond_5
    const-string p0, "Expected index to be within 0..size()-1, but was "

    .line 59
    invoke-static {p0, p1}, Landroidx/appcompat/view/menu/SubMenuBuilder$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 61
    move-result-object p0

    .line 64
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 65
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 67
    move-result-object p0

    .line 70
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 71
    throw p1
    .line 74
.end method

.method public final put(Ljava/lang/Object;J)V
    .locals 9

    .line 1
    iget-object v0, p0, Landroidx/collection/LongSparseArray;->keys:[J

    .line 2
    iget v1, p0, Landroidx/collection/LongSparseArray;->size:I

    .line 4
    invoke-static {v0, v1, p2, p3}, Landroidx/collection/internal/ContainerHelpersKt;->binarySearch([JIJ)I

    .line 6
    move-result v0

    .line 9
    if-ltz v0, :cond_0

    .line 10
    iget-object p0, p0, Landroidx/collection/LongSparseArray;->values:[Ljava/lang/Object;

    .line 12
    aput-object p1, p0, v0

    .line 14
    goto/16 :goto_3

    .line 16
    :cond_0
    not-int v0, v0

    .line 18
    iget v1, p0, Landroidx/collection/LongSparseArray;->size:I

    .line 19
    if-ge v0, v1, :cond_1

    .line 21
    iget-object v2, p0, Landroidx/collection/LongSparseArray;->values:[Ljava/lang/Object;

    .line 23
    aget-object v3, v2, v0

    .line 25
    sget-object v4, Landroidx/collection/LongSparseArrayKt;->DELETED:Ljava/lang/Object;

    .line 27
    if-ne v3, v4, :cond_1

    .line 29
    iget-object p0, p0, Landroidx/collection/LongSparseArray;->keys:[J

    .line 31
    aput-wide p2, p0, v0

    .line 33
    aput-object p1, v2, v0

    .line 35
    goto/16 :goto_3

    .line 37
    :cond_1
    iget-boolean v2, p0, Landroidx/collection/LongSparseArray;->garbage:Z

    .line 39
    if-eqz v2, :cond_5

    .line 41
    iget-object v2, p0, Landroidx/collection/LongSparseArray;->keys:[J

    .line 43
    array-length v3, v2

    .line 45
    if-lt v1, v3, :cond_5

    .line 46
    iget-object v0, p0, Landroidx/collection/LongSparseArray;->values:[Ljava/lang/Object;

    .line 48
    const/4 v3, 0x0

    .line 50
    move v4, v3

    .line 51
    move v5, v4

    .line 52
    :goto_0
    if-ge v4, v1, :cond_4

    .line 53
    aget-object v6, v0, v4

    .line 55
    sget-object v7, Landroidx/collection/LongSparseArrayKt;->DELETED:Ljava/lang/Object;

    .line 57
    if-eq v6, v7, :cond_3

    .line 59
    if-eq v4, v5, :cond_2

    .line 61
    aget-wide v7, v2, v4

    .line 63
    aput-wide v7, v2, v5

    .line 65
    aput-object v6, v0, v5

    .line 67
    const/4 v6, 0x0

    .line 69
    aput-object v6, v0, v4

    .line 70
    :cond_2
    add-int/lit8 v5, v5, 0x1

    .line 72
    :cond_3
    add-int/lit8 v4, v4, 0x1

    .line 74
    goto :goto_0

    .line 76
    :cond_4
    iput-boolean v3, p0, Landroidx/collection/LongSparseArray;->garbage:Z

    .line 77
    iput v5, p0, Landroidx/collection/LongSparseArray;->size:I

    .line 79
    iget-object v0, p0, Landroidx/collection/LongSparseArray;->keys:[J

    .line 81
    invoke-static {v0, v5, p2, p3}, Landroidx/collection/internal/ContainerHelpersKt;->binarySearch([JIJ)I

    .line 83
    move-result v0

    .line 86
    not-int v0, v0

    .line 87
    :cond_5
    iget v1, p0, Landroidx/collection/LongSparseArray;->size:I

    .line 88
    iget-object v2, p0, Landroidx/collection/LongSparseArray;->keys:[J

    .line 90
    array-length v2, v2

    .line 92
    const/4 v3, 0x1

    .line 93
    if-lt v1, v2, :cond_8

    .line 94
    add-int/2addr v1, v3

    .line 96
    mul-int/lit8 v1, v1, 0x8

    .line 97
    const/4 v2, 0x4

    .line 99
    :goto_1
    const/16 v4, 0x20

    .line 100
    if-ge v2, v4, :cond_7

    .line 102
    shl-int v4, v3, v2

    .line 104
    add-int/lit8 v4, v4, -0xc

    .line 106
    if-gt v1, v4, :cond_6

    .line 108
    move v1, v4

    .line 110
    goto :goto_2

    .line 111
    :cond_6
    add-int/lit8 v2, v2, 0x1

    .line 112
    goto :goto_1

    .line 114
    :cond_7
    :goto_2
    div-int/lit8 v1, v1, 0x8

    .line 115
    iget-object v2, p0, Landroidx/collection/LongSparseArray;->keys:[J

    .line 117
    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    .line 119
    move-result-object v2

    .line 122
    iput-object v2, p0, Landroidx/collection/LongSparseArray;->keys:[J

    .line 123
    iget-object v2, p0, Landroidx/collection/LongSparseArray;->values:[Ljava/lang/Object;

    .line 125
    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 127
    move-result-object v1

    .line 130
    iput-object v1, p0, Landroidx/collection/LongSparseArray;->values:[Ljava/lang/Object;

    .line 131
    :cond_8
    iget v1, p0, Landroidx/collection/LongSparseArray;->size:I

    .line 133
    sub-int/2addr v1, v0

    .line 135
    if-eqz v1, :cond_9

    .line 136
    iget-object v2, p0, Landroidx/collection/LongSparseArray;->keys:[J

    .line 138
    add-int/lit8 v4, v0, 0x1

    .line 140
    invoke-static {v2, v0, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 142
    iget-object v1, p0, Landroidx/collection/LongSparseArray;->values:[Ljava/lang/Object;

    .line 145
    iget v2, p0, Landroidx/collection/LongSparseArray;->size:I

    .line 147
    sub-int/2addr v2, v0

    .line 149
    invoke-static {v1, v0, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 150
    :cond_9
    iget-object v1, p0, Landroidx/collection/LongSparseArray;->keys:[J

    .line 153
    aput-wide p2, v1, v0

    .line 155
    iget-object p2, p0, Landroidx/collection/LongSparseArray;->values:[Ljava/lang/Object;

    .line 157
    aput-object p1, p2, v0

    .line 159
    iget p1, p0, Landroidx/collection/LongSparseArray;->size:I

    .line 161
    add-int/2addr p1, v3

    .line 163
    iput p1, p0, Landroidx/collection/LongSparseArray;->size:I

    .line 164
    :goto_3
    return-void
    .line 166
.end method

.method public final size()I
    .locals 9

    .line 1
    iget-boolean v0, p0, Landroidx/collection/LongSparseArray;->garbage:Z

    .line 2
    if-eqz v0, :cond_3

    .line 4
    iget v0, p0, Landroidx/collection/LongSparseArray;->size:I

    .line 6
    iget-object v1, p0, Landroidx/collection/LongSparseArray;->keys:[J

    .line 8
    iget-object v2, p0, Landroidx/collection/LongSparseArray;->values:[Ljava/lang/Object;

    .line 10
    const/4 v3, 0x0

    .line 12
    move v4, v3

    .line 13
    move v5, v4

    .line 14
    :goto_0
    if-ge v4, v0, :cond_2

    .line 15
    aget-object v6, v2, v4

    .line 17
    sget-object v7, Landroidx/collection/LongSparseArrayKt;->DELETED:Ljava/lang/Object;

    .line 19
    if-eq v6, v7, :cond_1

    .line 21
    if-eq v4, v5, :cond_0

    .line 23
    aget-wide v7, v1, v4

    .line 25
    aput-wide v7, v1, v5

    .line 27
    aput-object v6, v2, v5

    .line 29
    const/4 v6, 0x0

    .line 31
    aput-object v6, v2, v4

    .line 32
    :cond_0
    add-int/lit8 v5, v5, 0x1

    .line 34
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 36
    goto :goto_0

    .line 38
    :cond_2
    iput-boolean v3, p0, Landroidx/collection/LongSparseArray;->garbage:Z

    .line 39
    iput v5, p0, Landroidx/collection/LongSparseArray;->size:I

    .line 41
    :cond_3
    iget p0, p0, Landroidx/collection/LongSparseArray;->size:I

    .line 43
    return p0
    .line 45
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroidx/collection/LongSparseArray;->size()I

    .line 2
    move-result v0

    .line 5
    if-gtz v0, :cond_0

    .line 6
    const-string/jumbo p0, "{}"

    .line 8
    goto :goto_2

    .line 11
    :cond_0
    iget v0, p0, Landroidx/collection/LongSparseArray;->size:I

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
    iget v0, p0, Landroidx/collection/LongSparseArray;->size:I

    .line 26
    const/4 v2, 0x0

    .line 28
    :goto_0
    if-ge v2, v0, :cond_3

    .line 29
    if-lez v2, :cond_1

    .line 31
    const-string v3, ", "

    .line 33
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    :cond_1
    invoke-virtual {p0, v2}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    .line 38
    move-result-wide v3

    .line 41
    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 42
    const/16 v3, 0x3d

    .line 45
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {p0, v2}, Landroidx/collection/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    .line 50
    move-result-object v3

    .line 53
    if-eq v3, v1, :cond_2

    .line 54
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 56
    goto :goto_1

    .line 59
    :cond_2
    const-string v3, "(this Map)"

    .line 60
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 65
    goto :goto_0

    .line 67
    :cond_3
    const/16 p0, 0x7d

    .line 68
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    move-result-object p0

    .line 76
    :goto_2
    return-object p0
    .line 77
.end method

.method public final valueAt(I)Ljava/lang/Object;
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    if-ltz p1, :cond_0

    .line 3
    iget v1, p0, Landroidx/collection/LongSparseArray;->size:I

    .line 5
    if-ge p1, v1, :cond_0

    .line 7
    const/4 v1, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move v1, v0

    .line 11
    :goto_0
    if-eqz v1, :cond_5

    .line 12
    iget-boolean v1, p0, Landroidx/collection/LongSparseArray;->garbage:Z

    .line 14
    if-eqz v1, :cond_4

    .line 16
    iget v1, p0, Landroidx/collection/LongSparseArray;->size:I

    .line 18
    iget-object v2, p0, Landroidx/collection/LongSparseArray;->keys:[J

    .line 20
    iget-object v3, p0, Landroidx/collection/LongSparseArray;->values:[Ljava/lang/Object;

    .line 22
    move v4, v0

    .line 24
    move v5, v4

    .line 25
    :goto_1
    if-ge v4, v1, :cond_3

    .line 26
    aget-object v6, v3, v4

    .line 28
    sget-object v7, Landroidx/collection/LongSparseArrayKt;->DELETED:Ljava/lang/Object;

    .line 30
    if-eq v6, v7, :cond_2

    .line 32
    if-eq v4, v5, :cond_1

    .line 34
    aget-wide v7, v2, v4

    .line 36
    aput-wide v7, v2, v5

    .line 38
    aput-object v6, v3, v5

    .line 40
    const/4 v6, 0x0

    .line 42
    aput-object v6, v3, v4

    .line 43
    :cond_1
    add-int/lit8 v5, v5, 0x1

    .line 45
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 47
    goto :goto_1

    .line 49
    :cond_3
    iput-boolean v0, p0, Landroidx/collection/LongSparseArray;->garbage:Z

    .line 50
    iput v5, p0, Landroidx/collection/LongSparseArray;->size:I

    .line 52
    :cond_4
    iget-object p0, p0, Landroidx/collection/LongSparseArray;->values:[Ljava/lang/Object;

    .line 54
    aget-object p0, p0, p1

    .line 56
    return-object p0

    .line 58
    :cond_5
    const-string p0, "Expected index to be within 0..size()-1, but was "

    .line 59
    invoke-static {p0, p1}, Landroidx/appcompat/view/menu/SubMenuBuilder$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 61
    move-result-object p0

    .line 64
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 65
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 67
    move-result-object p0

    .line 70
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 71
    throw p1
    .line 74
.end method
