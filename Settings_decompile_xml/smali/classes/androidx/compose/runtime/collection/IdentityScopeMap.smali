.class public final Landroidx/compose/runtime/collection/IdentityScopeMap;
.super Ljava/lang/Object;
.source "IdentityScopeMap.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nIdentityScopeMap.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IdentityScopeMap.kt\nandroidx/compose/runtime/collection/IdentityScopeMap\n+ 2 IdentityArraySet.kt\nandroidx/compose/runtime/collection/IdentityArraySet\n*L\n1#1,315:1\n236#1,5:321\n241#1,17:342\n236#1,22:359\n61#1:381\n61#1:382\n61#1:383\n105#2,5:316\n146#2,16:326\n*S KotlinDebug\n*F\n+ 1 IdentityScopeMap.kt\nandroidx/compose/runtime/collection/IdentityScopeMap\n*L\n220#1:321,5\n220#1:342,17\n230#1:359,22\n270#1:381\n292#1:382\n302#1:383\n91#1:316,5\n221#1:326,16\n*E\n"
.end annotation


# instance fields
.field private scopeSets:[Landroidx/compose/runtime/collection/IdentityArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Landroidx/compose/runtime/collection/IdentityArraySet<",
            "TT;>;"
        }
    .end annotation
.end field

.field private size:I

