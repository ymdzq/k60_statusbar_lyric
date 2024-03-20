.class public final Landroidx/compose/runtime/collection/IdentityArrayIntMap;
.super Ljava/lang/Object;
.source "IdentityArrayIntMap.kt"


# instance fields
.field private keys:[Ljava/lang/Object;

.field private size:I

.field private values:[I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v1, v0, [Ljava/lang/Object;

    .line 28
    iput-object v1, p0, Landroidx/compose/runtime/collection/IdentityArrayIntMap;->keys:[Ljava/lang/Object;

    new-array v0, v0, [I

    .line 31
    iput-object v0, p0, Landroidx/compose/runtime/collection/IdentityArrayIntMap;->values:[I

    return-void
.end method

.method private final find(Ljava/lang/Object;)I
    .locals 6

    .line 170
    iget v0, p0, Landroidx/compose/runtime/collection/IdentityArrayIntMap;->size:I

    add-int/lit8 v0, v0, -0x1

    .line 171
    invoke-static {p1}, Landroidx/compose/runtime/ActualJvm_jvmKt;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-gt v2, v0, :cond_3

    add-int v3, v2, v0

    ushr-int/lit8 v3, v3, 0x1

    .line 175
    iget-object v4, p0, Landroidx/compose/runtime/collection/IdentityArrayIntMap;->keys:[Ljava/lang/Object;

    aget-object v4, v4, v3

    .line 176
    invoke-static {v4}, Landroidx/compose/runtime/ActualJvm_jvmKt;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    if-ge v5, v1, :cond_0

    add-int/lit8 v2, v3, 0x1

    goto :goto_0

    :cond_0
    if-le v5, v1, :cond_1

    add-int/lit8 v0, v3, -0x1

    goto :goto_0

    :cond_1
    if-ne v4, p1, :cond_2

    return v3

    .line 181
    :cond_2
    invoke-direct {p0, v3, p1, v1}, Landroidx/compose/runtime/collection/IdentityArrayIntMap;->findExactIndex(ILjava/lang/Object;I)I

    move-result p0

    return p0

    :cond_3
    add-int/lit8 v2, v2, 0x1

    neg-int p0, v2

    return p0
.end method

.method private final findExactIndex(ILjava/lang/Object;I)I
    .locals 2

    add-int/lit8 v0, p1, -0x1

    :goto_0
    const/4 v1, -0x1

    if-ge v1, v0, :cond_2

    .line 197
    iget-object v1, p0, Landroidx/compose/runtime/collection/IdentityArrayIntMap;->keys:[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-ne v1, p2, :cond_0

    return v0

    .line 201
    :cond_0
    invoke-static {v1}, Landroidx/compose/runtime/ActualJvm_jvmKt;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    if-eq v1, p3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    add-int/lit8 p1, p1, 0x1

    .line 206
    iget v0, p0, Landroidx/compose/runtime/collection/IdentityArrayIntMap;->size:I

    :goto_2
    if-ge p1, v0, :cond_5

    .line 207
    iget-object v1, p0, Landroidx/compose/runtime/collection/IdentityArrayIntMap;->keys:[Ljava/lang/Object;

    aget-object v1, v1, p1

    if-ne v1, p2, :cond_3

    return p1

    .line 211
    :cond_3
    invoke-static {v1}, Landroidx/compose/runtime/ActualJvm_jvmKt;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    if-eq v1, p3, :cond_4

    add-int/lit8 p1, p1, 0x1

    neg-int p0, p1

    return p0

    :cond_4
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    .line 218
    :cond_5
    iget p0, p0, Landroidx/compose/runtime/collection/IdentityArrayIntMap;->size:I

    add-int/lit8 p0, p0, 0x1

    neg-int p0, p0

    return p0
.end method


# virtual methods
.method public final add(Ljava/lang/Object;I)I
    .locals 11

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    iget v0, p0, Landroidx/compose/runtime/collection/IdentityArrayIntMap;->size:I

    const/4 v1, -0x1

    if-lez v0, :cond_0

    .line 43
    invoke-direct {p0, p1}, Landroidx/compose/runtime/collection/IdentityArrayIntMap;->find(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_1

    .line 45
    iget-object p0, p0, Landroidx/compose/runtime/collection/IdentityArrayIntMap;->values:[I

    aget p1, p0, v0

    .line 46
    aput p2, p0, v0

    return p1

    :cond_0
    move v0, v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    neg-int v0, v0

    .line 55
    iget v2, p0, Landroidx/compose/runtime/collection/IdentityArrayIntMap;->size:I

    iget-object v3, p0, Landroidx/compose/runtime/collection/IdentityArrayIntMap;->keys:[Ljava/lang/Object;

    array-length v4, v3

    if-ne v2, v4, :cond_2

    .line 56
    array-length v4, v3

    mul-int/lit8 v4, v4, 0x2

    new-array v9, v4, [Ljava/lang/Object;

    .line 57
    array-length v4, v3

    mul-int/lit8 v4, v4, 0x2

    new-array v10, v4, [I

    add-int/lit8 v4, v0, 0x1

    .line 58
    invoke-static {v3, v9, v4, v0, v2}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    .line 64
    iget-object v2, p0, Landroidx/compose/runtime/collection/IdentityArrayIntMap;->values:[I

    .line 68
    iget v3, p0, Landroidx/compose/runtime/collection/IdentityArrayIntMap;->size:I

    .line 64
    invoke-static {v2, v10, v4, v0, v3}, Lkotlin/collections/ArraysKt;->copyInto([I[IIII)[I

    .line 70
    iget-object v2, p0, Landroidx/compose/runtime/collection/IdentityArrayIntMap;->keys:[Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x6

    const/4 v8, 0x0

    move-object v3, v9

    move v6, v0

    invoke-static/range {v2 .. v8}, Lkotlin/collections/ArraysKt;->copyInto$default([Ljava/lang/Object;[Ljava/lang/Object;IIIILjava/lang/Object;)[Ljava/lang/Object;

    .line 74
    iget-object v2, p0, Landroidx/compose/runtime/collection/IdentityArrayIntMap;->values:[I

    move-object v3, v10

    invoke-static/range {v2 .. v8}, Lkotlin/collections/ArraysKt;->copyInto$default([I[IIIIILjava/lang/Object;)[I

    .line 78
    iput-object v9, p0, Landroidx/compose/runtime/collection/IdentityArrayIntMap;->keys:[Ljava/lang/Object;

    .line 79
    iput-object v10, p0, Landroidx/compose/runtime/collection/IdentityArrayIntMap;->values:[I

    goto :goto_0

    :cond_2
    add-int/lit8 v4, v0, 0x1

    .line 81
    invoke-static {v3, v3, v4, v0, v2}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    .line 87
    iget-object v2, p0, Landroidx/compose/runtime/collection/IdentityArrayIntMap;->values:[I

    .line 91
    iget v3, p0, Landroidx/compose/runtime/collection/IdentityArrayIntMap;->size:I

    .line 87
    invoke-static {v2, v2, v4, v0, v3}, Lkotlin/collections/ArraysKt;->copyInto([I[IIII)[I

    .line 94
    :goto_0
    iget-object v2, p0, Landroidx/compose/runtime/collection/IdentityArrayIntMap;->keys:[Ljava/lang/Object;

    aput-object p1, v2, v0

    .line 95
    iget-object p1, p0, Landroidx/compose/runtime/collection/IdentityArrayIntMap;->values:[I

    aput p2, p1, v0

    .line 96
    iget p1, p0, Landroidx/compose/runtime/collection/IdentityArrayIntMap;->size:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroidx/compose/runtime/collection/IdentityArrayIntMap;->size:I

    return v1
.end method

.method public final getKeys()[Ljava/lang/Object;
    .locals 0

    .line 28
    iget-object p0, p0, Landroidx/compose/runtime/collection/IdentityArrayIntMap;->keys:[Ljava/lang/Object;

    return-object p0
.end method

.method public final getSize()I
    .locals 0

    .line 25
    iget p0, p0, Landroidx/compose/runtime/collection/IdentityArrayIntMap;->size:I

    return p0
.end method

.method public final getValues()[I
    .locals 0

    .line 31
    iget-object p0, p0, Landroidx/compose/runtime/collection/IdentityArrayIntMap;->values:[I

    return-object p0
.end method

.method public final setSize(I)V
    .locals 0

    .line 25
    iput p1, p0, Landroidx/compose/runtime/collection/IdentityArrayIntMap;->size:I

    return-void
.end method
