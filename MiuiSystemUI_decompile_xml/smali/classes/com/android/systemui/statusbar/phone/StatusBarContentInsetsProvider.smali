.class public final Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/CallbackController;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field public final configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field public final context:Landroid/content/Context;

.field public final insetsCache:Landroid/util/LruCache;

.field public final isPrivacyDotEnabled$delegate:Lkotlin/Lazy;

.field public final listeners:Ljava/util/Set;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/dump/DumpManager;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->context:Landroid/content/Context;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 7
    new-instance p1, Landroid/util/LruCache;

    .line 9
    const/16 v0, 0x10

    .line 11
    invoke-direct {p1, v0}, Landroid/util/LruCache;-><init>(I)V

    .line 13
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->insetsCache:Landroid/util/LruCache;

    .line 16
    new-instance p1, Ljava/util/LinkedHashSet;

    .line 18
    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->listeners:Ljava/util/Set;

    .line 23
    new-instance p1, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider$isPrivacyDotEnabled$2;

    .line 25
    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider$isPrivacyDotEnabled$2;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;)V

    .line 27
    invoke-static {p1}, Lkotlin/LazyKt__LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 30
    move-result-object p1

    .line 33
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->isPrivacyDotEnabled$delegate:Lkotlin/Lazy;

    .line 34
    check-cast p2, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    .line 36
    invoke-virtual {p2, p0}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 38
    sget-object p1, Lcom/android/systemui/dump/DumpPriority;->CRITICAL:Lcom/android/systemui/dump/DumpPriority;

    .line 41
    const-string p2, "StatusBarInsetsProvider"

    .line 43
    invoke-virtual {p3, p2, p0, p1}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;Lcom/android/systemui/dump/DumpPriority;)V

    .line 45
    return-void
    .line 48
.end method


