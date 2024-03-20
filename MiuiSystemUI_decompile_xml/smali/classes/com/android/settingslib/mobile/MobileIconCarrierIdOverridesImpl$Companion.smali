.class public final Lcom/android/settingslib/mobile/MobileIconCarrierIdOverridesImpl$Companion;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# virtual methods
.method public final parseNetworkIconOverrideTypedArray(Landroid/content/res/TypedArray;)Ljava/util/Map;
    .locals 7

    .line 1
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->length()I

    .line 2
    move-result p0

    .line 5
    const/4 v0, 0x2

    .line 6
    rem-int/2addr p0, v0

    .line 7
    const-string v1, "MobileIconOverrides"

    .line 8
    if-eqz p0, :cond_0

    .line 10
    const-string p0, "override must contain an even number of (key, value) entries. skipping"

    .line 12
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    invoke-static {}, Lkotlin/collections/MapsKt___MapsJvmKt;->emptyMap()Ljava/util/Map;

    .line 17
    move-result-object p0

    .line 20
    return-object p0

    .line 21
    :cond_0
    new-instance p0, Ljava/util/LinkedHashMap;

    .line 22
    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 24
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->length()I

    .line 27
    move-result v2

    .line 30
    const/4 v3, 0x0

    .line 31
    invoke-static {v3, v2}, Lkotlin/ranges/RangesKt___RangesKt;->until(II)Lkotlin/ranges/IntRange;

    .line 32
    move-result-object v2

    .line 35
    iget v4, v2, Lkotlin/ranges/IntProgression;->first:I

    .line 36
    iget v5, v2, Lkotlin/ranges/IntProgression;->last:I

    .line 38
    iget v2, v2, Lkotlin/ranges/IntProgression;->step:I

    .line 40
    if-lez v2, :cond_1

    .line 42
    goto :goto_0

    .line 44
    :cond_1
    const/4 v0, -0x2

    .line 45
    :goto_0
    if-eqz v0, :cond_8

    .line 46
    const/high16 v2, -0x80000000

    .line 48
    if-eq v0, v2, :cond_7

    .line 50
    invoke-static {v4, v5, v0}, Lkotlin/internal/ProgressionUtilKt;->getProgressionLastElement(III)I

    .line 52
    move-result v2

    .line 55
    if-lez v0, :cond_2

    .line 56
    if-le v4, v2, :cond_3

    .line 58
    :cond_2
    if-gez v0, :cond_6

    .line 60
    if-gt v2, v4, :cond_6

    .line 62
    :cond_3
    :goto_1
    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 64
    move-result-object v5

    .line 67
    add-int/lit8 v6, v4, 0x1

    .line 68
    invoke-virtual {p1, v6, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 70
    move-result v6

    .line 73
    if-eqz v5, :cond_5

    .line 74
    if-nez v6, :cond_4

    .line 76
    goto :goto_2

    .line 78
    :cond_4
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 79
    move-result-object v6

    .line 82
    invoke-interface {p0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    goto :goto_3

    .line 86
    :cond_5
    :goto_2
    const-string v5, "Invalid override found. Skipping"

    .line 87
    invoke-static {v1, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :goto_3
    if-eq v4, v2, :cond_6

    .line 92
    add-int/2addr v4, v0

    .line 94
    goto :goto_1

    .line 95
    :cond_6
    return-object p0

    .line 96
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 97
    const-string p1, "Step must be greater than Int.MIN_VALUE to avoid overflow on negation."

    .line 99
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 101
    throw p0

    .line 104
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 105
    const-string p1, "Step must be non-zero."

    .line 107
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 109
    throw p0
    .line 112
.end method
