.class public final Lcom/android/systemui/statusbar/phone/SystemBarAttributesListener;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field public final centralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

.field public lastLetterboxAppearance:Lcom/android/systemui/statusbar/phone/LetterboxAppearance;

.field public lastSystemBarAttributesParams:Lcom/android/systemui/statusbar/phone/SystemBarAttributesParams;

.field public final letterboxAppearanceCalculator:Lcom/android/systemui/statusbar/phone/LetterboxAppearanceCalculator;

.field public final lightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

.field public final statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/CentralSurfaces;Lcom/android/systemui/statusbar/phone/LetterboxAppearanceCalculator;Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Lcom/android/systemui/statusbar/phone/LightBarController;Lcom/android/systemui/dump/DumpManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/SystemBarAttributesListener;->centralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/SystemBarAttributesListener;->letterboxAppearanceCalculator:Lcom/android/systemui/statusbar/phone/LetterboxAppearanceCalculator;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/SystemBarAttributesListener;->statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 9
    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/SystemBarAttributesListener;->lightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

    .line 11
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    const-string p1, "SystemBarAttributesListener"

    .line 16
    invoke-virtual {p5, p1, p0}, Lcom/android/systemui/dump/DumpManager;->registerCriticalDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    .line 18
    return-void
    .line 21
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/SystemBarAttributesListener;->lastSystemBarAttributesParams:Lcom/android/systemui/statusbar/phone/SystemBarAttributesParams;

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 4
    const-string v1, "lastSystemBarAttributesParams: "

    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    move-result-object p2

    .line 17
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 18
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SystemBarAttributesListener;->lastLetterboxAppearance:Lcom/android/systemui/statusbar/phone/LetterboxAppearance;

    .line 21
    new-instance p2, Ljava/lang/StringBuilder;

    .line 23
    const-string v0, "lastLetterboxAppearance: "

    .line 25
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    move-result-object p0

    .line 36
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 37
    return-void
    .line 40
.end method

