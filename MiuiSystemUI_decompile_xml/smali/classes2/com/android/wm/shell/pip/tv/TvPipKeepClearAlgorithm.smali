.class public final Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public lastAreasOverlappingUnstashPosition:Ljava/util/Set;

.field public maxRestrictedDistanceFraction:D

.field public final movementBounds:Landroid/graphics/Rect;

.field public pipAreaPadding:I

.field public pipGravity:I

.field public pipPermanentDecorInsets:Landroid/graphics/Insets;

.field public screenSize:Landroid/util/Size;

.field public stashOffset:I

.field public transformedMovementBounds:Landroid/graphics/Rect;

.field public transformedScreenBounds:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/util/Size;

    .line 5
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1, v1}, Landroid/util/Size;-><init>(II)V

    .line 8
    iput-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->screenSize:Landroid/util/Size;

    .line 11
    new-instance v0, Landroid/graphics/Rect;

    .line 13
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 15
    iput-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->movementBounds:Landroid/graphics/Rect;

    .line 18
    const/16 v0, 0x30

    .line 20
    iput v0, p0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->pipAreaPadding:I

    .line 22
    iput v0, p0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->stashOffset:I

    .line 24
    const-wide v0, 0x3fc3333333333333L    # 0.15

    .line 26
    iput-wide v0, p0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->maxRestrictedDistanceFraction:D

    .line 31
    const/16 v0, 0x55

    .line 33
    iput v0, p0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->pipGravity:I

    .line 35
    new-instance v0, Landroid/graphics/Rect;

    .line 37
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 39
    iput-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->transformedScreenBounds:Landroid/graphics/Rect;

    .line 42
    new-instance v0, Landroid/graphics/Rect;

    .line 44
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 46
    iput-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->transformedMovementBounds:Landroid/graphics/Rect;

    .line 49
    sget-object v0, Lkotlin/collections/EmptySet;->INSTANCE:Lkotlin/collections/EmptySet;

    .line 51
    iput-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->lastAreasOverlappingUnstashPosition:Ljava/util/Set;

    .line 53
    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    .line 55
    iput-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->pipPermanentDecorInsets:Landroid/graphics/Insets;

    .line 57
    return-void
    .line 59
.end method

.method public static candidateCost(Landroid/graphics/Rect;Landroid/graphics/Rect;)I
    .locals 2

    .line 1
    iget v0, p0, Landroid/graphics/Rect;->left:I

    .line 2
    iget v1, p1, Landroid/graphics/Rect;->left:I

    .line 4
    sub-int/2addr v0, v1

    .line 6
    iget p0, p0, Landroid/graphics/Rect;->top:I

    .line 7
    iget p1, p1, Landroid/graphics/Rect;->top:I

    .line 9
    sub-int/2addr p0, p1

    .line 11
    mul-int/2addr v0, v0

    .line 12
    mul-int/2addr p0, p0

    .line 13
    add-int/2addr p0, v0

    .line 14
    return p0
    .line 15
.end method

.method public static getStashType(Landroid/graphics/Rect;Landroid/graphics/Rect;)I
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    return v0

    .line 5
    :cond_0
    iget v1, p0, Landroid/graphics/Rect;->left:I

    .line 6
    iget v2, p1, Landroid/graphics/Rect;->left:I

    .line 8
    if-ge v1, v2, :cond_1

    .line 10
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_1
    iget v1, p0, Landroid/graphics/Rect;->right:I

    .line 14
    iget v2, p1, Landroid/graphics/Rect;->right:I

    .line 16
    if-le v1, v2, :cond_2

    .line 18
    const/4 v0, 0x2

    .line 20
    goto :goto_0

    .line 21
    :cond_2
    iget v1, p0, Landroid/graphics/Rect;->top:I

    .line 22
    iget v2, p1, Landroid/graphics/Rect;->top:I

    .line 24
    if-ge v1, v2, :cond_3

    .line 26
    const/4 v0, 0x4

    .line 28
    goto :goto_0

    .line 29
    :cond_3
    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    .line 30
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    .line 32
    if-le p0, p1, :cond_4

    .line 34
    const/4 v0, 0x3

    .line 36
    :cond_4
    :goto_0
    return v0
    .line 37
.end method