.field private valueOrder:[I

.field private values:[Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x32

    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 34
    aput v2, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iput-object v1, p0, Landroidx/compose/runtime/collection/IdentityScopeMap;->valueOrder:[I

    new-array v1, v0, [Ljava/lang/Object;

    .line 41
    iput-object v1, p0, Landroidx/compose/runtime/collection/IdentityScopeMap;->values:[Ljava/lang/Object;

    new-array v0, v0, [Landroidx/compose/runtime/collection/IdentityArraySet;

    .line 48
    iput-object v0, p0, Landroidx/compose/runtime/collection/IdentityScopeMap;->scopeSets:[Landroidx/compose/runtime/collection/IdentityArraySet;

    return-void
.end method

.method public static final synthetic access$find(Landroidx/compose/runtime/collection/IdentityScopeMap;Ljava/lang/Object;)I
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Landroidx/compose/runtime/collection/IdentityScopeMap;->find(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$scopeSetAt(Landroidx/compose/runtime/collection/IdentityScopeMap;I)Landroidx/compose/runtime/collection/IdentityArraySet;
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Landroidx/compose/runtime/collection/IdentityScopeMap;->scopeSetAt(I)Landroidx/compose/runtime/collection/IdentityArraySet;

    move-result-object p0

    return-object p0
.end method

.method private final find(Ljava/lang/Object;)I
    .locals 6

    .line 264
    invoke-static {p1}, Landroidx/compose/runtime/ActualJvm_jvmKt;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    .line 266
    iget v1, p0, Landroidx/compose/runtime/collection/IdentityScopeMap;->size:I

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    :goto_0
    if-gt v2, v1, :cond_3

    add-int v3, v2, v1

    ushr-int/lit8 v3, v3, 0x1

    .line 61
    iget-object v4, p0, Landroidx/compose/runtime/collection/IdentityScopeMap;->values:[Ljava/lang/Object;

    iget-object v5, p0, Landroidx/compose/runtime/collection/IdentityScopeMap;->valueOrder:[I

    aget v5, v5, v3

    aget-object v4, v4, v5

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 271
    invoke-static {v4}, Landroidx/compose/runtime/ActualJvm_jvmKt;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    if-ge v5, v0, :cond_0

    add-int/lit8 v2, v3, 0x1

    goto :goto_0

    :cond_0
    if-le v5, v0, :cond_1

    add-int/lit8 v1, v3, -0x1

    goto :goto_0

    :cond_1
    if-ne p1, v4, :cond_2

    return v3

    .line 276
    :cond_2
    invoke-direct {p0, v3, p1, v0}, Landroidx/compose/runtime/collection/IdentityScopeMap;->findExactIndex(ILjava/lang/Object;I)I

    move-result p0

    return p0

    :cond_3
    add-int/lit8 v2, v2, 0x1

    neg-int p0, v2

    return p0
.end method

.method private final findExactIndex(ILjava/lang/Object;I)I
    .locals 3

    add-int/lit8 v0, p1, -0x1

    :goto_0
    const/4 v1, -0x1

    if-ge v1, v0, :cond_2

    .line 61
    iget-object v1, p0, Landroidx/compose/runtime/collection/IdentityScopeMap;->values:[Ljava/lang/Object;

    iget-object v2, p0, Landroidx/compose/runtime/collection/IdentityScopeMap;->valueOrder:[I

    aget v2, v2, v0

    aget-object v1, v1, v2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    if-ne v1, p2, :cond_0

    return v0

    .line 296
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

    .line 301
    iget v0, p0, Landroidx/compose/runtime/collection/IdentityScopeMap;->size:I

    :goto_2
    if-ge p1, v0, :cond_5

    .line 61
    iget-object v1, p0, Landroidx/compose/runtime/collection/IdentityScopeMap;->values:[Ljava/lang/Object;

    iget-object v2, p0, Landroidx/compose/runtime/collection/IdentityScopeMap;->valueOrder:[I

    aget v2, v2, p1

    aget-object v1, v1, v2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    if-ne v1, p2, :cond_3

    return p1

    .line 306
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

    .line 313
    :cond_5
    iget p0, p0, Landroidx/compose/runtime/collection/IdentityScopeMap;->size:I

    add-int/lit8 p0, p0, 0x1

    neg-int p0, p0

    return p0
.end method

.method private final getOrCreateIdentitySet(Ljava/lang/Object;)Landroidx/compose/runtime/collection/IdentityArraySet;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Landroidx/compose/runtime/collection/IdentityArraySet<",
            "TT;>;"
        }
    .end annotation

    .line 101
    iget v0, p0, Landroidx/compose/runtime/collection/IdentityScopeMap;->size:I

    if-lez v0, :cond_0

    .line 102
    invoke-direct {p0, p1}, Landroidx/compose/runtime/collection/IdentityScopeMap;->find(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_1

    .line 105
    invoke-direct {p0, v0}, Landroidx/compose/runtime/collection/IdentityScopeMap;->scopeSetAt(I)Landroidx/compose/runtime/collection/IdentityArraySet;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, -0x1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    neg-int v5, v0

    .line 113
    iget v0, p0, Landroidx/compose/runtime/collection/IdentityScopeMap;->size:I

    iget-object v1, p0, Landroidx/compose/runtime/collection/IdentityScopeMap;->valueOrder:[I

    array-length v2, v1

    if-ge v0, v2, :cond_4

    .line 114
    aget v0, v1, v0

    .line 115
    iget-object v1, p0, Landroidx/compose/runtime/collection/IdentityScopeMap;->values:[Ljava/lang/Object;

    aput-object p1, v1, v0

    .line 116
    iget-object p1, p0, Landroidx/compose/runtime/collection/IdentityScopeMap;->scopeSets:[Landroidx/compose/runtime/collection/IdentityArraySet;

    aget-object p1, p1, v0

    if-nez p1, :cond_2

    new-instance p1, Landroidx/compose/runtime/collection/IdentityArraySet;

    invoke-direct {p1}, Landroidx/compose/runtime/collection/IdentityArraySet;-><init>()V

    .line 117
    iget-object v1, p0, Landroidx/compose/runtime/collection/IdentityScopeMap;->scopeSets:[Landroidx/compose/runtime/collection/IdentityArraySet;

    aput-object p1, v1, v0

    .line 121
    :cond_2
    iget v1, p0, Landroidx/compose/runtime/collection/IdentityScopeMap;->size:I

    if-ge v5, v1, :cond_3

    .line 122
    iget-object v2, p0, Landroidx/compose/runtime/collection/IdentityScopeMap;->valueOrder:[I

    add-int/lit8 v3, v5, 0x1

    invoke-static {v2, v2, v3, v5, v1}, Lkotlin/collections/ArraysKt;->copyInto([I[IIII)[I

    .line 129
    :cond_3
    iget-object v1, p0, Landroidx/compose/runtime/collection/IdentityScopeMap;->valueOrder:[I

    aput v0, v1, v5

    .line 130
    iget v0, p0, Landroidx/compose/runtime/collection/IdentityScopeMap;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/compose/runtime/collection/IdentityScopeMap;->size:I

    return-object p1

    .line 135
    :cond_4
    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    .line 137
    iget-object v2, p0, Landroidx/compose/runtime/collection/IdentityScopeMap;->scopeSets:[Landroidx/compose/runtime/collection/IdentityArraySet;

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    const-string v3, "copyOf(this, newSize)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, [Landroidx/compose/runtime/collection/IdentityArraySet;

    iput-object v2, p0, Landroidx/compose/runtime/collection/IdentityScopeMap;->scopeSets:[Landroidx/compose/runtime/collection/IdentityArraySet;

    .line 138
    new-instance v8, Landroidx/compose/runtime/collection/IdentityArraySet;

    invoke-direct {v8}, Landroidx/compose/runtime/collection/IdentityArraySet;-><init>()V

    .line 139
    iget-object v2, p0, Landroidx/compose/runtime/collection/IdentityScopeMap;->scopeSets:[Landroidx/compose/runtime/collection/IdentityArraySet;

    aput-object v8, v2, v0

    .line 140
    iget-object v2, p0, Landroidx/compose/runtime/collection/IdentityScopeMap;->values:[Ljava/lang/Object;

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, p0, Landroidx/compose/runtime/collection/IdentityScopeMap;->values:[Ljava/lang/Object;

    .line 141
    aput-object p1, v2, v0

    .line 143
    new-array p1, v1, [I

    .line 144
    iget v2, p0, Landroidx/compose/runtime/collection/IdentityScopeMap;->size:I

    :goto_0
    add-int/lit8 v2, v2, 0x1

    if-ge v2, v1, :cond_5

    .line 145
    aput v2, p1, v2

    goto :goto_0

    .line 148
    :cond_5
    iget v1, p0, Landroidx/compose/runtime/collection/IdentityScopeMap;->size:I

    if-ge v5, v1, :cond_6

    .line 149
    iget-object v2, p0, Landroidx/compose/runtime/collection/IdentityScopeMap;->valueOrder:[I

    add-int/lit8 v3, v5, 0x1

    invoke-static {v2, p1, v3, v5, v1}, Lkotlin/collections/ArraysKt;->copyInto([I[IIII)[I

    .line 156
    :cond_6
    aput v0, p1, v5

    if-lez v5, :cond_7

    .line 158
    iget-object v1, p0, Landroidx/compose/runtime/collection/IdentityScopeMap;->valueOrder:[I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    move-object v2, p1

    invoke-static/range {v1 .. v7}, Lkotlin/collections/ArraysKt;->copyInto$default([I[IIIIILjava/lang/Object;)[I

    .line 163
    :cond_7
    iput-object p1, p0, Landroidx/compose/runtime/collection/IdentityScopeMap;->valueOrder:[I

    .line 164
    iget p1, p0, Landroidx/compose/runtime/collection/IdentityScopeMap;->size:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroidx/compose/runtime/collection/IdentityScopeMap;->size:I

    return-object v8
.end method

.method private final scopeSetAt(I)Landroidx/compose/runtime/collection/IdentityArraySet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroidx/compose/runtime/collection/IdentityArraySet<",
            "TT;>;"
        }
    .end annotation

    .line 68
    iget-object v0, p0, Landroidx/compose/runtime/collection/IdentityScopeMap;->scopeSets:[Landroidx/compose/runtime/collection/IdentityArraySet;

    iget-object p0, p0, Landroidx/compose/runtime/collection/IdentityScopeMap;->valueOrder:[I

    aget p0, p0, p1

    aget-object p0, v0, p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0
.end method


# virtual methods
.method public final add(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TT;)Z"
        }
    .end annotation

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "scope"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    invoke-direct {p0, p1}, Landroidx/compose/runtime/collection/IdentityScopeMap;->getOrCreateIdentitySet(Ljava/lang/Object;)Landroidx/compose/runtime/collection/IdentityArraySet;

    move-result-object p0

    .line 77
    invoke-virtual {p0, p2}, Landroidx/compose/runtime/collection/IdentityArraySet;->add(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final clear()V
    .locals 5

    .line 172
    iget-object v0, p0, Landroidx/compose/runtime/collection/IdentityScopeMap;->scopeSets:[Landroidx/compose/runtime/collection/IdentityArraySet;

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 173
    iget-object v3, p0, Landroidx/compose/runtime/collection/IdentityScopeMap;->scopeSets:[Landroidx/compose/runtime/collection/IdentityArraySet;

    aget-object v3, v3, v2

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroidx/compose/runtime/collection/IdentityArraySet;->clear()V

    .line 174
    :cond_0
    iget-object v3, p0, Landroidx/compose/runtime/collection/IdentityScopeMap;->valueOrder:[I

    aput v2, v3, v2

    .line 175
    iget-object v3, p0, Landroidx/compose/runtime/collection/IdentityScopeMap;->values:[Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 178
    :cond_1
    iput v1, p0, Landroidx/compose/runtime/collection/IdentityScopeMap;->size:I

    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    const-string v0, "element"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    invoke-direct {p0, p1}, Landroidx/compose/runtime/collection/IdentityScopeMap;->find(Ljava/lang/Object;)I

    move-result p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final getScopeSets()[Landroidx/compose/runtime/collection/IdentityArraySet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Landroidx/compose/runtime/collection/IdentityArraySet<",
            "TT;>;"
        }
    .end annotation

    .line 48
    iget-object p0, p0, Landroidx/compose/runtime/collection/IdentityScopeMap;->scopeSets:[Landroidx/compose/runtime/collection/IdentityArraySet;

    return-object p0
.end method

.method public final getSize()I
    .locals 0

    .line 54
    iget p0, p0, Landroidx/compose/runtime/collection/IdentityScopeMap;->size:I

    return p0
.end method

.method public final getValueOrder()[I
    .locals 0

    .line 34
    iget-object p0, p0, Landroidx/compose/runtime/collection/IdentityScopeMap;->valueOrder:[I

    return-object p0
.end method

.method public final getValues()[Ljava/lang/Object;
    .locals 0

    .line 41
    iget-object p0, p0, Landroidx/compose/runtime/collection/IdentityScopeMap;->values:[Ljava/lang/Object;

    return-object p0
.end method

.method public final remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TT;)Z"
        }
    .end annotation

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "scope"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 190
    invoke-direct {p0, p1}, Landroidx/compose/runtime/collection/IdentityScopeMap;->find(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, 0x0

    if-ltz p1, :cond_3

    .line 192
    iget-object v1, p0, Landroidx/compose/runtime/collection/IdentityScopeMap;->valueOrder:[I

    aget v1, v1, p1

    .line 193
    iget-object v2, p0, Landroidx/compose/runtime/collection/IdentityScopeMap;->scopeSets:[Landroidx/compose/runtime/collection/IdentityArraySet;

    aget-object v2, v2, v1

    if-nez v2, :cond_0

    return v0

    .line 194
    :cond_0
    invoke-virtual {v2, p2}, Landroidx/compose/runtime/collection/IdentityArraySet;->remove(Ljava/lang/Object;)Z

    move-result p2

    .line 195
    invoke-virtual {v2}, Landroidx/compose/runtime/collection/IdentityArraySet;->size()I

    move-result v0

    if-nez v0, :cond_2

    add-int/lit8 v0, p1, 0x1

    .line 197
    iget v2, p0, Landroidx/compose/runtime/collection/IdentityScopeMap;->size:I

    if-ge v0, v2, :cond_1

    .line 199
    iget-object v3, p0, Landroidx/compose/runtime/collection/IdentityScopeMap;->valueOrder:[I

    invoke-static {v3, v3, p1, v0, v2}, Lkotlin/collections/ArraysKt;->copyInto([I[IIII)[I

    .line 206
    :cond_1
    iget-object p1, p0, Landroidx/compose/runtime/collection/IdentityScopeMap;->valueOrder:[I

    iget v0, p0, Landroidx/compose/runtime/collection/IdentityScopeMap;->size:I

    add-int/lit8 v2, v0, -0x1

    aput v1, p1, v2

    .line 207
    iget-object p1, p0, Landroidx/compose/runtime/collection/IdentityScopeMap;->values:[Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v2, p1, v1

    add-int/lit8 v0, v0, -0x1

    .line 208
    iput v0, p0, Landroidx/compose/runtime/collection/IdentityScopeMap;->size:I

    :cond_2
    return p2

    :cond_3
    return v0
.end method

.method public final removeScope(Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const-string/jumbo v0, "scope"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 237
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/IdentityScopeMap;->getSize()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_2

    .line 238
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/IdentityScopeMap;->getValueOrder()[I

    move-result-object v3

    aget v3, v3, v1

    .line 239
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/IdentityScopeMap;->getScopeSets()[Landroidx/compose/runtime/collection/IdentityArraySet;

    move-result-object v4

    aget-object v4, v4, v3

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 231
    invoke-virtual {v4, p1}, Landroidx/compose/runtime/collection/IdentityArraySet;->remove(Ljava/lang/Object;)Z

    .line 241
    invoke-virtual {v4}, Landroidx/compose/runtime/collection/IdentityArraySet;->size()I

    move-result v4

    if-lez v4, :cond_1

    if-eq v2, v1, :cond_0

    .line 245
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/IdentityScopeMap;->getValueOrder()[I

    move-result-object v4

    aget v4, v4, v2

    .line 246
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/IdentityScopeMap;->getValueOrder()[I

    move-result-object v5

    aput v3, v5, v2

    .line 247
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/IdentityScopeMap;->getValueOrder()[I

    move-result-object v3

    aput v4, v3, v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 253
    :cond_2
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/IdentityScopeMap;->getSize()I

    move-result p1

    move v0, v2

    :goto_1
    if-ge v0, p1, :cond_3

    .line 254
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/IdentityScopeMap;->getValues()[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/compose/runtime/collection/IdentityScopeMap;->getValueOrder()[I

    move-result-object v3

    aget v3, v3, v0

    const/4 v4, 0x0

    aput-object v4, v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 256
    :cond_3
    invoke-virtual {p0, v2}, Landroidx/compose/runtime/collection/IdentityScopeMap;->setSize(I)V

    return-void
.end method

.method public final setSize(I)V
    .locals 0

    .line 54
    iput p1, p0, Landroidx/compose/runtime/collection/IdentityScopeMap;->size:I

    return-void
.end method