.method public final onSystemBarAttributesChanged(II[Lcom/android/internal/view/AppearanceRegion;ZIILjava/lang/String;[Lcom/android/internal/statusbar/LetterboxDetails;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v10, p3

    .line 4
    move-object/from16 v11, p8

    .line 6
    new-instance v12, Lcom/android/systemui/statusbar/phone/SystemBarAttributesParams;

    .line 8
    invoke-static/range {p3 .. p3}, Lkotlin/collections/ArraysKt___ArraysKt;->toList([Ljava/lang/Object;)Ljava/util/List;

    .line 10
    move-result-object v4

    .line 13
    invoke-static/range {p8 .. p8}, Lkotlin/collections/ArraysKt___ArraysKt;->toList([Ljava/lang/Object;)Ljava/util/List;

    .line 14
    move-result-object v9

    .line 17
    move-object v1, v12

    .line 18
    move/from16 v2, p1

    .line 19
    move/from16 v3, p2

    .line 21
    move/from16 v5, p4

    .line 23
    move/from16 v6, p5

    .line 25
    move/from16 v7, p6

    .line 27
    move-object/from16 v8, p7

    .line 29
    invoke-direct/range {v1 .. v9}, Lcom/android/systemui/statusbar/phone/SystemBarAttributesParams;-><init>(IILjava/util/List;ZIILjava/lang/String;Ljava/util/List;)V

    .line 31
    iput-object v12, v0, Lcom/android/systemui/statusbar/phone/SystemBarAttributesListener;->lastSystemBarAttributesParams:Lcom/android/systemui/statusbar/phone/SystemBarAttributesParams;

    .line 34
    array-length v1, v11

    .line 36
    const/4 v3, 0x1

    .line 37
    if-nez v1, :cond_0

    .line 38
    move v1, v3

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    const/4 v1, 0x0

    .line 42
    :goto_0
    xor-int/2addr v1, v3

    .line 43
    if-eqz v1, :cond_16

    .line 44
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    move-result-object v1

    .line 49
    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/SystemBarAttributesListener;->letterboxAppearanceCalculator:Lcom/android/systemui/statusbar/phone/LetterboxAppearanceCalculator;

    .line 50
    iput-object v1, v5, Lcom/android/systemui/statusbar/phone/LetterboxAppearanceCalculator;->lastAppearance:Ljava/lang/Integer;

    .line 52
    iput-object v10, v5, Lcom/android/systemui/statusbar/phone/LetterboxAppearanceCalculator;->lastAppearanceRegions:[Lcom/android/internal/view/AppearanceRegion;

    .line 54
    iput-object v11, v5, Lcom/android/systemui/statusbar/phone/LetterboxAppearanceCalculator;->lastLetterboxes:[Lcom/android/internal/statusbar/LetterboxDetails;

    .line 56
    iget-object v1, v5, Lcom/android/systemui/statusbar/phone/LetterboxAppearanceCalculator;->letterboxBackgroundProvider:Lcom/android/systemui/statusbar/phone/LetterboxBackgroundProvider;

    .line 58
    iget-boolean v6, v1, Lcom/android/systemui/statusbar/phone/LetterboxBackgroundProvider;->isLetterboxBackgroundMultiColored:Z

    .line 60
    if-eqz v6, :cond_1

    .line 62
    goto/16 :goto_a

    .line 64
    :cond_1
    array-length v6, v11

    .line 66
    const/4 v7, 0x0

    .line 67
    :goto_1
    if-ge v7, v6, :cond_b

    .line 68
    aget-object v8, v11, v7

    .line 70
    invoke-virtual {v8}, Lcom/android/internal/statusbar/LetterboxDetails;->getLetterboxInnerBounds()Landroid/graphics/Rect;

    .line 72
    move-result-object v9

    .line 75
    iget-object v12, v5, Lcom/android/systemui/statusbar/phone/LetterboxAppearanceCalculator;->statusBarBoundsProvider:Lcom/android/systemui/statusbar/phone/StatusBarBoundsProvider;

    .line 76
    if-eqz v12, :cond_2

    .line 78
    iget-object v12, v12, Lcom/android/systemui/statusbar/phone/StatusBarBoundsProvider;->startSideContent:Landroid/view/View;

    .line 80
    invoke-static {v12}, Lcom/android/systemui/util/ConvenienceExtensionsKt;->getBoundsOnScreen(Landroid/view/View;)Landroid/graphics/Rect;

    .line 82
    move-result-object v12

    .line 85
    goto :goto_2

    .line 86
    :cond_2
    new-instance v12, Landroid/graphics/Rect;

    .line 87
    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    .line 89
    :goto_2
    invoke-virtual {v9, v12}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    .line 92
    move-result v13

    .line 95
    if-nez v13, :cond_4

    .line 96
    invoke-virtual {v12, v9}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    .line 98
    move-result v13

    .line 101
    if-eqz v13, :cond_3

    .line 102
    goto :goto_3

    .line 104
    :cond_3
    iget v13, v12, Landroid/graphics/Rect;->left:I

    .line 105
    iget v14, v12, Landroid/graphics/Rect;->top:I

    .line 107
    iget v15, v12, Landroid/graphics/Rect;->right:I

    .line 109
    iget v12, v12, Landroid/graphics/Rect;->bottom:I

    .line 111
    invoke-virtual {v9, v13, v14, v15, v12}, Landroid/graphics/Rect;->intersects(IIII)Z

    .line 113
    move-result v9

    .line 116
    goto :goto_4

    .line 117
    :cond_4
    :goto_3
    const/4 v9, 0x0

    .line 118
    :goto_4
    if-nez v9, :cond_9

    .line 119
    invoke-virtual {v8}, Lcom/android/internal/statusbar/LetterboxDetails;->getLetterboxInnerBounds()Landroid/graphics/Rect;

    .line 121
    move-result-object v8

    .line 124
    iget-object v9, v5, Lcom/android/systemui/statusbar/phone/LetterboxAppearanceCalculator;->statusBarBoundsProvider:Lcom/android/systemui/statusbar/phone/StatusBarBoundsProvider;

    .line 125
    if-eqz v9, :cond_5

    .line 127
    iget-object v9, v9, Lcom/android/systemui/statusbar/phone/StatusBarBoundsProvider;->endSideContent:Landroid/view/View;

    .line 129
    invoke-static {v9}, Lcom/android/systemui/util/ConvenienceExtensionsKt;->getBoundsOnScreen(Landroid/view/View;)Landroid/graphics/Rect;

    .line 131
    move-result-object v9

    .line 134
    goto :goto_5

    .line 135
    :cond_5
    new-instance v9, Landroid/graphics/Rect;

    .line 136
    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    .line 138
    :goto_5
    invoke-virtual {v8, v9}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    .line 141
    move-result v12

    .line 144
    if-nez v12, :cond_7

    .line 145
    invoke-virtual {v9, v8}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    .line 147
    move-result v12

    .line 150
    if-eqz v12, :cond_6

    .line 151
    goto :goto_6

    .line 153
    :cond_6
    iget v12, v9, Landroid/graphics/Rect;->left:I

    .line 154
    iget v13, v9, Landroid/graphics/Rect;->top:I

    .line 156
    iget v14, v9, Landroid/graphics/Rect;->right:I

    .line 158
    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    .line 160
    invoke-virtual {v8, v12, v13, v14, v9}, Landroid/graphics/Rect;->intersects(IIII)Z

    .line 162
    move-result v8

    .line 165
    goto :goto_7

    .line 166
    :cond_7
    :goto_6
    const/4 v8, 0x0

    .line 167
    :goto_7
    if-eqz v8, :cond_8

    .line 168
    goto :goto_8

    .line 170
    :cond_8
    const/4 v8, 0x0

    .line 171
    goto :goto_9

    .line 172
    :cond_9
    :goto_8
    move v8, v3

    .line 173
    :goto_9
    if-eqz v8, :cond_a

    .line 174
    :goto_a
    move v6, v3

    .line 176
    goto :goto_b

    .line 177
    :cond_a
    add-int/lit8 v7, v7, 0x1

    .line 178
    goto :goto_1

    .line 180
    :cond_b
    const/4 v6, 0x0

    .line 181
    :goto_b
    if-eqz v6, :cond_c

    .line 182
    new-instance v1, Lcom/android/systemui/statusbar/phone/LetterboxAppearance;

    .line 184
    or-int/lit8 v4, p2, 0x20

    .line 186
    invoke-direct {v1, v4, v10}, Lcom/android/systemui/statusbar/phone/LetterboxAppearance;-><init>(I[Lcom/android/internal/view/AppearanceRegion;)V

    .line 188
    move v11, v3

    .line 191
    goto/16 :goto_14

    .line 192
    :cond_c
    and-int/lit8 v6, p2, -0x21

    .line 194
    new-instance v7, Ljava/util/ArrayList;

    .line 196
    array-length v8, v10

    .line 198
    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 199
    array-length v8, v10

    .line 202
    const/4 v9, 0x0

    .line 203
    :goto_c
    if-ge v9, v8, :cond_10

    .line 204
    aget-object v12, v10, v9

    .line 206
    array-length v13, v11

    .line 208
    const/4 v14, 0x0

    .line 209
    :goto_d
    if-ge v14, v13, :cond_e

    .line 210
    aget-object v15, v11, v14

    .line 212
    invoke-virtual {v15}, Lcom/android/internal/statusbar/LetterboxDetails;->getLetterboxFullBounds()Landroid/graphics/Rect;

    .line 214
    move-result-object v4

    .line 217
    invoke-virtual {v12}, Lcom/android/internal/view/AppearanceRegion;->getBounds()Landroid/graphics/Rect;

    .line 218
    move-result-object v2

    .line 221
    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 222
    move-result v2

    .line 225
    if-eqz v2, :cond_d

    .line 226
    goto :goto_e

    .line 228
    :cond_d
    add-int/lit8 v14, v14, 0x1

    .line 229
    goto :goto_d

    .line 231
    :cond_e
    const/4 v15, 0x0

    .line 232
    :goto_e
    if-nez v15, :cond_f

    .line 233
    goto :goto_f

    .line 235
    :cond_f
    new-instance v2, Lcom/android/internal/view/AppearanceRegion;

    .line 236
    invoke-virtual {v12}, Lcom/android/internal/view/AppearanceRegion;->getAppearance()I

    .line 238
    move-result v4

    .line 241
    invoke-virtual {v15}, Lcom/android/internal/statusbar/LetterboxDetails;->getLetterboxInnerBounds()Landroid/graphics/Rect;

    .line 242
    move-result-object v12

    .line 245
    invoke-direct {v2, v4, v12}, Lcom/android/internal/view/AppearanceRegion;-><init>(ILandroid/graphics/Rect;)V

    .line 246
    move-object v12, v2

    .line 249
    :goto_f
    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 250
    add-int/lit8 v9, v9, 0x1

    .line 253
    goto :goto_c

    .line 255
    :cond_10
    new-instance v2, Ljava/util/ArrayList;

    .line 256
    array-length v4, v11

    .line 258
    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 259
    array-length v4, v11

    .line 262
    const/4 v8, 0x0

    .line 263
    :goto_10
    if-ge v8, v4, :cond_15

    .line 264
    aget-object v9, v11, v8

    .line 266
    iget v10, v1, Lcom/android/systemui/statusbar/phone/LetterboxBackgroundProvider;->letterboxBackgroundColor:I

    .line 268
    iget-object v12, v5, Lcom/android/systemui/statusbar/phone/LetterboxAppearanceCalculator;->lightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

    .line 270
    iget v13, v12, Lcom/android/systemui/statusbar/phone/LightBarController;->mLightIconColor:I

    .line 272
    invoke-static {v13, v10}, Lcom/android/internal/util/ContrastColorUtil;->calculateContrast(II)D

    .line 274
    move-result-wide v13

    .line 277
    iget v12, v12, Lcom/android/systemui/statusbar/phone/LightBarController;->mDarkIconColor:I

    .line 278
    invoke-static {v12, v10}, Lcom/android/internal/util/ContrastColorUtil;->calculateContrast(II)D

    .line 280
    move-result-wide v16

    .line 283
    cmpl-double v10, v16, v13

    .line 284
    if-lez v10, :cond_11

    .line 286
    const/16 v10, 0x8

    .line 288
    goto :goto_11

    .line 290
    :cond_11
    const/4 v10, 0x0

    .line 291
    :goto_11
    invoke-virtual {v9}, Lcom/android/internal/statusbar/LetterboxDetails;->getLetterboxInnerBounds()Landroid/graphics/Rect;

    .line 292
    move-result-object v12

    .line 295
    invoke-virtual {v9}, Lcom/android/internal/statusbar/LetterboxDetails;->getLetterboxFullBounds()Landroid/graphics/Rect;

    .line 296
    move-result-object v9

    .line 299
    new-instance v13, Landroid/graphics/Rect;

    .line 300
    iget v14, v9, Landroid/graphics/Rect;->left:I

    .line 302
    iget v15, v9, Landroid/graphics/Rect;->top:I

    .line 304
    iget v3, v9, Landroid/graphics/Rect;->right:I

    .line 306
    move-object/from16 v16, v1

    .line 308
    iget v1, v12, Landroid/graphics/Rect;->top:I

    .line 310
    invoke-direct {v13, v14, v15, v3, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 312
    new-instance v1, Landroid/graphics/Rect;

    .line 315
    iget v3, v9, Landroid/graphics/Rect;->left:I

    .line 317
    iget v14, v9, Landroid/graphics/Rect;->top:I

    .line 319
    iget v15, v12, Landroid/graphics/Rect;->left:I

    .line 321
    move/from16 v17, v4

    .line 323
    iget v4, v9, Landroid/graphics/Rect;->bottom:I

    .line 325
    invoke-direct {v1, v3, v14, v15, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 327
    new-instance v3, Landroid/graphics/Rect;

    .line 330
    iget v4, v12, Landroid/graphics/Rect;->right:I

    .line 332
    iget v14, v9, Landroid/graphics/Rect;->top:I

    .line 334
    iget v15, v9, Landroid/graphics/Rect;->right:I

    .line 336
    iget v11, v9, Landroid/graphics/Rect;->bottom:I

    .line 338
    invoke-direct {v3, v4, v14, v15, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 340
    new-instance v4, Landroid/graphics/Rect;

    .line 343
    iget v11, v9, Landroid/graphics/Rect;->left:I

    .line 345
    iget v12, v12, Landroid/graphics/Rect;->bottom:I

    .line 347
    iget v14, v9, Landroid/graphics/Rect;->right:I

    .line 349
    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    .line 351
    invoke-direct {v4, v11, v12, v14, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 353
    filled-new-array {v1, v13, v3, v4}, [Landroid/graphics/Rect;

    .line 356
    move-result-object v1

    .line 359
    invoke-static {v1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 360
    move-result-object v1

    .line 363
    new-instance v3, Ljava/util/ArrayList;

    .line 364
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 366
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 369
    move-result-object v1

    .line 372
    :cond_12
    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 373
    move-result v4

    .line 376
    if-eqz v4, :cond_13

    .line 377
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 379
    move-result-object v4

    .line 382
    move-object v9, v4

    .line 383
    check-cast v9, Landroid/graphics/Rect;

    .line 384
    invoke-virtual {v9}, Landroid/graphics/Rect;->isEmpty()Z

    .line 386
    move-result v9

    .line 389
    const/4 v11, 0x1

    .line 390
    xor-int/2addr v9, v11

    .line 391
    if-eqz v9, :cond_12

    .line 392
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 394
    goto :goto_12

    .line 397
    :cond_13
    const/4 v11, 0x1

    .line 398
    new-instance v1, Ljava/util/ArrayList;

    .line 399
    invoke-static {v3}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;)I

    .line 401
    move-result v4

    .line 404
    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 405
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 408
    move-result-object v3

    .line 411
    :goto_13
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 412
    move-result v4

    .line 415
    if-eqz v4, :cond_14

    .line 416
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 418
    move-result-object v4

    .line 421
    check-cast v4, Landroid/graphics/Rect;

    .line 422
    new-instance v9, Lcom/android/internal/view/AppearanceRegion;

    .line 424
    invoke-direct {v9, v10, v4}, Lcom/android/internal/view/AppearanceRegion;-><init>(ILandroid/graphics/Rect;)V

    .line 426
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 429
    goto :goto_13

    .line 432
    :cond_14
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 433
    add-int/lit8 v8, v8, 0x1

    .line 436
    move v3, v11

    .line 438
    move-object/from16 v1, v16

    .line 439
    move/from16 v4, v17

    .line 441
    move-object/from16 v11, p8

    .line 443
    goto/16 :goto_10

    .line 445
    :cond_15
    move v11, v3

    .line 447
    invoke-static {v2}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->flatten(Ljava/lang/Iterable;)Ljava/util/List;

    .line 448
    move-result-object v1

    .line 451
    invoke-static {v1, v7}, Lkotlin/collections/CollectionsKt___CollectionsKt;->plus(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/List;

    .line 452
    move-result-object v1

    .line 455
    new-instance v2, Lcom/android/systemui/statusbar/phone/LetterboxAppearance;

    .line 456
    const/4 v3, 0x0

    .line 458
    new-array v4, v3, [Lcom/android/internal/view/AppearanceRegion;

    .line 459
    check-cast v1, Ljava/util/ArrayList;

    .line 461
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 463
    move-result-object v1

    .line 466
    check-cast v1, [Lcom/android/internal/view/AppearanceRegion;

    .line 467
    invoke-direct {v2, v6, v1}, Lcom/android/systemui/statusbar/phone/LetterboxAppearance;-><init>(I[Lcom/android/internal/view/AppearanceRegion;)V

    .line 469
    move-object v1, v2

    .line 472
    :goto_14
    iput-object v1, v5, Lcom/android/systemui/statusbar/phone/LetterboxAppearanceCalculator;->lastLetterboxAppearance:Lcom/android/systemui/statusbar/phone/LetterboxAppearance;

    .line 473
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/SystemBarAttributesListener;->lastLetterboxAppearance:Lcom/android/systemui/statusbar/phone/LetterboxAppearance;

    .line 475
    new-instance v2, Lkotlin/Pair;

    .line 477
    iget v3, v1, Lcom/android/systemui/statusbar/phone/LetterboxAppearance;->appearance:I

    .line 479
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 481
    move-result-object v3

    .line 484
    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/LetterboxAppearance;->appearanceRegions:[Lcom/android/internal/view/AppearanceRegion;

    .line 485
    invoke-direct {v2, v3, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 487
    goto :goto_15

    .line 490
    :cond_16
    move v11, v3

    .line 491
    const/4 v1, 0x0

    .line 492
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/SystemBarAttributesListener;->lastLetterboxAppearance:Lcom/android/systemui/statusbar/phone/LetterboxAppearance;

    .line 493
    new-instance v2, Lkotlin/Pair;

    .line 495
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 497
    move-result-object v1

    .line 500
    invoke-direct {v2, v1, v10}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 501
    :goto_15
    invoke-virtual {v2}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    .line 504
    move-result-object v1

    .line 507
    check-cast v1, Ljava/lang/Number;

    .line 508
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 510
    move-result v1

    .line 513
    invoke-virtual {v2}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    .line 514
    move-result-object v2

    .line 517
    check-cast v2, [Lcom/android/internal/view/AppearanceRegion;

    .line 518
    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/SystemBarAttributesListener;->centralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 520
    check-cast v3, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 522
    iget v4, v3, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mAppearance:I

    .line 524
    if-eq v4, v1, :cond_18

    .line 526
    iput v1, v3, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mAppearance:I

    .line 528
    iget-boolean v4, v3, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mTransientShown:Z

    .line 530
    invoke-virtual {v3, v1, v4}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->barMode(IZ)I

    .line 532
    move-result v4

    .line 535
    iget v5, v3, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStatusBarMode:I

    .line 536
    iget-object v6, v3, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mAutoHideController:Lcom/android/systemui/statusbar/phone/AutoHideController;

    .line 538
    if-eq v5, v4, :cond_17

    .line 540
    iput v4, v3, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStatusBarMode:I

    .line 542
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->checkBarModes()V

    .line 544
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/AutoHideController;->touchAutoHide()V

    .line 547
    move v3, v11

    .line 550
    goto :goto_16

    .line 551
    :cond_17
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/AutoHideController;->touchAutoHide()V

    .line 552
    :cond_18
    const/4 v3, 0x0

    .line 555
    :goto_16
    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/SystemBarAttributesListener;->lightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

    .line 556
    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/SystemBarAttributesListener;->centralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 558
    check-cast v5, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 560
    iget v5, v5, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStatusBarMode:I

    .line 562
    move/from16 v6, p4

    .line 564
    invoke-virtual {v4, v2, v3, v5, v6}, Lcom/android/systemui/statusbar/phone/LightBarController;->onStatusBarAppearanceChanged([Lcom/android/internal/view/AppearanceRegion;ZIZ)V

    .line 566
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/SystemBarAttributesListener;->centralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 569
    check-cast v2, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 571
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 573
    new-instance v3, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda13;

    .line 576
    const/4 v4, 0x0

    .line 578
    invoke-direct {v3, v2, v4}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda13;-><init>(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;I)V

    .line 579
    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mBubblesOptional:Ljava/util/Optional;

    .line 582
    invoke-virtual {v2, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 584
    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/SystemBarAttributesListener;->statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 587
    check-cast v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    .line 589
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 591
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    .line 594
    move-result v2

    .line 597
    and-int v2, v2, p6

    .line 598
    if-eqz v2, :cond_1a

    .line 600
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    .line 602
    move-result v2

    .line 605
    and-int v2, v2, p6

    .line 606
    if-nez v2, :cond_19

    .line 608
    goto :goto_17

    .line 610
    :cond_19
    move v3, v4

    .line 611
    goto :goto_18

    .line 612
    :cond_1a
    :goto_17
    move v3, v11

    .line 613
    :goto_18
    iget-boolean v2, v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mIsFullscreen:Z

    .line 614
    if-eq v2, v3, :cond_1c

    .line 616
    iput-boolean v3, v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mIsFullscreen:Z

    .line 618
    iget-object v2, v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mListeners:Ljava/util/ArrayList;

    .line 620
    monitor-enter v2

    .line 622
    :try_start_0
    new-instance v5, Ljava/util/ArrayList;

    .line 623
    iget-object v0, v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mListeners:Ljava/util/ArrayList;

    .line 625
    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 627
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 630
    move-result-object v0

    .line 633
    :goto_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 634
    move-result v5

    .line 637
    if-eqz v5, :cond_1b

    .line 638
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 640
    move-result-object v5

    .line 643
    check-cast v5, Lcom/android/systemui/statusbar/SysuiStatusBarStateController$RankedListener;

    .line 644
    iget-object v5, v5, Lcom/android/systemui/statusbar/SysuiStatusBarStateController$RankedListener;->mListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

    .line 646
    invoke-interface {v5, v3}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;->onFullscreenStateChanged(Z)V

    .line 648
    goto :goto_19

    .line 651
    :cond_1b
    monitor-exit v2

    .line 652
    goto :goto_1a

    .line 653
    :catchall_0
    move-exception v0

    .line 654
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 655
    throw v0

    .line 656
    :cond_1c
    :goto_1a
    sget-boolean v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->DEBUG_IMMERSIVE_APPS:Z

    .line 657
    if-eqz v0, :cond_1f

    .line 659
    and-int/lit8 v0, v1, 0x4

    .line 661
    if-eqz v0, :cond_1d

    .line 663
    move v2, v11

    .line 665
    goto :goto_1b

    .line 666
    :cond_1d
    move v2, v4

    .line 667
    :goto_1b
    const-class v0, Landroid/view/InsetsFlags;

    .line 668
    const-string v1, "behavior"

    .line 670
    move/from16 v3, p5

    .line 672
    invoke-static {v0, v1, v3}, Landroid/view/ViewDebug;->flagsToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    .line 674
    move-result-object v0

    .line 677
    invoke-static/range {p6 .. p6}, Landroid/view/WindowInsets$Type;->toString(I)Ljava/lang/String;

    .line 678
    move-result-object v1

    .line 681
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 682
    move-result v3

    .line 685
    if-eqz v3, :cond_1e

    .line 686
    const-string v1, "none"

    .line 688
    :cond_1e
    const-string v3, "SbStateController"

    .line 690
    new-instance v4, Ljava/lang/StringBuilder;

    .line 692
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 694
    move-object/from16 v5, p7

    .line 697
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 699
    const-string v5, " dim="

    .line 702
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 704
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 707
    const-string v2, " behavior="

    .line 710
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 712
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 715
    const-string v0, " requested visible types: "

    .line 718
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 720
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 723
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 726
    move-result-object v0

    .line 729
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    :cond_1f
    return-void
    .line 733
.end method