.method public static intersectsX(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 2

    .line 1
    iget v0, p0, Landroid/graphics/Rect;->right:I

    .line 2
    iget v1, p1, Landroid/graphics/Rect;->left:I

    .line 4
    if-lt v0, v1, :cond_0

    .line 6
    iget p0, p0, Landroid/graphics/Rect;->left:I

    .line 8
    iget p1, p1, Landroid/graphics/Rect;->right:I

    .line 10
    if-gt p0, p1, :cond_0

    .line 12
    const/4 p0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    :goto_0
    return p0
    .line 17
.end method

.method public static intersectsY(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 2

    .line 1
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    .line 2
    iget v1, p1, Landroid/graphics/Rect;->top:I

    .line 4
    if-lt v0, v1, :cond_0

    .line 6
    iget p0, p0, Landroid/graphics/Rect;->top:I

    .line 8
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    .line 10
    if-gt p0, p1, :cond_0

    .line 12
    const/4 p0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    :goto_0
    return p0
    .line 17
.end method

.method public static sweepLineFindEarliestGap(IIILjava/util/List;)Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$SweepLineEvent;
    .locals 7

    .line 1
    new-instance v0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$SweepLineEvent;

    .line 2
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    invoke-direct {v0, v1, v2, p1, v2}, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$SweepLineEvent;-><init>(ZZIZ)V

    .line 6
    move-object v3, p3

    .line 9
    check-cast v3, Ljava/util/ArrayList;

    .line 10
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 15
    move-result v0

    .line 18
    if-le v0, v2, :cond_0

    .line 19
    new-instance v0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$sweepLineFindEarliestGap$$inlined$sortBy$1;

    .line 21
    invoke-direct {v0}, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$sweepLineFindEarliestGap$$inlined$sortBy$1;-><init>()V

    .line 23
    invoke-static {p3, v0}, Lkotlin/collections/CollectionsKt__MutableCollectionsJVMKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    .line 26
    :cond_0
    move v0, v1

    .line 29
    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 30
    move-result v2

    .line 33
    if-ge v1, v2, :cond_7

    .line 34
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 36
    move-result-object v2

    .line 39
    check-cast v2, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$SweepLineEvent;

    .line 40
    iget-boolean v4, v2, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$SweepLineEvent;->start:Z

    .line 42
    if-nez v4, :cond_2

    .line 44
    iget-boolean v5, v2, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$SweepLineEvent;->open:Z

    .line 46
    if-eqz v5, :cond_1

    .line 48
    add-int/lit8 v0, v0, 0x1

    .line 50
    goto :goto_1

    .line 52
    :cond_1
    add-int/lit8 v0, v0, -0x1

    .line 53
    :cond_2
    :goto_1
    if-nez v0, :cond_6

    .line 55
    iget v5, v2, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$SweepLineEvent;->pos:I

    .line 57
    if-le v5, p1, :cond_3

    .line 59
    goto :goto_3

    .line 61
    :cond_3
    if-eqz v4, :cond_4

    .line 62
    move v4, p2

    .line 64
    goto :goto_2

    .line 65
    :cond_4
    move v4, p0

    .line 66
    :goto_2
    add-int/lit8 v6, v1, 0x1

    .line 67
    invoke-static {v6, p3}, Lkotlin/collections/CollectionsKt___CollectionsKt;->getOrNull(ILjava/util/List;)Ljava/lang/Object;

    .line 69
    move-result-object v6

    .line 72
    check-cast v6, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$SweepLineEvent;

    .line 73
    if-eqz v6, :cond_5

    .line 75
    sub-int/2addr v5, v4

    .line 77
    iget v4, v6, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$SweepLineEvent;->pos:I

    .line 78
    if-ge v4, v5, :cond_6

    .line 80
    :cond_5
    return-object v2

    .line 82
    :cond_6
    :goto_3
    add-int/lit8 v1, v1, 0x1

    .line 83
    goto :goto_0

    .line 85
    :cond_7
    invoke-static {p3}, Lkotlin/collections/CollectionsKt___CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    .line 86
    move-result-object p0

    .line 89
    check-cast p0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$SweepLineEvent;

    .line 90
    return-object p0
    .line 92
.end method


# virtual methods
.method public final findFreeMovePosition(Landroid/graphics/Rect;Ljava/util/Set;Ljava/util/Set;)Landroid/graphics/Rect;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 4
    iget-object v2, v0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->transformedMovementBounds:Landroid/graphics/Rect;

    .line 6
    new-instance v3, Ljava/util/ArrayList;

    .line 8
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 10
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->isPipAnchoredToCorner()Z

    .line 13
    move-result v4

    .line 16
    if-eqz v4, :cond_0

    .line 17
    iget-wide v4, v0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->maxRestrictedDistanceFraction:D

    .line 19
    goto :goto_0

    .line 21
    :cond_0
    const-wide/16 v4, 0x0

    .line 22
    :goto_0
    iget v6, v1, Landroid/graphics/Rect;->right:I

    .line 24
    int-to-double v6, v6

    .line 26
    iget-object v8, v0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->screenSize:Landroid/util/Size;

    .line 27
    invoke-virtual {v8}, Landroid/util/Size;->getWidth()I

    .line 29
    move-result v8

    .line 32
    int-to-double v8, v8

    .line 33
    mul-double/2addr v8, v4

    .line 34
    sub-double/2addr v6, v8

    .line 35
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    .line 36
    move-result v4

    .line 39
    iget v5, v0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->pipAreaPadding:I

    .line 40
    add-int/2addr v4, v5

    .line 42
    new-instance v5, Landroid/graphics/Rect;

    .line 43
    invoke-direct {v5, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 45
    const/4 v8, 0x0

    .line 48
    invoke-virtual {v5, v4, v8}, Landroid/graphics/Rect;->offset(II)V

    .line 49
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    move-object/from16 v4, p3

    .line 55
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 57
    new-instance v5, Ljava/util/ArrayList;

    .line 60
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 62
    invoke-interface/range {p2 .. p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 65
    move-result-object v9

    .line 68
    :cond_1
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 69
    move-result v10

    .line 72
    const/4 v11, 0x1

    .line 73
    if-eqz v10, :cond_3

    .line 74
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 76
    move-result-object v10

    .line 79
    move-object v12, v10

    .line 80
    check-cast v12, Landroid/graphics/Rect;

    .line 81
    iget v12, v12, Landroid/graphics/Rect;->left:I

    .line 83
    int-to-double v12, v12

    .line 85
    cmpl-double v12, v12, v6

    .line 86
    if-ltz v12, :cond_2

    .line 88
    goto :goto_2

    .line 90
    :cond_2
    move v11, v8

    .line 91
    :goto_2
    if-eqz v11, :cond_1

    .line 92
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    goto :goto_1

    .line 97
    :cond_3
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 98
    iget v5, v2, Landroid/graphics/Rect;->left:I

    .line 101
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    .line 103
    move-result v6

    .line 106
    add-int/2addr v6, v5

    .line 107
    new-instance v5, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$findFreeMovePosition$2;

    .line 108
    invoke-direct {v5, v0, v6}, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$findFreeMovePosition$2;-><init>(Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;I)V

    .line 110
    invoke-static {v3, v5, v8}, Lkotlin/collections/CollectionsKt__ReversedViewsKt;->filterInPlace$CollectionsKt__MutableCollectionsKt(Ljava/util/List;Lkotlin/jvm/functions/Function1;Z)Z

    .line 113
    iget-object v5, v0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->screenSize:Landroid/util/Size;

    .line 116
    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    .line 118
    move-result v5

    .line 121
    int-to-double v5, v5

    .line 122
    iget-wide v9, v0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->maxRestrictedDistanceFraction:D

    .line 123
    mul-double/2addr v5, v9

    .line 125
    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    .line 126
    move-result v7

    .line 129
    if-nez v7, :cond_18

    .line 130
    const-wide v9, 0x41dfffffffc00000L    # 2.147483647E9

    .line 132
    cmpl-double v7, v5, v9

    .line 137
    if-lez v7, :cond_4

    .line 139
    const v5, 0x7fffffff

    .line 141
    goto :goto_3

    .line 144
    :cond_4
    const-wide/high16 v9, -0x3e20000000000000L    # -2.147483648E9

    .line 145
    cmpg-double v7, v5, v9

    .line 147
    if-gez v7, :cond_5

    .line 149
    const/high16 v5, -0x80000000

    .line 151
    goto :goto_3

    .line 153
    :cond_5
    invoke-static {v5, v6}, Ljava/lang/Math;->round(D)J

    .line 154
    move-result-wide v5

    .line 157
    long-to-int v5, v5

    .line 158
    :goto_3
    new-instance v6, Ljava/util/ArrayList;

    .line 159
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 161
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 164
    move-result-object v3

    .line 167
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 168
    move-result v7

    .line 171
    if-eqz v7, :cond_13

    .line 172
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 174
    move-result-object v7

    .line 177
    check-cast v7, Landroid/graphics/Rect;

    .line 178
    iget v9, v7, Landroid/graphics/Rect;->left:I

    .line 180
    iget v10, v0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->pipAreaPadding:I

    .line 182
    sub-int/2addr v9, v10

    .line 184
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    .line 185
    move-result v10

    .line 188
    sub-int/2addr v9, v10

    .line 189
    iget v10, v1, Landroid/graphics/Rect;->left:I

    .line 190
    sub-int/2addr v9, v10

    .line 192
    new-instance v10, Landroid/graphics/Rect;

    .line 193
    invoke-direct {v10, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 195
    invoke-virtual {v10, v9, v8}, Landroid/graphics/Rect;->offset(II)V

    .line 198
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->isPipAnchoredToCorner()Z

    .line 201
    move-result v12

    .line 204
    xor-int/2addr v12, v11

    .line 205
    new-instance v13, Ljava/util/ArrayList;

    .line 206
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 208
    new-instance v14, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$findMinMoveUp$generateEvents$1;

    .line 211
    invoke-direct {v14, v0, v10, v13}, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$findMinMoveUp$generateEvents$1;-><init>(Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;Landroid/graphics/Rect;Ljava/util/List;)V

    .line 213
    sget-object v15, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 216
    invoke-virtual {v14, v15}, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$findMinMoveUp$generateEvents$1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    move-result-object v15

    .line 221
    check-cast v15, Lkotlin/jvm/functions/Function1;

    .line 222
    invoke-interface/range {p2 .. p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 224
    move-result-object v16

    .line 227
    :goto_5
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    .line 228
    move-result v17

    .line 231
    if-eqz v17, :cond_6

    .line 232
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 234
    move-result-object v8

    .line 237
    invoke-interface {v15, v8}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    const/4 v8, 0x0

    .line 241
    goto :goto_5

    .line 242
    :cond_6
    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 243
    invoke-virtual {v14, v8}, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$findMinMoveUp$generateEvents$1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    move-result-object v8

    .line 248
    check-cast v8, Lkotlin/jvm/functions/Function1;

    .line 249
    invoke-interface/range {p3 .. p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 251
    move-result-object v14

    .line 254
    :goto_6
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    .line 255
    move-result v15

    .line 258
    if-eqz v15, :cond_7

    .line 259
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 261
    move-result-object v15

    .line 264
    invoke-interface {v8, v15}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    goto :goto_6

    .line 268
    :cond_7
    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    .line 269
    move-result v8

    .line 272
    iget v14, v0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->pipAreaPadding:I

    .line 273
    add-int/2addr v8, v14

    .line 275
    iget v14, v10, Landroid/graphics/Rect;->bottom:I

    .line 276
    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    .line 278
    move-result v15

    .line 281
    invoke-static {v8, v14, v15, v13}, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->sweepLineFindEarliestGap(IIILjava/util/List;)Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$SweepLineEvent;

    .line 282
    move-result-object v8

    .line 285
    iget-boolean v13, v8, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$SweepLineEvent;->start:Z

    .line 286
    if-eqz v13, :cond_8

    .line 288
    const/4 v13, 0x0

    .line 290
    goto :goto_7

    .line 291
    :cond_8
    iget v13, v0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->pipAreaPadding:I

    .line 292
    :goto_7
    iget v14, v1, Landroid/graphics/Rect;->bottom:I

    .line 294
    iget v15, v8, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$SweepLineEvent;->pos:I

    .line 296
    sub-int/2addr v15, v14

    .line 298
    sub-int/2addr v15, v13

    .line 299
    iget-boolean v8, v8, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$SweepLineEvent;->unrestricted:Z

    .line 300
    if-eqz v8, :cond_9

    .line 302
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    .line 304
    move-result v8

    .line 307
    goto :goto_8

    .line 308
    :cond_9
    move v8, v5

    .line 309
    :goto_8
    new-instance v13, Landroid/graphics/Rect;

    .line 310
    invoke-direct {v13, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 312
    invoke-virtual {v13, v9, v15}, Landroid/graphics/Rect;->offset(II)V

    .line 315
    iget v14, v13, Landroid/graphics/Rect;->top:I

    .line 318
    iget v11, v2, Landroid/graphics/Rect;->top:I

    .line 320
    if-le v14, v11, :cond_a

    .line 322
    const/4 v11, 0x1

    .line 324
    goto :goto_9

    .line 325
    :cond_a
    const/4 v11, 0x0

    .line 326
    :goto_9
    invoke-static {v13, v7}, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->intersectsY(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    .line 327
    move-result v14

    .line 330
    const/16 v16, 0x1

    .line 331
    xor-int/lit8 v14, v14, 0x1

    .line 333
    if-eqz v11, :cond_b

    .line 335
    invoke-static {v15}, Ljava/lang/Math;->abs(I)I

    .line 337
    move-result v11

    .line 340
    if-gt v11, v8, :cond_b

    .line 341
    if-nez v14, :cond_b

    .line 343
    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 345
    :cond_b
    if-eqz v12, :cond_12

    .line 348
    new-instance v8, Ljava/util/ArrayList;

    .line 350
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 352
    new-instance v11, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$findMinMoveDown$generateEvents$1;

    .line 355
    invoke-direct {v11, v0, v10, v8}, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$findMinMoveDown$generateEvents$1;-><init>(Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;Landroid/graphics/Rect;Ljava/util/List;)V

    .line 357
    sget-object v12, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 360
    invoke-virtual {v11, v12}, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$findMinMoveDown$generateEvents$1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    move-result-object v12

    .line 365
    check-cast v12, Lkotlin/jvm/functions/Function1;

    .line 366
    invoke-interface/range {p2 .. p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 368
    move-result-object v13

    .line 371
    :goto_a
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    .line 372
    move-result v14

    .line 375
    if-eqz v14, :cond_c

    .line 376
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 378
    move-result-object v14

    .line 381
    invoke-interface {v12, v14}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    goto :goto_a

    .line 385
    :cond_c
    sget-object v12, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 386
    invoke-virtual {v11, v12}, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$findMinMoveDown$generateEvents$1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    move-result-object v11

    .line 391
    check-cast v11, Lkotlin/jvm/functions/Function1;

    .line 392
    invoke-interface/range {p3 .. p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 394
    move-result-object v12

    .line 397
    :goto_b
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    .line 398
    move-result v13

    .line 401
    if-eqz v13, :cond_d

    .line 402
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 404
    move-result-object v13

    .line 407
    invoke-interface {v11, v13}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    goto :goto_b

    .line 411
    :cond_d
    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    .line 412
    move-result v11

    .line 415
    iget v12, v0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->pipAreaPadding:I

    .line 416
    add-int/2addr v11, v12

    .line 418
    iget v12, v10, Landroid/graphics/Rect;->top:I

    .line 419
    neg-int v12, v12

    .line 421
    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    .line 422
    move-result v10

    .line 425
    invoke-static {v11, v12, v10, v8}, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->sweepLineFindEarliestGap(IIILjava/util/List;)Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$SweepLineEvent;

    .line 426
    move-result-object v8

    .line 429
    iget v10, v8, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$SweepLineEvent;->pos:I

    .line 430
    neg-int v10, v10

    .line 432
    iget-boolean v11, v8, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$SweepLineEvent;->start:Z

    .line 433
    if-eqz v11, :cond_e

    .line 435
    const/4 v11, 0x0

    .line 437
    goto :goto_c

    .line 438
    :cond_e
    iget v11, v0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->pipAreaPadding:I

    .line 439
    :goto_c
    iget v12, v1, Landroid/graphics/Rect;->top:I

    .line 441
    sub-int/2addr v10, v12

    .line 443
    add-int/2addr v10, v11

    .line 444
    iget-boolean v8, v8, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$SweepLineEvent;->unrestricted:Z

    .line 445
    if-eqz v8, :cond_f

    .line 447
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    .line 449
    move-result v8

    .line 452
    goto :goto_d

    .line 453
    :cond_f
    move v8, v5

    .line 454
    :goto_d
    new-instance v11, Landroid/graphics/Rect;

    .line 455
    invoke-direct {v11, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 457
    invoke-virtual {v11, v9, v10}, Landroid/graphics/Rect;->offset(II)V

    .line 460
    iget v9, v11, Landroid/graphics/Rect;->bottom:I

    .line 463
    iget v12, v2, Landroid/graphics/Rect;->bottom:I

    .line 465
    if-ge v9, v12, :cond_10

    .line 467
    const/4 v9, 0x1

    .line 469
    goto :goto_e

    .line 470
    :cond_10
    const/4 v9, 0x0

    .line 471
    :goto_e
    invoke-static {v11, v7}, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->intersectsY(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    .line 472
    move-result v7

    .line 475
    const/4 v12, 0x1

    .line 476
    xor-int/2addr v7, v12

    .line 477
    if-eqz v9, :cond_11

    .line 478
    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    .line 480
    move-result v9

    .line 483
    if-gt v9, v8, :cond_11

    .line 484
    if-nez v7, :cond_11

    .line 486
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 488
    :cond_11
    move v11, v12

    .line 491
    const/4 v8, 0x0

    .line 492
    goto/16 :goto_4

    .line 493
    :cond_12
    const/4 v8, 0x0

    .line 495
    const/4 v11, 0x1

    .line 496
    goto/16 :goto_4

    .line 497
    :cond_13
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 499
    move-result-object v0

    .line 502
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 503
    move-result v2

    .line 506
    if-nez v2, :cond_14

    .line 507
    const/4 v0, 0x0

    .line 509
    goto :goto_10

    .line 510
    :cond_14
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 511
    move-result-object v2

    .line 514
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 515
    move-result v3

    .line 518
    if-nez v3, :cond_15

    .line 519
    :goto_f
    move-object v0, v2

    .line 521
    goto :goto_10

    .line 522
    :cond_15
    move-object v3, v2

    .line 523
    check-cast v3, Landroid/graphics/Rect;

    .line 524
    invoke-static {v3, v1}, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->candidateCost(Landroid/graphics/Rect;Landroid/graphics/Rect;)I

    .line 526
    move-result v3

    .line 529
    :cond_16
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 530
    move-result-object v4

    .line 533
    move-object v5, v4

    .line 534
    check-cast v5, Landroid/graphics/Rect;

    .line 535
    invoke-static {v5, v1}, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->candidateCost(Landroid/graphics/Rect;Landroid/graphics/Rect;)I

    .line 537
    move-result v5

    .line 540
    if-le v3, v5, :cond_17

    .line 541
    move-object v2, v4

    .line 543
    move v3, v5

    .line 544
    :cond_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 545
    move-result v4

    .line 548
    if-nez v4, :cond_16

    .line 549
    goto :goto_f

    .line 551
    :goto_10
    check-cast v0, Landroid/graphics/Rect;

    .line 552
    return-object v0

    .line 554
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 555
    const-string v1, "Cannot round NaN value."

    .line 557
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 559
    throw v0
    .line 562
.end method

.method public final findRelaxedMovePosition(ILandroid/graphics/Rect;Ljava/util/Set;Ljava/util/Set;)Landroid/graphics/Rect;
    .locals 4

    .line 1
    if-nez p1, :cond_0

    .line 2
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->findFreeMovePosition(Landroid/graphics/Rect;Ljava/util/Set;Ljava/util/Set;)Landroid/graphics/Rect;

    .line 4
    move-result-object p0

    .line 7
    return-object p0

    .line 8
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    invoke-static {p3}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    .line 14
    move-result-object v1

    .line 17
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 18
    move-result-object v1

    .line 21
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    move-result v2

    .line 25
    if-eqz v2, :cond_2

    .line 26
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    move-result-object v2

    .line 31
    check-cast v2, Landroid/graphics/Rect;

    .line 32
    invoke-interface {p3, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 34
    add-int/lit8 v3, p1, -0x1

    .line 37
    invoke-virtual {p0, v3, p2, p3, p4}, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->findRelaxedMovePosition(ILandroid/graphics/Rect;Ljava/util/Set;Ljava/util/Set;)Landroid/graphics/Rect;

    .line 39
    move-result-object v3

    .line 42
    invoke-interface {p3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 43
    if-eqz v3, :cond_1

    .line 46
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    goto :goto_0

    .line 51
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 52
    move-result-object p0

    .line 55
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 56
    move-result p1

    .line 59
    if-nez p1, :cond_3

    .line 60
    const/4 p0, 0x0

    .line 62
    goto :goto_2

    .line 63
    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 64
    move-result-object p1

    .line 67
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 68
    move-result p3

    .line 71
    if-nez p3, :cond_4

    .line 72
    :goto_1
    move-object p0, p1

    .line 74
    goto :goto_2

    .line 75
    :cond_4
    move-object p3, p1

    .line 76
    check-cast p3, Landroid/graphics/Rect;

    .line 77
    invoke-static {p3, p2}, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->candidateCost(Landroid/graphics/Rect;Landroid/graphics/Rect;)I

    .line 79
    move-result p3

    .line 82
    :cond_5
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 83
    move-result-object p4

    .line 86
    move-object v0, p4

    .line 87
    check-cast v0, Landroid/graphics/Rect;

    .line 88
    invoke-static {v0, p2}, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->candidateCost(Landroid/graphics/Rect;Landroid/graphics/Rect;)I

    .line 90
    move-result v0

    .line 93
    if-le p3, v0, :cond_6

    .line 94
    move-object p1, p4

    .line 96
    move p3, v0

    .line 97
    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 98
    move-result p4

    .line 101
    if-nez p4, :cond_5

    .line 102
    goto :goto_1

    .line 104
    :goto_2
    check-cast p0, Landroid/graphics/Rect;

    .line 105
    return-object p0
    .line 107
.end method

.method public final fromTransformedSpace(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 10

    .line 1
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->shouldTransformRotate()Z

    .line 2
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->screenSize:Landroid/util/Size;

    .line 6
    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    .line 10
    move-result v1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    .line 15
    move-result v1

    .line 18
    :goto_0
    iget-object v2, p0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->screenSize:Landroid/util/Size;

    .line 19
    if-eqz v0, :cond_1

    .line 21
    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    .line 23
    move-result v2

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    .line 28
    move-result v2

    .line 31
    :goto_1
    new-instance v3, Landroid/graphics/Point;

    .line 32
    iget v4, p1, Landroid/graphics/Rect;->left:I

    .line 34
    iget v5, p1, Landroid/graphics/Rect;->top:I

    .line 36
    invoke-direct {v3, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    .line 38
    new-instance v4, Landroid/graphics/Point;

    .line 41
    iget v5, p1, Landroid/graphics/Rect;->right:I

    .line 43
    iget v6, p1, Landroid/graphics/Rect;->top:I

    .line 45
    invoke-direct {v4, v5, v6}, Landroid/graphics/Point;-><init>(II)V

    .line 47
    new-instance v5, Landroid/graphics/Point;

    .line 50
    iget v6, p1, Landroid/graphics/Rect;->right:I

    .line 52
    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    .line 54
    invoke-direct {v5, v6, v7}, Landroid/graphics/Point;-><init>(II)V

    .line 56
    new-instance v6, Landroid/graphics/Point;

    .line 59
    iget v7, p1, Landroid/graphics/Rect;->left:I

    .line 61
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    .line 63
    invoke-direct {v6, v7, p1}, Landroid/graphics/Point;-><init>(II)V

    .line 65
    filled-new-array {v3, v4, v5, v6}, [Landroid/graphics/Point;

    .line 68
    move-result-object p1

    .line 71
    const/4 v3, 0x0

    .line 72
    move v4, v3

    .line 73
    :goto_2
    const/4 v5, 0x3

    .line 74
    const/4 v6, 0x1

    .line 75
    const/4 v7, 0x4

    .line 76
    if-ge v4, v7, :cond_6

    .line 77
    aget-object v7, p1, v4

    .line 79
    iget v8, p0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->pipGravity:I

    .line 81
    const/16 v9, 0x33

    .line 83
    if-eq v8, v5, :cond_2

    .line 85
    const/16 v5, 0x13

    .line 87
    if-eq v8, v5, :cond_2

    .line 89
    if-eq v8, v9, :cond_2

    .line 91
    const/16 v5, 0x53

    .line 93
    if-eq v8, v5, :cond_2

    .line 95
    const/16 v5, 0x30

    .line 97
    if-eq v8, v5, :cond_2

    .line 99
    const/16 v5, 0x31

    .line 101
    if-eq v8, v5, :cond_2

    .line 103
    move v5, v3

    .line 105
    goto :goto_3

    .line 106
    :cond_2
    move v5, v6

    .line 107
    :goto_3
    if-eqz v5, :cond_3

    .line 108
    iget v5, v7, Landroid/graphics/Point;->x:I

    .line 110
    sub-int v5, v1, v5

    .line 112
    iput v5, v7, Landroid/graphics/Point;->x:I

    .line 114
    :cond_3
    if-eq v8, v9, :cond_4

    .line 116
    const/16 v5, 0x35

    .line 118
    if-eq v8, v5, :cond_4

    .line 120
    move v6, v3

    .line 122
    :cond_4
    if-eqz v6, :cond_5

    .line 123
    iget v5, v7, Landroid/graphics/Point;->y:I

    .line 125
    sub-int v5, v2, v5

    .line 127
    iput v5, v7, Landroid/graphics/Point;->y:I

    .line 129
    :cond_5
    add-int/lit8 v4, v4, 0x1

    .line 131
    goto :goto_2

    .line 133
    :cond_6
    if-eqz v0, :cond_7

    .line 134
    move v0, v3

    .line 136
    :goto_4
    if-ge v0, v7, :cond_7

    .line 137
    aget-object v1, p1, v0

    .line 139
    iget v2, v1, Landroid/graphics/Point;->y:I

    .line 141
    iget-object v4, p0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->screenSize:Landroid/util/Size;

    .line 143
    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    .line 145
    move-result v4

    .line 148
    sub-int/2addr v2, v4

    .line 149
    iget v4, v1, Landroid/graphics/Point;->x:I

    .line 150
    neg-int v2, v2

    .line 152
    iput v2, v1, Landroid/graphics/Point;->x:I

    .line 153
    iput v4, v1, Landroid/graphics/Point;->y:I

    .line 155
    add-int/lit8 v0, v0, 0x1

    .line 157
    goto :goto_4

    .line 159
    :cond_7
    aget-object p0, p1, v3

    .line 160
    iget v0, p0, Landroid/graphics/Point;->y:I

    .line 162
    new-instance v1, Lkotlin/ranges/IntRange;

    .line 164
    invoke-direct {v1, v6, v5}, Lkotlin/ranges/IntRange;-><init>(II)V

    .line 166
    invoke-virtual {v1}, Lkotlin/ranges/IntProgression;->iterator()Lkotlin/ranges/IntProgressionIterator;

    .line 169
    move-result-object v1

    .line 172
    :cond_8
    :goto_5
    iget-boolean v2, v1, Lkotlin/ranges/IntProgressionIterator;->hasNext:Z

    .line 173
    if-eqz v2, :cond_9

    .line 175
    invoke-virtual {v1}, Lkotlin/ranges/IntProgressionIterator;->nextInt()I

    .line 177
    move-result v2

    .line 180
    aget-object v2, p1, v2

    .line 181
    iget v4, v2, Landroid/graphics/Point;->y:I

    .line 183
    if-le v0, v4, :cond_8

    .line 185
    move-object p0, v2

    .line 187
    move v0, v4

    .line 188
    goto :goto_5

    .line 189
    :cond_9
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 190
    iget p0, p0, Landroid/graphics/Point;->y:I

    .line 193
    aget-object v0, p1, v3

    .line 195
    iget v1, v0, Landroid/graphics/Point;->x:I

    .line 197
    new-instance v2, Lkotlin/ranges/IntRange;

    .line 199
    invoke-direct {v2, v6, v5}, Lkotlin/ranges/IntRange;-><init>(II)V

    .line 201
    invoke-virtual {v2}, Lkotlin/ranges/IntProgression;->iterator()Lkotlin/ranges/IntProgressionIterator;

    .line 204
    move-result-object v2

    .line 207
    :cond_a
    :goto_6
    iget-boolean v4, v2, Lkotlin/ranges/IntProgressionIterator;->hasNext:Z

    .line 208
    if-eqz v4, :cond_b

    .line 210
    invoke-virtual {v2}, Lkotlin/ranges/IntProgressionIterator;->nextInt()I

    .line 212
    move-result v4

    .line 215
    aget-object v4, p1, v4

    .line 216
    iget v7, v4, Landroid/graphics/Point;->x:I

    .line 218
    if-ge v1, v7, :cond_a

    .line 220
    move-object v0, v4

    .line 222
    move v1, v7

    .line 223
    goto :goto_6

    .line 224
    :cond_b
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 225
    iget v0, v0, Landroid/graphics/Point;->x:I

    .line 228
    aget-object v1, p1, v3

    .line 230
    iget v2, v1, Landroid/graphics/Point;->y:I

    .line 232
    new-instance v4, Lkotlin/ranges/IntRange;

    .line 234
    invoke-direct {v4, v6, v5}, Lkotlin/ranges/IntRange;-><init>(II)V

    .line 236
    invoke-virtual {v4}, Lkotlin/ranges/IntProgression;->iterator()Lkotlin/ranges/IntProgressionIterator;

    .line 239
    move-result-object v4

    .line 242
    :cond_c
    :goto_7
    iget-boolean v7, v4, Lkotlin/ranges/IntProgressionIterator;->hasNext:Z

    .line 243
    if-eqz v7, :cond_d

    .line 245
    invoke-virtual {v4}, Lkotlin/ranges/IntProgressionIterator;->nextInt()I

    .line 247
    move-result v7

    .line 250
    aget-object v7, p1, v7

    .line 251
    iget v8, v7, Landroid/graphics/Point;->y:I

    .line 253
    if-ge v2, v8, :cond_c

    .line 255
    move-object v1, v7

    .line 257
    move v2, v8

    .line 258
    goto :goto_7

    .line 259
    :cond_d
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 260
    iget v1, v1, Landroid/graphics/Point;->y:I

    .line 263
    aget-object v2, p1, v3

    .line 265
    iget v3, v2, Landroid/graphics/Point;->x:I

    .line 267
    new-instance v4, Lkotlin/ranges/IntRange;

    .line 269
    invoke-direct {v4, v6, v5}, Lkotlin/ranges/IntRange;-><init>(II)V

    .line 271
    invoke-virtual {v4}, Lkotlin/ranges/IntProgression;->iterator()Lkotlin/ranges/IntProgressionIterator;

    .line 274
    move-result-object v4

    .line 277
    :cond_e
    :goto_8
    iget-boolean v5, v4, Lkotlin/ranges/IntProgressionIterator;->hasNext:Z

    .line 278
    if-eqz v5, :cond_f

    .line 280
    invoke-virtual {v4}, Lkotlin/ranges/IntProgressionIterator;->nextInt()I

    .line 282
    move-result v5

    .line 285
    aget-object v5, p1, v5

    .line 286
    iget v6, v5, Landroid/graphics/Point;->x:I

    .line 288
    if-le v3, v6, :cond_e

    .line 290
    move-object v2, v5

    .line 292
    move v3, v6

    .line 293
    goto :goto_8

    .line 294
    :cond_f
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 295
    iget p1, v2, Landroid/graphics/Point;->x:I

    .line 298
    new-instance v2, Landroid/graphics/Rect;

    .line 300
    invoke-direct {v2, p1, p0, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 302
    return-object v2
    .line 305
.end method

.method public final isPipAnchoredToCorner()Z
    .locals 6

    .line 1
    iget p0, p0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->pipGravity:I

    .line 2
    and-int/lit8 v0, p0, 0x7

    .line 4
    const/4 v1, 0x3

    .line 6
    const/4 v2, 0x1

    .line 7
    const/4 v3, 0x0

    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    move v0, v2

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move v0, v3

    .line 13
    :goto_0
    and-int/lit8 v1, p0, 0x7

    .line 14
    const/4 v4, 0x5

    .line 16
    if-ne v1, v4, :cond_1

    .line 17
    move v1, v2

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    move v1, v3

    .line 21
    :goto_1
    and-int/lit8 v4, p0, 0x70

    .line 22
    const/16 v5, 0x30

    .line 24
    if-ne v4, v5, :cond_2

    .line 26
    move v4, v2

    .line 28
    goto :goto_2

    .line 29
    :cond_2
    move v4, v3

    .line 30
    :goto_2
    and-int/lit8 p0, p0, 0x70

    .line 31
    const/16 v5, 0x50

    .line 33
    if-ne p0, v5, :cond_3

    .line 35
    move p0, v2

    .line 37
    goto :goto_3

    .line 38
    :cond_3
    move p0, v3

    .line 39
    :goto_3
    if-nez v0, :cond_5

    .line 40
    if-eqz v1, :cond_4

    .line 42
    goto :goto_4

    .line 44
    :cond_4
    move v0, v3

    .line 45
    goto :goto_5

    .line 46
    :cond_5
    :goto_4
    move v0, v2

    .line 47
    :goto_5
    if-nez v4, :cond_7

    .line 48
    if-eqz p0, :cond_6

    .line 50
    goto :goto_6

    .line 52
    :cond_6
    move p0, v3

    .line 53
    goto :goto_7

    .line 54
    :cond_7
    :goto_6
    move p0, v2

    .line 55
    :goto_7
    if-eqz v0, :cond_8

    .line 56
    if-eqz p0, :cond_8

    .line 58
    goto :goto_8

    .line 60
    :cond_8
    move v2, v3

    .line 61
    :goto_8
    return v2
    .line 62
.end method

.method public final shouldTransformRotate()Z
    .locals 4

    .line 1
    iget p0, p0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->pipGravity:I

    .line 2
    and-int/lit8 v0, p0, 0x7

    .line 4
    const/4 v1, 0x3

    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v3, 0x1

    .line 8
    if-eq v0, v1, :cond_1

    .line 9
    const/4 v1, 0x5

    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    goto :goto_0

    .line 14
    :cond_0
    move v0, v2

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    :goto_0
    move v0, v3

    .line 17
    :goto_1
    if-eqz v0, :cond_2

    .line 18
    return v2

    .line 20
    :cond_2
    and-int/lit8 p0, p0, 0x70

    .line 21
    const/16 v0, 0x30

    .line 23
    if-eq p0, v0, :cond_3

    .line 25
    const/16 v0, 0x50

    .line 27
    if-eq p0, v0, :cond_3

    .line 29
    goto :goto_2

    .line 31
    :cond_3
    move v2, v3

    .line 32
    :goto_2
    return v2
    .line 33
.end method

.method public final toTransformedSpace(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->screenSize:Landroid/util/Size;

    .line 2
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    .line 4
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->screenSize:Landroid/util/Size;

    .line 8
    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    .line 10
    move-result v1

    .line 13
    new-instance v2, Landroid/graphics/Point;

    .line 14
    iget v3, p1, Landroid/graphics/Rect;->left:I

    .line 16
    iget v4, p1, Landroid/graphics/Rect;->top:I

    .line 18
    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    .line 20
    new-instance v3, Landroid/graphics/Point;

    .line 23
    iget v4, p1, Landroid/graphics/Rect;->right:I

    .line 25
    iget v5, p1, Landroid/graphics/Rect;->top:I

    .line 27
    invoke-direct {v3, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    .line 29
    new-instance v4, Landroid/graphics/Point;

    .line 32
    iget v5, p1, Landroid/graphics/Rect;->right:I

    .line 34
    iget v6, p1, Landroid/graphics/Rect;->bottom:I

    .line 36
    invoke-direct {v4, v5, v6}, Landroid/graphics/Point;-><init>(II)V

    .line 38
    new-instance v5, Landroid/graphics/Point;

    .line 41
    iget v6, p1, Landroid/graphics/Rect;->left:I

    .line 43
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    .line 45
    invoke-direct {v5, v6, p1}, Landroid/graphics/Point;-><init>(II)V

    .line 47
    filled-new-array {v2, v3, v4, v5}, [Landroid/graphics/Point;

    .line 50
    move-result-object p1

    .line 53
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->shouldTransformRotate()Z

    .line 54
    move-result v2

    .line 57
    const/4 v3, 0x0

    .line 58
    const/4 v4, 0x4

    .line 59
    if-eqz v2, :cond_1

    .line 60
    move v1, v3

    .line 62
    :goto_0
    if-ge v1, v4, :cond_0

    .line 63
    aget-object v2, p1, v1

    .line 65
    iget v5, v2, Landroid/graphics/Point;->x:I

    .line 67
    iget v6, v2, Landroid/graphics/Point;->y:I

    .line 69
    iput v6, v2, Landroid/graphics/Point;->x:I

    .line 71
    neg-int v5, v5

    .line 73
    add-int/2addr v5, v0

    .line 74
    iput v5, v2, Landroid/graphics/Point;->y:I

    .line 75
    add-int/lit8 v1, v1, 0x1

    .line 77
    goto :goto_0

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->screenSize:Landroid/util/Size;

    .line 80
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    .line 82
    move-result v0

    .line 85
    iget-object v1, p0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->screenSize:Landroid/util/Size;

    .line 86
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    .line 88
    move-result v1

    .line 91
    :cond_1
    move v2, v3

    .line 92
    :goto_1
    const/4 v5, 0x3

    .line 93
    const/4 v6, 0x1

    .line 94
    if-ge v2, v4, :cond_6

    .line 95
    aget-object v7, p1, v2

    .line 97
    iget v8, p0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->pipGravity:I

    .line 99
    const/16 v9, 0x33

    .line 101
    if-eq v8, v5, :cond_2

    .line 103
    const/16 v5, 0x13

    .line 105
    if-eq v8, v5, :cond_2

    .line 107
    if-eq v8, v9, :cond_2

    .line 109
    const/16 v5, 0x53

    .line 111
    if-eq v8, v5, :cond_2

    .line 113
    const/16 v5, 0x30

    .line 115
    if-eq v8, v5, :cond_2

    .line 117
    const/16 v5, 0x31

    .line 119
    if-eq v8, v5, :cond_2

    .line 121
    move v5, v3

    .line 123
    goto :goto_2

    .line 124
    :cond_2
    move v5, v6

    .line 125
    :goto_2
    if-eqz v5, :cond_3

    .line 126
    iget v5, v7, Landroid/graphics/Point;->x:I

    .line 128
    sub-int v5, v0, v5

    .line 130
    iput v5, v7, Landroid/graphics/Point;->x:I

    .line 132
    :cond_3
    if-eq v8, v9, :cond_4

    .line 134
    const/16 v5, 0x35

    .line 136
    if-eq v8, v5, :cond_4

    .line 138
    move v6, v3

    .line 140
    :cond_4
    if-eqz v6, :cond_5

    .line 141
    iget v5, v7, Landroid/graphics/Point;->y:I

    .line 143
    sub-int v5, v1, v5

    .line 145
    iput v5, v7, Landroid/graphics/Point;->y:I

    .line 147
    :cond_5
    add-int/lit8 v2, v2, 0x1

    .line 149
    goto :goto_1

    .line 151
    :cond_6
    aget-object p0, p1, v3

    .line 152
    iget v0, p0, Landroid/graphics/Point;->y:I

    .line 154
    new-instance v1, Lkotlin/ranges/IntRange;

    .line 156
    invoke-direct {v1, v6, v5}, Lkotlin/ranges/IntRange;-><init>(II)V

    .line 158
    invoke-virtual {v1}, Lkotlin/ranges/IntProgression;->iterator()Lkotlin/ranges/IntProgressionIterator;

    .line 161
    move-result-object v1

    .line 164
    :cond_7
    :goto_3
    iget-boolean v2, v1, Lkotlin/ranges/IntProgressionIterator;->hasNext:Z

    .line 165
    if-eqz v2, :cond_8

    .line 167
    invoke-virtual {v1}, Lkotlin/ranges/IntProgressionIterator;->nextInt()I

    .line 169
    move-result v2

    .line 172
    aget-object v2, p1, v2

    .line 173
    iget v4, v2, Landroid/graphics/Point;->y:I

    .line 175
    if-le v0, v4, :cond_7

    .line 177
    move-object p0, v2

    .line 179
    move v0, v4

    .line 180
    goto :goto_3

    .line 181
    :cond_8
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 182
    iget p0, p0, Landroid/graphics/Point;->y:I

    .line 185
    aget-object v0, p1, v3

    .line 187
    iget v1, v0, Landroid/graphics/Point;->x:I

    .line 189
    new-instance v2, Lkotlin/ranges/IntRange;

    .line 191
    invoke-direct {v2, v6, v5}, Lkotlin/ranges/IntRange;-><init>(II)V

    .line 193
    invoke-virtual {v2}, Lkotlin/ranges/IntProgression;->iterator()Lkotlin/ranges/IntProgressionIterator;

    .line 196
    move-result-object v2

    .line 199
    :cond_9
    :goto_4
    iget-boolean v4, v2, Lkotlin/ranges/IntProgressionIterator;->hasNext:Z

    .line 200
    if-eqz v4, :cond_a

    .line 202
    invoke-virtual {v2}, Lkotlin/ranges/IntProgressionIterator;->nextInt()I

    .line 204
    move-result v4

    .line 207
    aget-object v4, p1, v4

    .line 208
    iget v7, v4, Landroid/graphics/Point;->x:I

    .line 210
    if-ge v1, v7, :cond_9

    .line 212
    move-object v0, v4

    .line 214
    move v1, v7

    .line 215
    goto :goto_4

    .line 216
    :cond_a
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 217
    iget v0, v0, Landroid/graphics/Point;->x:I

    .line 220
    aget-object v1, p1, v3

    .line 222
    iget v2, v1, Landroid/graphics/Point;->y:I

    .line 224
    new-instance v4, Lkotlin/ranges/IntRange;

    .line 226
    invoke-direct {v4, v6, v5}, Lkotlin/ranges/IntRange;-><init>(II)V

    .line 228
    invoke-virtual {v4}, Lkotlin/ranges/IntProgression;->iterator()Lkotlin/ranges/IntProgressionIterator;

    .line 231
    move-result-object v4

    .line 234
    :cond_b
    :goto_5
    iget-boolean v7, v4, Lkotlin/ranges/IntProgressionIterator;->hasNext:Z

    .line 235
    if-eqz v7, :cond_c

    .line 237
    invoke-virtual {v4}, Lkotlin/ranges/IntProgressionIterator;->nextInt()I

    .line 239
    move-result v7

    .line 242
    aget-object v7, p1, v7

    .line 243
    iget v8, v7, Landroid/graphics/Point;->y:I

    .line 245
    if-ge v2, v8, :cond_b

    .line 247
    move-object v1, v7

    .line 249
    move v2, v8

    .line 250
    goto :goto_5

    .line 251
    :cond_c
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 252
    iget v1, v1, Landroid/graphics/Point;->y:I

    .line 255
    aget-object v2, p1, v3

    .line 257
    iget v3, v2, Landroid/graphics/Point;->x:I

    .line 259
    new-instance v4, Lkotlin/ranges/IntRange;

    .line 261
    invoke-direct {v4, v6, v5}, Lkotlin/ranges/IntRange;-><init>(II)V

    .line 263
    invoke-virtual {v4}, Lkotlin/ranges/IntProgression;->iterator()Lkotlin/ranges/IntProgressionIterator;

    .line 266
    move-result-object v4

    .line 269
    :cond_d
    :goto_6
    iget-boolean v5, v4, Lkotlin/ranges/IntProgressionIterator;->hasNext:Z

    .line 270
    if-eqz v5, :cond_e

    .line 272
    invoke-virtual {v4}, Lkotlin/ranges/IntProgressionIterator;->nextInt()I

    .line 274
    move-result v5

    .line 277
    aget-object v5, p1, v5

    .line 278
    iget v6, v5, Landroid/graphics/Point;->x:I

    .line 280
    if-le v3, v6, :cond_d

    .line 282
    move-object v2, v5

    .line 284
    move v3, v6

    .line 285
    goto :goto_6

    .line 286
    :cond_e
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 287
    iget p1, v2, Landroid/graphics/Point;->x:I

    .line 290
    new-instance v2, Landroid/graphics/Rect;

    .line 292
    invoke-direct {v2, p1, p0, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 294
    return-object v2
    .line 297
.end method

.method public final transformAndFilterAreas(Ljava/util/Set;)Ljava/util/Set;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 2
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 4
    check-cast p1, Landroid/util/ArraySet;

    .line 7
    invoke-virtual {p1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 9
    move-result-object p1

    .line 12
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    move-result v1

    .line 16
    if-eqz v1, :cond_2

    .line 17
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v1

    .line 22
    check-cast v1, Landroid/graphics/Rect;

    .line 23
    iget-object v2, p0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->movementBounds:Landroid/graphics/Rect;

    .line 25
    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    .line 27
    move-result v2

    .line 30
    if-eqz v2, :cond_1

    .line 31
    const/4 v1, 0x0

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->toTransformedSpace(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 35
    move-result-object v1

    .line 38
    :goto_1
    if-eqz v1, :cond_0

    .line 39
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 41
    goto :goto_0

    .line 44
    :cond_2
    return-object v0
    .line 45
.end method
