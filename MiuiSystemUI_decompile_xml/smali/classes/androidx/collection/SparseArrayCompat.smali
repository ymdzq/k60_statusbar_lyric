.class public final Landroidx/collection/SparseArrayCompat;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public synthetic keys:[I

.field public synthetic size:I

.field public synthetic values:[Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x4

    .line 5
    move v1, v0

    .line 6
    :goto_0
    const/16 v2, 0x20

    .line 7
    const/16 v3, 0x28

    .line 9
    if-ge v1, v2, :cond_1

    .line 11
    const/4 v2, 0x1

    .line 13
    shl-int/2addr v2, v1

    .line 14
    add-int/lit8 v2, v2, -0xc

    .line 15
    if-gt v3, v2, :cond_0

    .line 17
    move v3, v2

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 21
    goto :goto_0

    .line 23
    :cond_1
    :goto_1
    div-int/2addr v3, v0

    .line 24
    new-array v0, v3, [I

    .line 25
    iput-object v0, p0, Landroidx/collection/SparseArrayCompat;->keys:[I

    .line 27
    new-array v0, v3, [Ljava/lang/Object;

    .line 29
    iput-object v0, p0, Landroidx/collection/SparseArrayCompat;->values:[Ljava/lang/Object;

    .line 31
    return-void
    .line 33
.end method


# virtual methods
.method public final append(ILjava/lang/Object;)V
    .locals 6

    .line 1
    iget v0, p0, Landroidx/collection/SparseArrayCompat;->size:I

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget-object v1, p0, Landroidx/collection/SparseArrayCompat;->keys:[I

    .line 6
    add-int/lit8 v2, v0, -0x1

    .line 8
    aget v1, v1, v2

    .line 10
    if-gt p1, v1, :cond_0

    .line 12
    invoke-virtual {p0, p1, p2}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 14
    goto :goto_2

    .line 17
    :cond_0
    iget-object v1, p0, Landroidx/collection/SparseArrayCompat;->keys:[I

    .line 18
    array-length v1, v1

    .line 20
    const/4 v2, 0x1

    .line 21
    if-lt v0, v1, :cond_3

    .line 22
    add-int/lit8 v1, v0, 0x1

    .line 24
    const/4 v3, 0x4

    .line 26
    mul-int/2addr v1, v3

    .line 27
    move v4, v3

    .line 28
    :goto_0
    const/16 v5, 0x20

    .line 29
    if-ge v4, v5, :cond_2

    .line 31
    shl-int v5, v2, v4

    .line 33
    add-int/lit8 v5, v5, -0xc

    .line 35
    if-gt v1, v5, :cond_1

    .line 37
    move v1, v5

    .line 39
    goto :goto_1

    .line 40
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 41
    goto :goto_0

    .line 43
    :cond_2
    :goto_1
    div-int/2addr v1, v3

    .line 44
    iget-object v3, p0, Landroidx/collection/SparseArrayCompat;->keys:[I

    .line 45
    invoke-static {v3, v1}, Ljava/util/Arrays;->copyOf([II)[I

    .line 47
    move-result-object v3

    .line 50
    iput-object v3, p0, Landroidx/collection/SparseArrayCompat;->keys:[I

    .line 51
    iget-object v3, p0, Landroidx/collection/SparseArrayCompat;->values:[Ljava/lang/Object;

    .line 53
    invoke-static {v3, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 55
    move-result-object v1

    .line 58
    iput-object v1, p0, Landroidx/collection/SparseArrayCompat;->values:[Ljava/lang/Object;

    .line 59
    :cond_3
    iget-object v1, p0, Landroidx/collection/SparseArrayCompat;->keys:[I

    .line 61
    aput p1, v1, v0

    .line 63
    iget-object p1, p0, Landroidx/collection/SparseArrayCompat;->values:[Ljava/lang/Object;

    .line 65
    aput-object p2, p1, v0

    .line 67
    add-int/2addr v0, v2

    .line 69
    iput v0, p0, Landroidx/collection/SparseArrayCompat;->size:I

    .line 70
    :goto_2
    return-void
    .line 72
.end method

.method public final clone()Landroidx/collection/SparseArrayCompat;
    .locals 2

    .line 2
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/collection/SparseArrayCompat;

    .line 3
    iget-object v1, p0, Landroidx/collection/SparseArrayCompat;->keys:[I

    invoke-virtual {v1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iput-object v1, v0, Landroidx/collection/SparseArrayCompat;->keys:[I

    .line 4
    iget-object p0, p0, Landroidx/collection/SparseArrayCompat;->values:[Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    iput-object p0, v0, Landroidx/collection/SparseArrayCompat;->values:[Ljava/lang/Object;

    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/collection/SparseArrayCompat;->clone()Landroidx/collection/SparseArrayCompat;

    move-result-object p0

    return-object p0
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 2

    .line 1
    sget-object v0, Landroidx/collection/SparseArrayCompatKt;->DELETED:Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Landroidx/collection/SparseArrayCompat;->keys:[I

    .line 4
    iget v1, p0, Landroidx/collection/SparseArrayCompat;->size:I

    .line 6
    invoke-static {v1, p1, v0}, Landroidx/collection/internal/ContainerHelpersKt;->binarySearch(II[I)I

    .line 8
    move-result p1

    .line 11
    if-ltz p1, :cond_0

    .line 12
    iget-object p0, p0, Landroidx/collection/SparseArrayCompat;->values:[Ljava/lang/Object;

    .line 14
    aget-object p0, p0, p1

    .line 16
    sget-object p1, Landroidx/collection/SparseArrayCompatKt;->DELETED:Ljava/lang/Object;

    .line 18
    if-ne p0, p1, :cond_1

    .line 20
    :cond_0
    const/4 p0, 0x0

    .line 22
    :cond_1
    return-object p0
    .line 23
.end method

.method public final put(ILjava/lang/Object;)V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/collection/SparseArrayCompat;->keys:[I

    .line 2
    iget v1, p0, Landroidx/collection/SparseArrayCompat;->size:I

    .line 4
    invoke-static {v1, p1, v0}, Landroidx/collection/internal/ContainerHelpersKt;->binarySearch(II[I)I

    .line 6
    move-result v0

    .line 9
    if-ltz v0, :cond_0

    .line 10
    iget-object p0, p0, Landroidx/collection/SparseArrayCompat;->values:[Ljava/lang/Object;

    .line 12
    aput-object p2, p0, v0

    .line 14
    goto :goto_2

    .line 16
    :cond_0
    not-int v0, v0

    .line 17
    iget v1, p0, Landroidx/collection/SparseArrayCompat;->size:I

    .line 18
    if-ge v0, v1, :cond_1

    .line 20
    iget-object v2, p0, Landroidx/collection/SparseArrayCompat;->values:[Ljava/lang/Object;

    .line 22
    aget-object v3, v2, v0

    .line 24
    sget-object v4, Landroidx/collection/SparseArrayCompatKt;->DELETED:Ljava/lang/Object;

    .line 26
    if-ne v3, v4, :cond_1

    .line 28
    iget-object p0, p0, Landroidx/collection/SparseArrayCompat;->keys:[I

    .line 30
    aput p1, p0, v0

    .line 32
    aput-object p2, v2, v0

    .line 34
    goto :goto_2

    .line 36
    :cond_1
    iget-object v2, p0, Landroidx/collection/SparseArrayCompat;->keys:[I

    .line 37
    array-length v2, v2

    .line 39
    const/4 v3, 0x1

    .line 40
    if-lt v1, v2, :cond_4

    .line 41
    add-int/2addr v1, v3

    .line 43
    const/4 v2, 0x4

    .line 44
    mul-int/2addr v1, v2

    .line 45
    move v4, v2

    .line 46
    :goto_0
    const/16 v5, 0x20

    .line 47
    if-ge v4, v5, :cond_3

    .line 49
    shl-int v5, v3, v4

    .line 51
    add-int/lit8 v5, v5, -0xc

    .line 53
    if-gt v1, v5, :cond_2

    .line 55
    move v1, v5

    .line 57
    goto :goto_1

    .line 58
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 59
    goto :goto_0

    .line 61
    :cond_3
    :goto_1
    div-int/2addr v1, v2

    .line 62
    iget-object v2, p0, Landroidx/collection/SparseArrayCompat;->keys:[I

    .line 63
    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([II)[I

    .line 65
    move-result-object v2

    .line 68
    iput-object v2, p0, Landroidx/collection/SparseArrayCompat;->keys:[I

    .line 69
    iget-object v2, p0, Landroidx/collection/SparseArrayCompat;->values:[Ljava/lang/Object;

    .line 71
    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 73
    move-result-object v1

    .line 76
    iput-object v1, p0, Landroidx/collection/SparseArrayCompat;->values:[Ljava/lang/Object;

    .line 77
    :cond_4
    iget v1, p0, Landroidx/collection/SparseArrayCompat;->size:I

    .line 79
    sub-int/2addr v1, v0

    .line 81
    if-eqz v1, :cond_5

    .line 82
    iget-object v2, p0, Landroidx/collection/SparseArrayCompat;->keys:[I

    .line 84
    add-int/lit8 v4, v0, 0x1

    .line 86
    invoke-static {v2, v0, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 88
    iget-object v1, p0, Landroidx/collection/SparseArrayCompat;->values:[Ljava/lang/Object;

    .line 91
    iget v2, p0, Landroidx/collection/SparseArrayCompat;->size:I

    .line 93
    sub-int/2addr v2, v0

    .line 95
    invoke-static {v1, v0, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 96
    :cond_5
    iget-object v1, p0, Landroidx/collection/SparseArrayCompat;->keys:[I

    .line 99
    aput p1, v1, v0

    .line 101
    iget-object p1, p0, Landroidx/collection/SparseArrayCompat;->values:[Ljava/lang/Object;

    .line 103
    aput-object p2, p1, v0

    .line 105
    iget p1, p0, Landroidx/collection/SparseArrayCompat;->size:I

    .line 107
    add-int/2addr p1, v3

    .line 109
    iput p1, p0, Landroidx/collection/SparseArrayCompat;->size:I

    .line 110
    :goto_2
    return-void
    .line 112
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget v0, p0, Landroidx/collection/SparseArrayCompat;->size:I

    .line 2
    if-gtz v0, :cond_0

    .line 4
    const-string/jumbo p0, "{}"

    .line 6
    goto :goto_2

    .line 9
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    mul-int/lit8 v0, v0, 0x1c

    .line 12
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 14
    const/16 v0, 0x7b

    .line 17
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 19
    iget v0, p0, Landroidx/collection/SparseArrayCompat;->size:I

    .line 22
    const/4 v2, 0x0

    .line 24
    :goto_0
    if-ge v2, v0, :cond_3

    .line 25
    if-lez v2, :cond_1

    .line 27
    const-string v3, ", "

    .line 29
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    :cond_1
    iget-object v3, p0, Landroidx/collection/SparseArrayCompat;->keys:[I

    .line 34
    aget v3, v3, v2

    .line 36
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    const/16 v3, 0x3d

    .line 41
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 43
    iget-object v3, p0, Landroidx/collection/SparseArrayCompat;->values:[Ljava/lang/Object;

    .line 46
    aget-object v3, v3, v2

    .line 48
    if-eq v3, p0, :cond_2

    .line 50
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 52
    goto :goto_1

    .line 55
    :cond_2
    const-string v3, "(this Map)"

    .line 56
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 61
    goto :goto_0

    .line 63
    :cond_3
    const/16 p0, 0x7d

    .line 64
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    move-result-object p0

    .line 72
    :goto_2
    return-object p0
    .line 73
.end method