# virtual methods
.method public final addCallback(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/systemui/statusbar/window/StatusBarWindowController$$ExternalSyntheticLambda2;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->listeners:Ljava/util/Set;

    .line 4
    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6
    return-void
    .line 9
.end method

.method public final currentRotationHasCornerCutout()Z
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->context:Landroid/content/Context;

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    .line 4
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/view/Display;->getCutout()Landroid/view/DisplayCutout;

    .line 8
    move-result-object v0

    .line 11
    const/4 v1, 0x0

    .line 12
    if-nez v0, :cond_0

    .line 13
    return v1

    .line 15
    :cond_0
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getBoundingRectTop()Landroid/graphics/Rect;

    .line 16
    move-result-object v0

    .line 19
    new-instance v2, Landroid/graphics/Point;

    .line 20
    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 22
    invoke-virtual {p0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    .line 25
    move-result-object p0

    .line 28
    invoke-virtual {p0, v2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 29
    iget p0, v0, Landroid/graphics/Rect;->left:I

    .line 32
    if-lez p0, :cond_1

    .line 34
    iget p0, v0, Landroid/graphics/Rect;->right:I

    .line 36
    iget v0, v2, Landroid/graphics/Point;->x:I

    .line 38
    if-lt p0, v0, :cond_2

    .line 40
    :cond_1
    const/4 v1, 0x1

    .line 42
    :cond_2
    return v1
    .line 43
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->insetsCache:Landroid/util/LruCache;

    .line 2
    invoke-virtual {p0}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    .line 4
    move-result-object p2

    .line 7
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 8
    move-result-object p2

    .line 11
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 12
    move-result-object p2

    .line 15
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    move-result-object v0

    .line 25
    check-cast v0, Ljava/util/Map$Entry;

    .line 26
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 28
    move-result-object v1

    .line 31
    check-cast v1, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider$CacheKey;

    .line 32
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 34
    move-result-object v0

    .line 37
    check-cast v0, Landroid/graphics/Rect;

    .line 38
    new-instance v2, Ljava/lang/StringBuilder;

    .line 40
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 45
    const-string v1, " -> "

    .line 48
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    move-result-object v0

    .line 59
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 60
    goto :goto_0

    .line 63
    :cond_0
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 64
    return-void
    .line 67
.end method

.method public final getAndSetCalculatedAreaForRotation(ILandroid/view/DisplayCutout;Landroid/content/res/Resources;Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider$CacheKey;)Landroid/graphics/Rect;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    move/from16 v1, p1

    .line 4
    move-object/from16 v2, p3

    .line 6
    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->context:Landroid/content/Context;

    .line 8
    invoke-static {v3}, Lcom/android/systemui/util/leak/RotationUtils;->getExactRotation(Landroid/content/Context;)I

    .line 10
    move-result v4

    .line 13
    const v5, 0x7f07102c    # @dimen/rounded_corner_content_padding '@android:dimen/select_dialog_drawable_padding_start_material'

    .line 14
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 17
    move-result v5

    .line 20
    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->isPrivacyDotEnabled$delegate:Lkotlin/Lazy;

    .line 21
    invoke-interface {v6}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 23
    move-result-object v7

    .line 26
    check-cast v7, Ljava/lang/Boolean;

    .line 27
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    .line 29
    move-result v7

    .line 32
    const/4 v8, 0x0

    .line 33
    if-eqz v7, :cond_0

    .line 34
    const v7, 0x7f070e33    # @dimen/ongoing_appops_dot_min_padding '0.0dp'

    .line 36
    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 39
    move-result v7

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    move v7, v8

    .line 44
    :goto_0
    invoke-interface {v6}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 45
    move-result-object v6

    .line 48
    check-cast v6, Ljava/lang/Boolean;

    .line 49
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    .line 51
    move-result v6

    .line 54
    if-eqz v6, :cond_1

    .line 55
    const v6, 0x7f070e32    # @dimen/ongoing_appops_dot_diameter '6.5454dp'

    .line 57
    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 60
    move-result v2

    .line 63
    goto :goto_1

    .line 64
    :cond_1
    move v2, v8

    .line 65
    :goto_1
    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 66
    check-cast v6, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    .line 68
    iget v9, v6, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->layoutDirection:I

    .line 70
    const/4 v10, 0x1

    .line 72
    if-ne v9, v10, :cond_2

    .line 73
    move v9, v10

    .line 75
    goto :goto_2

    .line 76
    :cond_2
    move v9, v8

    .line 77
    :goto_2
    if-eqz v9, :cond_3

    .line 78
    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    .line 80
    move-result v7

    .line 83
    move/from16 v18, v7

    .line 84
    move v7, v5

    .line 86
    move/from16 v5, v18

    .line 87
    goto :goto_3

    .line 89
    :cond_3
    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    .line 90
    move-result v7

    .line 93
    :goto_3
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 94
    move-result-object v9

    .line 97
    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 98
    move-result-object v9

    .line 101
    iget-object v9, v9, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 102
    invoke-virtual {v9}, Landroid/app/WindowConfiguration;->getMaxBounds()Landroid/graphics/Rect;

    .line 104
    move-result-object v9

    .line 107
    invoke-static {v3, v1}, Lcom/android/internal/policy/SystemBarUtils;->getStatusBarHeightForRotation(Landroid/content/Context;I)I

    .line 108
    move-result v3

    .line 111
    iget v6, v6, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->layoutDirection:I

    .line 112
    if-ne v6, v10, :cond_4

    .line 114
    move v6, v10

    .line 116
    goto :goto_4

    .line 117
    :cond_4
    move v6, v8

    .line 118
    :goto_4
    const/4 v11, 0x2

    .line 119
    if-eqz v4, :cond_5

    .line 120
    if-eq v4, v11, :cond_5

    .line 122
    new-instance v12, Landroid/graphics/Rect;

    .line 124
    iget v13, v9, Landroid/graphics/Rect;->bottom:I

    .line 126
    iget v14, v9, Landroid/graphics/Rect;->right:I

    .line 128
    invoke-direct {v12, v8, v8, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 130
    goto :goto_5

    .line 133
    :cond_5
    move-object v12, v9

    .line 134
    :goto_5
    iget v13, v12, Landroid/graphics/Rect;->right:I

    .line 135
    iget v12, v12, Landroid/graphics/Rect;->bottom:I

    .line 137
    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    .line 139
    move-result v14

    .line 142
    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    .line 143
    move-result v9

    .line 146
    if-eq v1, v10, :cond_7

    .line 147
    const/4 v15, 0x3

    .line 149
    if-ne v1, v15, :cond_6

    .line 150
    goto :goto_6

    .line 152
    :cond_6
    move v15, v8

    .line 153
    goto :goto_7

    .line 154
    :cond_7
    :goto_6
    move v15, v10

    .line 155
    :goto_7
    if-eqz v15, :cond_8

    .line 156
    move v13, v12

    .line 158
    :cond_8
    if-eqz p2, :cond_9

    .line 159
    invoke-virtual/range {p2 .. p2}, Landroid/view/DisplayCutout;->getBoundingRects()Ljava/util/List;

    .line 161
    move-result-object v12

    .line 164
    goto :goto_8

    .line 165
    :cond_9
    const/4 v12, 0x0

    .line 166
    :goto_8
    if-eqz v12, :cond_21

    .line 167
    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    .line 169
    move-result v15

    .line 172
    if-eqz v15, :cond_a

    .line 173
    goto/16 :goto_14

    .line 175
    :cond_a
    sub-int/2addr v4, v1

    .line 177
    if-gez v4, :cond_b

    .line 178
    add-int/lit8 v4, v4, 0x4

    .line 180
    :cond_b
    new-instance v1, Landroid/util/Pair;

    .line 182
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 184
    move-result-object v15

    .line 187
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 188
    move-result-object v8

    .line 191
    invoke-direct {v1, v15, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 192
    iget-object v8, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 195
    check-cast v8, Ljava/lang/Integer;

    .line 197
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 199
    check-cast v1, Ljava/lang/Integer;

    .line 201
    if-eqz v4, :cond_e

    .line 203
    if-eq v4, v10, :cond_d

    .line 205
    if-eq v4, v11, :cond_c

    .line 207
    new-instance v15, Landroid/graphics/Rect;

    .line 209
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 211
    move-result v17

    .line 214
    sub-int v11, v17, v3

    .line 215
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 217
    move-result v8

    .line 220
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 221
    move-result v1

    .line 224
    const/4 v10, 0x0

    .line 225
    invoke-direct {v15, v11, v10, v8, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 226
    goto :goto_9

    .line 229
    :cond_c
    const/4 v10, 0x0

    .line 230
    new-instance v15, Landroid/graphics/Rect;

    .line 231
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 233
    move-result v11

    .line 236
    sub-int/2addr v11, v3

    .line 237
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 238
    move-result v8

    .line 241
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 242
    move-result v1

    .line 245
    invoke-direct {v15, v10, v11, v8, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 246
    goto :goto_9

    .line 249
    :cond_d
    const/4 v10, 0x0

    .line 250
    new-instance v15, Landroid/graphics/Rect;

    .line 251
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 253
    move-result v1

    .line 256
    invoke-direct {v15, v10, v10, v3, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 257
    goto :goto_9

    .line 260
    :cond_e
    const/4 v10, 0x0

    .line 261
    new-instance v15, Landroid/graphics/Rect;

    .line 262
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 264
    move-result v1

    .line 267
    invoke-direct {v15, v10, v10, v1, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 268
    :goto_9
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 271
    move-result-object v1

    .line 274
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 275
    move-result v8

    .line 278
    if-eqz v8, :cond_20

    .line 279
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 281
    move-result-object v8

    .line 284
    check-cast v8, Landroid/graphics/Rect;

    .line 285
    if-ge v14, v9, :cond_f

    .line 287
    iget v11, v8, Landroid/graphics/Rect;->top:I

    .line 289
    iget v12, v8, Landroid/graphics/Rect;->bottom:I

    .line 291
    invoke-virtual {v15, v10, v11, v14, v12}, Landroid/graphics/Rect;->intersects(IIII)Z

    .line 293
    move-result v16

    .line 296
    move/from16 v10, v16

    .line 297
    goto :goto_b

    .line 299
    :cond_f
    if-le v14, v9, :cond_10

    .line 300
    iget v11, v8, Landroid/graphics/Rect;->left:I

    .line 302
    iget v12, v8, Landroid/graphics/Rect;->right:I

    .line 304
    invoke-virtual {v15, v11, v10, v12, v9}, Landroid/graphics/Rect;->intersects(IIII)Z

    .line 306
    move-result v11

    .line 309
    move v10, v11

    .line 310
    goto :goto_b

    .line 311
    :cond_10
    const/4 v10, 0x0

    .line 312
    :goto_b
    if-nez v10, :cond_11

    .line 313
    goto :goto_f

    .line 315
    :cond_11
    if-eqz v4, :cond_14

    .line 316
    const/4 v10, 0x1

    .line 318
    if-eq v4, v10, :cond_13

    .line 319
    const/4 v10, 0x2

    .line 321
    if-eq v4, v10, :cond_12

    .line 322
    iget v10, v8, Landroid/graphics/Rect;->top:I

    .line 324
    if-gtz v10, :cond_15

    .line 326
    goto :goto_c

    .line 328
    :cond_12
    iget v10, v8, Landroid/graphics/Rect;->right:I

    .line 329
    if-lt v10, v14, :cond_15

    .line 331
    goto :goto_c

    .line 333
    :cond_13
    iget v10, v8, Landroid/graphics/Rect;->bottom:I

    .line 334
    if-lt v10, v9, :cond_15

    .line 336
    goto :goto_c

    .line 338
    :cond_14
    iget v10, v8, Landroid/graphics/Rect;->left:I

    .line 339
    if-gtz v10, :cond_15

    .line 341
    :goto_c
    const/4 v10, 0x1

    .line 343
    goto :goto_d

    .line 344
    :cond_15
    const/4 v10, 0x0

    .line 345
    :goto_d
    if-eqz v10, :cond_19

    .line 346
    if-eqz v4, :cond_16

    .line 348
    const/4 v10, 0x2

    .line 350
    if-eq v4, v10, :cond_16

    .line 351
    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    .line 353
    move-result v8

    .line 356
    goto :goto_e

    .line 357
    :cond_16
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    .line 358
    move-result v8

    .line 361
    :goto_e
    if-nez v6, :cond_17

    .line 362
    add-int/2addr v8, v2

    .line 364
    :cond_17
    invoke-static {v8, v5}, Ljava/lang/Math;->max(II)I

    .line 365
    move-result v5

    .line 368
    :goto_f
    const/4 v10, 0x1

    .line 369
    :cond_18
    const/4 v11, 0x2

    .line 370
    goto :goto_13

    .line 371
    :cond_19
    if-eqz v4, :cond_1c

    .line 372
    const/4 v10, 0x1

    .line 374
    if-eq v4, v10, :cond_1b

    .line 375
    const/4 v11, 0x2

    .line 377
    if-eq v4, v11, :cond_1a

    .line 378
    iget v11, v8, Landroid/graphics/Rect;->bottom:I

    .line 380
    if-lt v11, v9, :cond_1d

    .line 382
    goto :goto_10

    .line 384
    :cond_1a
    iget v11, v8, Landroid/graphics/Rect;->left:I

    .line 385
    if-gtz v11, :cond_1d

    .line 387
    goto :goto_10

    .line 389
    :cond_1b
    iget v11, v8, Landroid/graphics/Rect;->top:I

    .line 390
    if-gtz v11, :cond_1d

    .line 392
    goto :goto_10

    .line 394
    :cond_1c
    const/4 v10, 0x1

    .line 395
    iget v11, v8, Landroid/graphics/Rect;->right:I

    .line 396
    if-lt v11, v14, :cond_1d

    .line 398
    :goto_10
    move v11, v10

    .line 400
    goto :goto_11

    .line 401
    :cond_1d
    const/4 v11, 0x0

    .line 402
    :goto_11
    if-eqz v11, :cond_18

    .line 403
    const/4 v11, 0x2

    .line 405
    if-eqz v4, :cond_1e

    .line 406
    if-eq v4, v11, :cond_1e

    .line 408
    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    .line 410
    move-result v8

    .line 413
    goto :goto_12

    .line 414
    :cond_1e
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    .line 415
    move-result v8

    .line 418
    :goto_12
    if-eqz v6, :cond_1f

    .line 419
    add-int/2addr v8, v2

    .line 421
    :cond_1f
    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    .line 422
    move-result v7

    .line 425
    :goto_13
    const/4 v10, 0x0

    .line 426
    goto/16 :goto_a

    .line 427
    :cond_20
    new-instance v1, Landroid/graphics/Rect;

    .line 429
    sub-int/2addr v13, v7

    .line 431
    const/4 v2, 0x0

    .line 432
    invoke-direct {v1, v5, v2, v13, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 433
    goto :goto_15

    .line 436
    :cond_21
    :goto_14
    move v2, v8

    .line 437
    new-instance v1, Landroid/graphics/Rect;

    .line 438
    sub-int/2addr v13, v7

    .line 440
    invoke-direct {v1, v5, v2, v13, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 441
    :goto_15
    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->insetsCache:Landroid/util/LruCache;

    .line 444
    move-object/from16 v2, p4

    .line 446
    invoke-virtual {v0, v2, v1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    return-object v1
    .line 451
.end method

.method public final getBoundingRectForPrivacyChipForRotation(ILandroid/view/DisplayCutout;)Landroid/graphics/Rect;
    .locals 1

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->getCacheKey(ILandroid/view/DisplayCutout;)Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider$CacheKey;

    .line 2
    move-result-object p2

    .line 5
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->insetsCache:Landroid/util/LruCache;

    .line 6
    invoke-virtual {v0, p2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    move-result-object p2

    .line 11
    check-cast p2, Landroid/graphics/Rect;

    .line 12
    if-nez p2, :cond_0

    .line 14
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->getStatusBarContentAreaForRotation(I)Landroid/graphics/Rect;

    .line 16
    move-result-object p2

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->context:Landroid/content/Context;

    .line 20
    invoke-static {p1, v0}, Lcom/android/systemui/util/leak/RotationUtils;->getResourcesForRotation(ILandroid/content/Context;)Landroid/content/res/Resources;

    .line 22
    move-result-object p1

    .line 25
    const v0, 0x7f070e32    # @dimen/ongoing_appops_dot_diameter '6.5454dp'

    .line 26
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 29
    move-result p1

    .line 32
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 33
    check-cast p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    .line 35
    iget p0, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->layoutDirection:I

    .line 37
    const/4 v0, 0x1

    .line 39
    if-ne p0, v0, :cond_1

    .line 40
    move p0, v0

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    const/4 p0, 0x0

    .line 44
    :goto_0
    xor-int/2addr p0, v0

    .line 45
    invoke-static {p2, p1, p1, p0}, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProviderKt;->getPrivacyChipBoundingRectForInsets(Landroid/graphics/Rect;IIZ)Landroid/graphics/Rect;

    .line 46
    move-result-object p0

    .line 49
    return-object p0
    .line 50
.end method

.method public final getCacheKey(ILandroid/view/DisplayCutout;)Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider$CacheKey;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider$CacheKey;

    .line 2
    new-instance v1, Landroid/graphics/Rect;

    .line 4
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->context:Landroid/content/Context;

    .line 6
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 8
    move-result-object p0

    .line 11
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 12
    move-result-object p0

    .line 15
    iget-object p0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 16
    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getMaxBounds()Landroid/graphics/Rect;

    .line 18
    move-result-object p0

    .line 21
    invoke-direct {v1, p0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 22
    invoke-direct {v0, p1, v1, p2}, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider$CacheKey;-><init>(ILandroid/graphics/Rect;Landroid/view/DisplayCutout;)V

    .line 25
    return-object v0
    .line 28
.end method

.method public final getStatusBarContentAreaForRotation(I)Landroid/graphics/Rect;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->context:Landroid/content/Context;

    .line 2
    invoke-virtual {v0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    .line 4
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Landroid/view/Display;->getCutout()Landroid/view/DisplayCutout;

    .line 8
    move-result-object v1

    .line 11
    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->getCacheKey(ILandroid/view/DisplayCutout;)Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider$CacheKey;

    .line 12
    move-result-object v2

    .line 15
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->insetsCache:Landroid/util/LruCache;

    .line 16
    invoke-virtual {v3, v2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    move-result-object v3

    .line 21
    check-cast v3, Landroid/graphics/Rect;

    .line 22
    if-nez v3, :cond_0

    .line 24
    invoke-static {p1, v0}, Lcom/android/systemui/util/leak/RotationUtils;->getResourcesForRotation(ILandroid/content/Context;)Landroid/content/res/Resources;

    .line 26
    move-result-object v0

    .line 29
    invoke-virtual {p0, p1, v1, v0, v2}, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->getAndSetCalculatedAreaForRotation(ILandroid/view/DisplayCutout;Landroid/content/res/Resources;Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider$CacheKey;)Landroid/graphics/Rect;

    .line 30
    move-result-object v3

    .line 33
    :cond_0
    return-object v3
    .line 34
.end method

.method public final getStatusBarContentInsetsForCurrentRotation()Landroid/util/Pair;
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->context:Landroid/content/Context;

    .line 2
    invoke-static {v0}, Lcom/android/systemui/util/leak/RotationUtils;->getExactRotation(Landroid/content/Context;)I

    .line 4
    move-result v1

    .line 7
    const-wide/16 v2, 0x1000

    .line 8
    invoke-static {v2, v3}, Landroid/os/Trace;->isTagEnabled(J)Z

    .line 10
    move-result v4

    .line 13
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->insetsCache:Landroid/util/LruCache;

    .line 14
    const/4 v6, 0x2

    .line 16
    if-eqz v4, :cond_3

    .line 17
    const-string v4, "StatusBarContentInsetsProvider.getStatusBarContentInsetsForRotation"

    .line 19
    invoke-static {v2, v3, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 21
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    .line 24
    move-result-object v4

    .line 27
    invoke-virtual {v4}, Landroid/view/Display;->getCutout()Landroid/view/DisplayCutout;

    .line 28
    move-result-object v4

    .line 31
    invoke-virtual {p0, v1, v4}, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->getCacheKey(ILandroid/view/DisplayCutout;)Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider$CacheKey;

    .line 32
    move-result-object v7

    .line 35
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 36
    move-result-object v8

    .line 39
    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 40
    move-result-object v8

    .line 43
    iget-object v8, v8, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 44
    invoke-virtual {v8}, Landroid/app/WindowConfiguration;->getMaxBounds()Landroid/graphics/Rect;

    .line 46
    move-result-object v8

    .line 49
    new-instance v9, Landroid/graphics/Point;

    .line 50
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    .line 52
    move-result v10

    .line 55
    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    .line 56
    move-result v8

    .line 59
    invoke-direct {v9, v10, v8}, Landroid/graphics/Point;-><init>(II)V

    .line 60
    invoke-static {v0}, Lcom/android/systemui/util/leak/RotationUtils;->getExactRotation(Landroid/content/Context;)I

    .line 63
    move-result v8

    .line 66
    if-eqz v8, :cond_0

    .line 67
    if-eq v8, v6, :cond_0

    .line 69
    iget v8, v9, Landroid/graphics/Point;->y:I

    .line 71
    iget v10, v9, Landroid/graphics/Point;->x:I

    .line 73
    iput v10, v9, Landroid/graphics/Point;->y:I

    .line 75
    iput v8, v9, Landroid/graphics/Point;->x:I

    .line 77
    :cond_0
    if-eqz v1, :cond_1

    .line 79
    if-eq v1, v6, :cond_1

    .line 81
    iget v6, v9, Landroid/graphics/Point;->y:I

    .line 83
    goto :goto_0

    .line 85
    :cond_1
    iget v6, v9, Landroid/graphics/Point;->x:I

    .line 86
    :goto_0
    invoke-virtual {v5, v7}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    move-result-object v5

    .line 91
    check-cast v5, Landroid/graphics/Rect;

    .line 92
    if-nez v5, :cond_2

    .line 94
    invoke-static {v1, v0}, Lcom/android/systemui/util/leak/RotationUtils;->getResourcesForRotation(ILandroid/content/Context;)Landroid/content/res/Resources;

    .line 96
    move-result-object v0

    .line 99
    invoke-virtual {p0, v1, v4, v0, v7}, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->getAndSetCalculatedAreaForRotation(ILandroid/view/DisplayCutout;Landroid/content/res/Resources;Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider$CacheKey;)Landroid/graphics/Rect;

    .line 100
    move-result-object v5

    .line 103
    :cond_2
    new-instance p0, Landroid/util/Pair;

    .line 104
    iget v0, v5, Landroid/graphics/Rect;->left:I

    .line 106
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 108
    move-result-object v0

    .line 111
    iget v1, v5, Landroid/graphics/Rect;->right:I

    .line 112
    sub-int/2addr v6, v1

    .line 114
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 115
    move-result-object v1

    .line 118
    invoke-direct {p0, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 122
    goto :goto_2

    .line 125
    :catchall_0
    move-exception p0

    .line 126
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 127
    throw p0

    .line 130
    :cond_3
    invoke-virtual {v0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    .line 131
    move-result-object v2

    .line 134
    invoke-virtual {v2}, Landroid/view/Display;->getCutout()Landroid/view/DisplayCutout;

    .line 135
    move-result-object v2

    .line 138
    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->getCacheKey(ILandroid/view/DisplayCutout;)Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider$CacheKey;

    .line 139
    move-result-object v3

    .line 142
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 143
    move-result-object v4

    .line 146
    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 147
    move-result-object v4

    .line 150
    iget-object v4, v4, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 151
    invoke-virtual {v4}, Landroid/app/WindowConfiguration;->getMaxBounds()Landroid/graphics/Rect;

    .line 153
    move-result-object v4

    .line 156
    new-instance v7, Landroid/graphics/Point;

    .line 157
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    .line 159
    move-result v8

    .line 162
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    .line 163
    move-result v4

    .line 166
    invoke-direct {v7, v8, v4}, Landroid/graphics/Point;-><init>(II)V

    .line 167
    invoke-static {v0}, Lcom/android/systemui/util/leak/RotationUtils;->getExactRotation(Landroid/content/Context;)I

    .line 170
    move-result v4

    .line 173
    if-eqz v4, :cond_4

    .line 174
    if-eq v4, v6, :cond_4

    .line 176
    iget v4, v7, Landroid/graphics/Point;->y:I

    .line 178
    iget v8, v7, Landroid/graphics/Point;->x:I

    .line 180
    iput v8, v7, Landroid/graphics/Point;->y:I

    .line 182
    iput v4, v7, Landroid/graphics/Point;->x:I

    .line 184
    :cond_4
    if-eqz v1, :cond_5

    .line 186
    if-eq v1, v6, :cond_5

    .line 188
    iget v4, v7, Landroid/graphics/Point;->y:I

    .line 190
    goto :goto_1

    .line 192
    :cond_5
    iget v4, v7, Landroid/graphics/Point;->x:I

    .line 193
    :goto_1
    invoke-virtual {v5, v3}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    move-result-object v5

    .line 198
    check-cast v5, Landroid/graphics/Rect;

    .line 199
    if-nez v5, :cond_6

    .line 201
    invoke-static {v1, v0}, Lcom/android/systemui/util/leak/RotationUtils;->getResourcesForRotation(ILandroid/content/Context;)Landroid/content/res/Resources;

    .line 203
    move-result-object v0

    .line 206
    invoke-virtual {p0, v1, v2, v0, v3}, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->getAndSetCalculatedAreaForRotation(ILandroid/view/DisplayCutout;Landroid/content/res/Resources;Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider$CacheKey;)Landroid/graphics/Rect;

    .line 207
    move-result-object v5

    .line 210
    :cond_6
    new-instance p0, Landroid/util/Pair;

    .line 211
    iget v0, v5, Landroid/graphics/Rect;->left:I

    .line 213
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 215
    move-result-object v0

    .line 218
    iget v1, v5, Landroid/graphics/Rect;->right:I

    .line 219
    sub-int/2addr v4, v1

    .line 221
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 222
    move-result-object v1

    .line 225
    invoke-direct {p0, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 226
    :goto_2
    return-object p0
    .line 229
.end method

.method public final onDensityOrFontScaleChanged()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->insetsCache:Landroid/util/LruCache;

    .line 2
    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    .line 4
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->listeners:Ljava/util/Set;

    .line 7
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 9
    move-result-object p0

    .line 12
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v0

    .line 22
    check-cast v0, Lcom/android/systemui/statusbar/window/StatusBarWindowController$$ExternalSyntheticLambda2;

    .line 23
    iget-object v0, v0, Lcom/android/systemui/statusbar/window/StatusBarWindowController$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/statusbar/window/StatusBarWindowController;

    .line 25
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->calculateStatusBarLocationsForAllRotations()V

    .line 27
    goto :goto_0

    .line 30
    :cond_0
    return-void
    .line 31
.end method

.method public final onMaxBoundsChanged()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->listeners:Ljava/util/Set;

    .line 2
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 4
    move-result-object p0

    .line 7
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 17
    check-cast v0, Lcom/android/systemui/statusbar/window/StatusBarWindowController$$ExternalSyntheticLambda2;

    .line 18
    iget-object v0, v0, Lcom/android/systemui/statusbar/window/StatusBarWindowController$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/statusbar/window/StatusBarWindowController;

    .line 20
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->calculateStatusBarLocationsForAllRotations()V

    .line 22
    goto :goto_0

    .line 25
    :cond_0
    return-void
    .line 26
.end method

.method public final onThemeChanged()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->insetsCache:Landroid/util/LruCache;

    .line 2
    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    .line 4
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->listeners:Ljava/util/Set;

    .line 7
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 9
    move-result-object p0

    .line 12
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v0

    .line 22
    check-cast v0, Lcom/android/systemui/statusbar/window/StatusBarWindowController$$ExternalSyntheticLambda2;

    .line 23
    iget-object v0, v0, Lcom/android/systemui/statusbar/window/StatusBarWindowController$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/statusbar/window/StatusBarWindowController;

    .line 25
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->calculateStatusBarLocationsForAllRotations()V

    .line 27
    goto :goto_0

    .line 30
    :cond_0
    return-void
    .line 31
.end method

.method public final removeCallback(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/systemui/statusbar/window/StatusBarWindowController$$ExternalSyntheticLambda2;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->listeners:Ljava/util/Set;

    .line 4
    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 6
    return-void
    .line 9
.end method
