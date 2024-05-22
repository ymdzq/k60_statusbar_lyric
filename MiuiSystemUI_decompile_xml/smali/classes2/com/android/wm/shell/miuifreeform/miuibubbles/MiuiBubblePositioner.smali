.class public final Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubblePositioner;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mAvailableRegion:Landroid/graphics/Rect;

.field public final mBubbleGap:I

.field public final mBubbleRectMap:Landroid/util/ArrayMap;

.field public mBubbleShownPartSize:I

.field public mBubbleSize:I

.field public final mContext:Landroid/content/Context;

.field public final mFreeformRegion:Landroid/graphics/Rect;

.field public final mMinBubbleSpace:I

.field public final mPinHandler:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;

.field public final mScreenRegion:Landroid/graphics/Rect;

.field public final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/WindowManager;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/util/ArrayMap;

    .line 5
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubblePositioner;->mBubbleRectMap:Landroid/util/ArrayMap;

    .line 10
    new-instance v0, Landroid/graphics/Rect;

    .line 12
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubblePositioner;->mScreenRegion:Landroid/graphics/Rect;

    .line 17
    new-instance v0, Landroid/graphics/Rect;

    .line 19
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 21
    iput-object v0, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubblePositioner;->mAvailableRegion:Landroid/graphics/Rect;

    .line 24
    new-instance v0, Landroid/graphics/Rect;

    .line 26
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 28
    iput-object v0, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubblePositioner;->mFreeformRegion:Landroid/graphics/Rect;

    .line 31
    iput-object p1, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubblePositioner;->mContext:Landroid/content/Context;

    .line 33
    iput-object p2, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubblePositioner;->mWindowManager:Landroid/view/WindowManager;

    .line 35
    iput-object p3, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubblePositioner;->mPinHandler:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 39
    move-result-object p2

    .line 42
    const p3, 0x7f0707e1    # @dimen/miui_bubble_space '6.0dp'

    .line 43
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 46
    move-result p2

    .line 49
    iput p2, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubblePositioner;->mMinBubbleSpace:I

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 52
    move-result-object p1

    .line 55
    const p2, 0x7f0707da    # @dimen/miui_bubble_gap '35.0dp'

    .line 56
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 59
    move-result p1

    .line 62
    iput p1, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubblePositioner;->mBubbleGap:I

    .line 63
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubblePositioner;->update()V

    .line 65
    return-void
    .line 68
.end method


# virtual methods
.method public final adjustEdgeToAvoidIntersect(Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble;Landroid/graphics/Rect;ZZLandroid/graphics/Rect;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 4
    move-object/from16 v2, p2

    .line 6
    move/from16 v3, p3

    .line 8
    move/from16 v4, p4

    .line 10
    move-object/from16 v5, p5

    .line 12
    iget v6, v2, Landroid/graphics/Rect;->left:I

    .line 14
    iget-object v8, v0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubblePositioner;->mAvailableRegion:Landroid/graphics/Rect;

    .line 16
    const/4 v9, 0x0

    .line 18
    if-eqz v3, :cond_0

    .line 19
    if-gez v6, :cond_1

    .line 21
    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {v8}, Landroid/graphics/Rect;->centerX()I

    .line 24
    move-result v10

    .line 27
    if-ge v6, v10, :cond_1

    .line 28
    :goto_0
    const/4 v6, 0x1

    .line 30
    goto :goto_1

    .line 31
    :cond_1
    move v6, v9

    .line 32
    :goto_1
    new-instance v10, Ljava/lang/StringBuilder;

    .line 33
    const-string v11, "AETOI: "

    .line 35
    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 40
    const-string v11, " isReload = "

    .line 43
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 48
    const-string v3, " isOnLeft = "

    .line 51
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 56
    const-string v3, " considerOtherBubbles "

    .line 59
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    move-result-object v3

    .line 70
    const-string v10, "MiuiBubblePositioner"

    .line 71
    invoke-static {v10, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object v3, v1, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble;->bubbleEntry:Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiBubbleEntry;

    .line 76
    iget v3, v3, Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiBubbleEntry;->key:I

    .line 78
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 80
    move-result-object v11

    .line 83
    iget-object v12, v0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubblePositioner;->mBubbleRectMap:Landroid/util/ArrayMap;

    .line 84
    invoke-virtual {v12, v11}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 86
    move-result v11

    .line 89
    if-eqz v11, :cond_2

    .line 90
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 92
    move-result-object v3

    .line 95
    invoke-virtual {v12, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    const/4 v3, 0x1

    .line 99
    goto :goto_2

    .line 100
    :cond_2
    move v3, v9

    .line 101
    :goto_2
    iget-object v11, v0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubblePositioner;->mScreenRegion:Landroid/graphics/Rect;

    .line 102
    if-eqz v6, :cond_3

    .line 104
    iget v13, v0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubblePositioner;->mBubbleShownPartSize:I

    .line 106
    iget v14, v2, Landroid/graphics/Rect;->right:I

    .line 108
    sub-int/2addr v13, v14

    .line 110
    invoke-virtual {v2, v13, v9}, Landroid/graphics/Rect;->offset(II)V

    .line 111
    goto :goto_3

    .line 114
    :cond_3
    iget v13, v11, Landroid/graphics/Rect;->right:I

    .line 115
    iget v14, v0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubblePositioner;->mBubbleShownPartSize:I

    .line 117
    sub-int/2addr v13, v14

    .line 119
    iput v13, v2, Landroid/graphics/Rect;->left:I

    .line 120
    iget v14, v0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubblePositioner;->mBubbleSize:I

    .line 122
    add-int/2addr v13, v14

    .line 124
    iput v13, v2, Landroid/graphics/Rect;->right:I

    .line 125
    :goto_3
    iget v13, v2, Landroid/graphics/Rect;->left:I

    .line 127
    iget v14, v2, Landroid/graphics/Rect;->right:I

    .line 129
    if-ne v13, v14, :cond_4

    .line 131
    new-instance v13, Ljava/lang/StringBuilder;

    .line 133
    const-string v14, "adjustEdgeToAvoidIntersect bubbleRect error! mBubbleSize = "

    .line 135
    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 137
    iget v14, v0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubblePositioner;->mBubbleSize:I

    .line 140
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 142
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 145
    move-result-object v13

    .line 148
    invoke-static {v10, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iget v13, v2, Landroid/graphics/Rect;->right:I

    .line 152
    iget v14, v0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubblePositioner;->mBubbleSize:I

    .line 154
    sub-int/2addr v13, v14

    .line 156
    iput v13, v2, Landroid/graphics/Rect;->left:I

    .line 157
    :cond_4
    new-instance v13, Landroid/graphics/Rect;

    .line 159
    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    .line 161
    iget-object v14, v0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubblePositioner;->mContext:Landroid/content/Context;

    .line 164
    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 166
    move-result-object v14

    .line 169
    const-string/jumbo v15, "sidebar_bounds"

    .line 170
    invoke-static {v14, v15}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 173
    move-result-object v14

    .line 176
    if-nez v14, :cond_5

    .line 177
    move-object/from16 v16, v11

    .line 179
    goto/16 :goto_8

    .line 181
    :cond_5
    :try_start_0
    new-instance v15, Lorg/json/JSONArray;

    .line 183
    invoke-direct {v15, v14}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 185
    move v14, v9

    .line 188
    :goto_4
    invoke-virtual {v15}, Lorg/json/JSONArray;->length()I

    .line 189
    move-result v7

    .line 192
    if-ge v14, v7, :cond_9

    .line 193
    invoke-virtual {v15, v14}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    .line 195
    move-result-object v7

    .line 198
    if-eqz v7, :cond_8

    .line 199
    const-string v9, "l"

    .line 201
    move-object/from16 p3, v15

    .line 203
    const/4 v15, -0x1

    .line 205
    invoke-virtual {v7, v9, v15}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 206
    move-result v9

    .line 209
    if-nez v9, :cond_6

    .line 210
    const/4 v15, 0x1

    .line 212
    goto :goto_5

    .line 213
    :cond_6
    const/4 v15, 0x0

    .line 214
    :goto_5
    if-ne v6, v15, :cond_7

    .line 215
    const-string/jumbo v14, "t"

    .line 217
    const/4 v15, -0x1

    .line 220
    invoke-virtual {v7, v14, v15}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 221
    move-result v14
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    move-object/from16 v16, v11

    .line 225
    :try_start_1
    const-string v11, "r"

    .line 227
    invoke-virtual {v7, v11, v15}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 229
    move-result v11

    .line 232
    const-string v1, "b"

    .line 233
    invoke-virtual {v7, v1, v15}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 235
    move-result v1

    .line 238
    invoke-virtual {v13, v9, v14, v11, v1}, Landroid/graphics/Rect;->set(IIII)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 239
    goto :goto_7

    .line 242
    :cond_7
    move-object/from16 v16, v11

    .line 243
    goto :goto_6

    .line 245
    :cond_8
    move-object/from16 v16, v11

    .line 246
    move-object/from16 p3, v15

    .line 248
    :goto_6
    add-int/lit8 v14, v14, 0x1

    .line 250
    move-object/from16 v1, p1

    .line 252
    move-object/from16 v15, p3

    .line 254
    move-object/from16 v11, v16

    .line 256
    const/4 v9, 0x0

    .line 258
    goto :goto_4

    .line 259
    :cond_9
    move-object/from16 v16, v11

    .line 260
    goto :goto_7

    .line 262
    :catch_0
    move-object/from16 v16, v11

    .line 263
    :catch_1
    const-string v1, "getSidebarLineRect"

    .line 265
    invoke-static {v10, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    :goto_7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 270
    const-string v7, "getSidebarLineRect: "

    .line 272
    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 274
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 277
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 280
    move-result-object v1

    .line 283
    invoke-static {v10, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    :goto_8
    new-instance v1, Ljava/util/ArrayList;

    .line 287
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 289
    invoke-virtual {v13}, Landroid/graphics/Rect;->isEmpty()Z

    .line 292
    move-result v7

    .line 295
    if-nez v7, :cond_a

    .line 296
    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 298
    :cond_a
    if-eqz v4, :cond_e

    .line 301
    invoke-virtual {v12}, Landroid/util/ArrayMap;->size()I

    .line 303
    move-result v4

    .line 306
    const/4 v7, 0x0

    .line 307
    :goto_9
    if-ge v7, v4, :cond_e

    .line 308
    invoke-virtual {v12, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 310
    move-result-object v9

    .line 313
    check-cast v9, Landroid/graphics/Rect;

    .line 314
    if-eqz v9, :cond_d

    .line 316
    iget v11, v9, Landroid/graphics/Rect;->left:I

    .line 318
    if-gez v11, :cond_b

    .line 320
    const/4 v11, 0x1

    .line 322
    goto :goto_a

    .line 323
    :cond_b
    const/4 v11, 0x0

    .line 324
    :goto_a
    if-ne v11, v6, :cond_c

    .line 325
    const/4 v11, 0x1

    .line 327
    goto :goto_b

    .line 328
    :cond_c
    const/4 v11, 0x0

    .line 329
    :goto_b
    if-eqz v11, :cond_d

    .line 330
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 332
    :cond_d
    add-int/lit8 v7, v7, 0x1

    .line 335
    goto :goto_9

    .line 337
    :cond_e
    if-eqz v5, :cond_11

    .line 338
    iget v4, v5, Landroid/graphics/Rect;->left:I

    .line 340
    if-gez v4, :cond_f

    .line 342
    const/4 v4, 0x1

    .line 344
    goto :goto_c

    .line 345
    :cond_f
    const/4 v4, 0x0

    .line 346
    :goto_c
    if-ne v4, v6, :cond_10

    .line 347
    const/4 v7, 0x1

    .line 349
    goto :goto_d

    .line 350
    :cond_10
    const/4 v7, 0x0

    .line 351
    :goto_d
    if-eqz v7, :cond_11

    .line 352
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 354
    :cond_11
    new-instance v4, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubblePositioner$$ExternalSyntheticLambda0;

    .line 357
    invoke-direct {v4}, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubblePositioner$$ExternalSyntheticLambda0;-><init>()V

    .line 359
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 362
    new-instance v4, Ljava/lang/StringBuilder;

    .line 365
    const-string v5, "AETOI: sideViewList "

    .line 367
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 369
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 372
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 375
    move-result-object v4

    .line 378
    invoke-static {v10, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    iget v4, v8, Landroid/graphics/Rect;->top:I

    .line 382
    new-instance v5, Ljava/util/ArrayList;

    .line 384
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 386
    const/4 v6, 0x0

    .line 389
    :goto_e
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 390
    move-result v7

    .line 393
    if-ge v6, v7, :cond_13

    .line 394
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 396
    move-result-object v7

    .line 399
    check-cast v7, Landroid/graphics/Rect;

    .line 400
    new-instance v9, Landroid/graphics/Rect;

    .line 402
    iget v11, v2, Landroid/graphics/Rect;->left:I

    .line 404
    iget v13, v2, Landroid/graphics/Rect;->right:I

    .line 406
    iget v14, v7, Landroid/graphics/Rect;->top:I

    .line 408
    iget v15, v0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubblePositioner;->mMinBubbleSpace:I

    .line 410
    sub-int/2addr v14, v15

    .line 412
    move-object/from16 p3, v1

    .line 413
    iget v1, v8, Landroid/graphics/Rect;->bottom:I

    .line 415
    sub-int/2addr v1, v15

    .line 417
    invoke-static {v14, v1}, Ljava/lang/Math;->min(II)I

    .line 418
    move-result v1

    .line 421
    invoke-direct {v9, v11, v4, v13, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 422
    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    .line 425
    move-result v1

    .line 428
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    .line 429
    move-result v4

    .line 432
    if-lt v1, v4, :cond_12

    .line 433
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 435
    :cond_12
    iget v1, v7, Landroid/graphics/Rect;->bottom:I

    .line 438
    add-int v4, v1, v15

    .line 440
    add-int/lit8 v6, v6, 0x1

    .line 442
    move-object/from16 v1, p3

    .line 444
    goto :goto_e

    .line 446
    :cond_13
    iget v1, v8, Landroid/graphics/Rect;->bottom:I

    .line 447
    sub-int/2addr v1, v4

    .line 449
    iget v0, v0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubblePositioner;->mBubbleSize:I

    .line 450
    if-lt v1, v0, :cond_14

    .line 452
    new-instance v0, Landroid/graphics/Rect;

    .line 454
    iget v1, v2, Landroid/graphics/Rect;->left:I

    .line 456
    iget v6, v2, Landroid/graphics/Rect;->right:I

    .line 458
    iget v7, v8, Landroid/graphics/Rect;->bottom:I

    .line 460
    invoke-direct {v0, v1, v4, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 462
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 465
    :cond_14
    new-instance v0, Ljava/lang/StringBuilder;

    .line 468
    const-string v1, "AETOI: availableRectList "

    .line 470
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 472
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 475
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 478
    move-result-object v0

    .line 481
    invoke-static {v10, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    const v0, 0x7fffffff

    .line 485
    const/4 v1, 0x0

    .line 488
    move v6, v0

    .line 489
    const/4 v4, 0x0

    .line 490
    :goto_f
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 491
    move-result v7

    .line 494
    if-ge v4, v7, :cond_19

    .line 495
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 497
    move-result-object v7

    .line 500
    check-cast v7, Landroid/graphics/Rect;

    .line 501
    invoke-static {v7, v2}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    .line 503
    move-result v8

    .line 506
    if-eqz v8, :cond_17

    .line 507
    iget v4, v2, Landroid/graphics/Rect;->top:I

    .line 509
    iget v5, v7, Landroid/graphics/Rect;->top:I

    .line 511
    if-ge v4, v5, :cond_15

    .line 513
    sub-int/2addr v5, v4

    .line 515
    const/4 v4, 0x0

    .line 516
    invoke-virtual {v2, v4, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 517
    goto :goto_10

    .line 520
    :cond_15
    const/4 v4, 0x0

    .line 521
    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    .line 522
    iget v6, v7, Landroid/graphics/Rect;->bottom:I

    .line 524
    if-le v5, v6, :cond_16

    .line 526
    sub-int/2addr v6, v5

    .line 528
    invoke-virtual {v2, v4, v6}, Landroid/graphics/Rect;->offset(II)V

    .line 529
    :cond_16
    :goto_10
    move v6, v0

    .line 532
    goto :goto_11

    .line 533
    :cond_17
    iget v8, v2, Landroid/graphics/Rect;->bottom:I

    .line 534
    iget v9, v7, Landroid/graphics/Rect;->top:I

    .line 536
    sub-int/2addr v8, v9

    .line 538
    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    .line 539
    move-result v8

    .line 542
    iget v9, v2, Landroid/graphics/Rect;->top:I

    .line 543
    iget v11, v7, Landroid/graphics/Rect;->bottom:I

    .line 545
    sub-int/2addr v9, v11

    .line 547
    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    .line 548
    move-result v9

    .line 551
    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    .line 552
    move-result v8

    .line 555
    if-le v6, v8, :cond_18

    .line 556
    move-object v1, v7

    .line 558
    move v6, v8

    .line 559
    :cond_18
    add-int/lit8 v4, v4, 0x1

    .line 560
    goto :goto_f

    .line 562
    :cond_19
    :goto_11
    new-instance v4, Ljava/lang/StringBuilder;

    .line 563
    const-string v5, "AETOI: minDistance="

    .line 565
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 567
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 570
    const-string v5, "\tfinalAvailableRect="

    .line 573
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 575
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 578
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 581
    move-result-object v4

    .line 584
    invoke-static {v10, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    if-eq v6, v0, :cond_1b

    .line 588
    iget v0, v2, Landroid/graphics/Rect;->bottom:I

    .line 590
    iget v4, v1, Landroid/graphics/Rect;->top:I

    .line 592
    if-ge v0, v4, :cond_1a

    .line 594
    const-string v0, "AETOI: up"

    .line 596
    invoke-static {v10, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    iget v0, v1, Landroid/graphics/Rect;->top:I

    .line 601
    iget v1, v2, Landroid/graphics/Rect;->top:I

    .line 603
    sub-int/2addr v0, v1

    .line 605
    const/4 v4, 0x0

    .line 606
    invoke-virtual {v2, v4, v0}, Landroid/graphics/Rect;->offset(II)V

    .line 607
    goto :goto_12

    .line 610
    :cond_1a
    const/4 v4, 0x0

    .line 611
    const-string v0, "AETOI: down"

    .line 612
    invoke-static {v10, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    iget v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 617
    iget v1, v2, Landroid/graphics/Rect;->bottom:I

    .line 619
    sub-int/2addr v0, v1

    .line 621
    invoke-virtual {v2, v4, v0}, Landroid/graphics/Rect;->offset(II)V

    .line 622
    :cond_1b
    :goto_12
    move-object/from16 v0, p1

    .line 625
    if-eqz v3, :cond_1c

    .line 627
    iget-object v1, v0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble;->bubbleEntry:Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiBubbleEntry;

    .line 629
    iget v1, v1, Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiBubbleEntry;->key:I

    .line 631
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 633
    move-result-object v1

    .line 636
    invoke-virtual {v12, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 637
    :cond_1c
    new-instance v1, Ljava/lang/StringBuilder;

    .line 640
    const-string v3, "AETOI: bubbleRect="

    .line 642
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 644
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 647
    const-string v2, "\tScreenRegion="

    .line 650
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 652
    move-object/from16 v2, v16

    .line 655
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 657
    const-string v2, "\tbubble="

    .line 660
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 662
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 665
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 668
    move-result-object v0

    .line 671
    invoke-static {v10, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    return-void
    .line 675
.end method

.method public final calculateRect(Landroid/graphics/Rect;Landroid/graphics/Rect;FFZ)V
    .locals 9

    .line 1
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    .line 2
    move-result v0

    .line 5
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    .line 6
    move-result p2

    .line 9
    div-int/lit8 v1, v0, 0x2

    .line 10
    div-int/lit8 v2, p2, 0x2

    .line 12
    iget v3, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubblePositioner;->mBubbleSize:I

    .line 14
    div-int/lit8 v3, v3, 0x2

    .line 16
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubblePositioner;->mPinHandler:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;

    .line 18
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;->getmMiuiFreeformModeDisplayInfo()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;

    .line 20
    move-result-object p0

    .line 23
    const/4 v4, 0x0

    .line 24
    const/16 v5, 0x14

    .line 25
    if-eqz p5, :cond_0

    .line 27
    move v6, v4

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    move v6, v5

    .line 31
    :goto_0
    if-eqz p5, :cond_1

    .line 32
    move v7, v4

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    move v7, v5

    .line 36
    :goto_1
    if-nez p5, :cond_2

    .line 37
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;->isImeShowing()Z

    .line 39
    move-result v8

    .line 42
    if-eqz v8, :cond_2

    .line 43
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;->getImeHeight()I

    .line 45
    move-result v4

    .line 48
    add-int/2addr v4, v5

    .line 49
    :cond_2
    invoke-virtual {p0, v6, v7, v4}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;->getMoveableBounds(III)Landroid/graphics/Rect;

    .line 50
    move-result-object v4

    .line 53
    iget v5, v4, Landroid/graphics/Rect;->left:I

    .line 54
    int-to-float v5, v5

    .line 56
    iget v6, v4, Landroid/graphics/Rect;->right:I

    .line 57
    sub-int/2addr v6, v0

    .line 59
    int-to-float v6, v6

    .line 60
    int-to-float v3, v3

    .line 61
    add-float/2addr p3, v3

    .line 62
    int-to-float v3, v1

    .line 63
    sub-float/2addr p3, v3

    .line 64
    invoke-static {v6, p3}, Ljava/lang/Math;->min(FF)F

    .line 65
    move-result p3

    .line 68
    invoke-static {v5, p3}, Ljava/lang/Math;->max(FF)F

    .line 69
    move-result p3

    .line 72
    float-to-int p3, p3

    .line 73
    add-int/2addr p3, v1

    .line 74
    iget v3, v4, Landroid/graphics/Rect;->top:I

    .line 75
    int-to-float v3, v3

    .line 77
    iget v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 78
    sub-int/2addr v5, p2

    .line 80
    int-to-float p2, v5

    .line 81
    invoke-static {p2, p4}, Ljava/lang/Math;->min(FF)F

    .line 82
    move-result p2

    .line 85
    invoke-static {v3, p2}, Ljava/lang/Math;->max(FF)F

    .line 86
    move-result p2

    .line 89
    float-to-int p2, p2

    .line 90
    add-int/2addr p2, v2

    .line 91
    sub-int p4, p3, v1

    .line 92
    sub-int v3, p2, v2

    .line 94
    add-int/2addr v1, p3

    .line 96
    add-int/2addr p2, v2

    .line 97
    invoke-virtual {p1, p4, v3, v1, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 98
    if-nez p5, :cond_4

    .line 101
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;->getDisplayWidth()I

    .line 103
    move-result p0

    .line 106
    div-int/lit8 p0, p0, 0x2

    .line 107
    if-le p3, p0, :cond_3

    .line 109
    iget p0, v4, Landroid/graphics/Rect;->right:I

    .line 111
    sub-int/2addr p0, v0

    .line 113
    iget p2, p1, Landroid/graphics/Rect;->top:I

    .line 114
    invoke-virtual {p1, p0, p2}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 116
    goto :goto_2

    .line 119
    :cond_3
    iget p0, v4, Landroid/graphics/Rect;->left:I

    .line 120
    iget p2, p1, Landroid/graphics/Rect;->top:I

    .line 122
    invoke-virtual {p1, p0, p2}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 124
    :cond_4
    :goto_2
    return-void
    .line 127
.end method

.method public final finalBounds(Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble;Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiFreeformMode;FF)Landroid/graphics/Rect;
    .locals 7

    .line 1
    new-instance v6, Landroid/graphics/Rect;

    .line 2
    const/4 v0, 0x0

    .line 4
    invoke-direct {v6, v0, v0, v0, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 5
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubblePositioner;->mScreenRegion:Landroid/graphics/Rect;

    .line 8
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 10
    move-result v2

    .line 13
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 14
    move-result v1

    .line 17
    int-to-float v3, v1

    .line 18
    const/high16 v4, 0x40000000    # 2.0f

    .line 19
    div-float/2addr v3, v4

    .line 21
    cmpl-float v3, p3, v3

    .line 22
    const/4 v4, 0x1

    .line 24
    if-lez v3, :cond_0

    .line 25
    move v0, v4

    .line 27
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 28
    move-result v3

    .line 31
    if-eqz v3, :cond_4

    .line 32
    if-eq v3, v4, :cond_3

    .line 34
    const/4 p3, 0x2

    .line 36
    if-eq v3, p3, :cond_1

    .line 37
    goto :goto_1

    .line 39
    :cond_1
    float-to-int p4, p4

    .line 40
    iget v3, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubblePositioner;->mBubbleGap:I

    .line 41
    if-eqz v0, :cond_2

    .line 43
    iget v0, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubblePositioner;->mBubbleSize:I

    .line 45
    div-int/2addr v0, p3

    .line 47
    add-int/2addr v1, v0

    .line 48
    sub-int/2addr v1, v3

    .line 49
    goto :goto_0

    .line 50
    :cond_2
    iget v0, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubblePositioner;->mBubbleSize:I

    .line 51
    neg-int v1, v0

    .line 53
    div-int/2addr v1, p3

    .line 54
    add-int/2addr v1, v3

    .line 55
    div-int/2addr v0, p3

    .line 56
    :goto_0
    sub-int/2addr v1, v0

    .line 57
    sub-int/2addr v2, v3

    .line 58
    iget p3, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubblePositioner;->mBubbleSize:I

    .line 59
    sub-int/2addr v2, p3

    .line 61
    invoke-static {v2, p4}, Ljava/lang/Math;->min(II)I

    .line 62
    move-result p3

    .line 65
    invoke-static {v3, p3}, Ljava/lang/Math;->max(II)I

    .line 66
    move-result p3

    .line 69
    iget p4, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubblePositioner;->mBubbleSize:I

    .line 70
    add-int v0, v1, p4

    .line 72
    add-int/2addr p4, p3

    .line 74
    invoke-virtual {v6, v1, p3, v0, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 75
    const/4 v3, 0x0

    .line 78
    const/4 v4, 0x0

    .line 79
    const/4 v5, 0x0

    .line 80
    move-object v0, p0

    .line 81
    move-object v1, p1

    .line 82
    move-object v2, v6

    .line 83
    invoke-virtual/range {v0 .. v5}, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubblePositioner;->adjustEdgeToAvoidIntersect(Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble;Landroid/graphics/Rect;ZZLandroid/graphics/Rect;)V

    .line 84
    goto :goto_1

    .line 87
    :cond_3
    iget-object p1, p1, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble;->bubbleEntry:Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiBubbleEntry;

    .line 88
    iget-object v2, p1, Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiBubbleEntry;->mFreeformBounds:Landroid/graphics/Rect;

    .line 90
    const/4 v5, 0x0

    .line 92
    move-object v0, p0

    .line 93
    move-object v1, v6

    .line 94
    move v3, p3

    .line 95
    move v4, p4

    .line 96
    invoke-virtual/range {v0 .. v5}, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubblePositioner;->calculateRect(Landroid/graphics/Rect;Landroid/graphics/Rect;FFZ)V

    .line 97
    goto :goto_1

    .line 100
    :cond_4
    iget-object p1, p1, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble;->bubbleEntry:Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiBubbleEntry;

    .line 101
    iget-object v2, p1, Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiBubbleEntry;->mFreeformBounds:Landroid/graphics/Rect;

    .line 103
    const/4 v5, 0x1

    .line 105
    move-object v0, p0

    .line 106
    move-object v1, v6

    .line 107
    move v3, p3

    .line 108
    move v4, p4

    .line 109
    invoke-virtual/range {v0 .. v5}, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubblePositioner;->calculateRect(Landroid/graphics/Rect;Landroid/graphics/Rect;FFZ)V

    .line 110
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 113
    const-string p1, "finalBounds: "

    .line 115
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 120
    const-string p1, " rect = "

    .line 123
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 128
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 131
    move-result-object p0

    .line 134
    const-string p1, "MiuiBubblePositioner"

    .line 135
    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    return-object v6
    .line 140
.end method

.method public final outerScreen(FI)Z
    .locals 1

    .line 1
    int-to-float v0, p2

    .line 2
    cmpg-float v0, p1, v0

    .line 3
    if-ltz v0, :cond_1

    .line 5
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubblePositioner;->mScreenRegion:Landroid/graphics/Rect;

    .line 7
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    .line 9
    move-result p0

    .line 12
    sub-int/2addr p0, p2

    .line 13
    int-to-float p0, p0

    .line 14
    cmpl-float p0, p1, p0

    .line 15
    if-lez p0, :cond_0

    .line 17
    goto :goto_0

    .line 19
    :cond_0
    const/4 p0, 0x0

    .line 20
    goto :goto_1

    .line 21
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 22
    :goto_1
    return p0
    .line 23
.end method

.method public final setBubbleRect(Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble;Landroid/graphics/Rect;)V
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    return-void

    .line 4
    :cond_0
    iget-object p1, p1, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble;->bubbleEntry:Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiBubbleEntry;

    .line 5
    iget p1, p1, Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiBubbleEntry;->key:I

    .line 7
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    move-result-object p1

    .line 12
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubblePositioner;->mBubbleRectMap:Landroid/util/ArrayMap;

    .line 13
    invoke-virtual {p0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    return-void
    .line 18
.end method

.method public final update()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubblePositioner;->mWindowManager:Landroid/view/WindowManager;

    .line 2
    invoke-interface {v0}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    .line 4
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    return-void

    .line 10
    :cond_0
    invoke-virtual {v0}, Landroid/view/WindowMetrics;->getWindowInsets()Landroid/view/WindowInsets;

    .line 11
    move-result-object v1

    .line 14
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    .line 15
    move-result v2

    .line 18
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    .line 19
    move-result v3

    .line 22
    or-int/2addr v2, v3

    .line 23
    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    .line 24
    move-result v3

    .line 27
    or-int/2addr v2, v3

    .line 28
    invoke-virtual {v1, v2}, Landroid/view/WindowInsets;->getInsetsIgnoringVisibility(I)Landroid/graphics/Insets;

    .line 29
    move-result-object v1

    .line 32
    new-instance v2, Ljava/lang/StringBuilder;

    .line 33
    const-string/jumbo v3, "update positioner: insets: "

    .line 35
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    const-string v3, " bounds: "

    .line 44
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v0}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    .line 49
    move-result-object v3

    .line 52
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    move-result-object v2

    .line 59
    const-string v3, "MiuiBubblePositioner"

    .line 60
    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    invoke-virtual {v0}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    .line 65
    move-result-object v0

    .line 68
    iget-object v2, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubblePositioner;->mScreenRegion:Landroid/graphics/Rect;

    .line 69
    invoke-virtual {v2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 71
    iget v2, v0, Landroid/graphics/Rect;->left:I

    .line 74
    add-int/lit16 v2, v2, 0xc8

    .line 76
    iget v4, v0, Landroid/graphics/Rect;->top:I

    .line 78
    iget v5, v0, Landroid/graphics/Rect;->right:I

    .line 80
    add-int/lit16 v5, v5, -0xc8

    .line 82
    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    .line 84
    iget-object v7, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubblePositioner;->mFreeformRegion:Landroid/graphics/Rect;

    .line 86
    invoke-virtual {v7, v2, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 88
    iget-object v2, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubblePositioner;->mAvailableRegion:Landroid/graphics/Rect;

    .line 91
    invoke-virtual {v2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 93
    iget v0, v2, Landroid/graphics/Rect;->left:I

    .line 96
    iget v4, v1, Landroid/graphics/Insets;->left:I

    .line 98
    add-int/2addr v0, v4

    .line 100
    iput v0, v2, Landroid/graphics/Rect;->left:I

    .line 101
    iget v0, v2, Landroid/graphics/Rect;->top:I

    .line 103
    iget v4, v1, Landroid/graphics/Insets;->top:I

    .line 105
    iget v5, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubblePositioner;->mBubbleGap:I

    .line 107
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    .line 109
    move-result v4

    .line 112
    add-int/2addr v4, v0

    .line 113
    iput v4, v2, Landroid/graphics/Rect;->top:I

    .line 114
    iget v0, v2, Landroid/graphics/Rect;->right:I

    .line 116
    iget v4, v1, Landroid/graphics/Insets;->right:I

    .line 118
    sub-int/2addr v0, v4

    .line 120
    iput v0, v2, Landroid/graphics/Rect;->right:I

    .line 121
    iget v0, v2, Landroid/graphics/Rect;->bottom:I

    .line 123
    iget v1, v1, Landroid/graphics/Insets;->bottom:I

    .line 125
    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    .line 127
    move-result v1

    .line 130
    iget-object v4, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubblePositioner;->mContext:Landroid/content/Context;

    .line 131
    invoke-static {v4}, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeStatus;->isActive(Landroid/content/Context;)Z

    .line 133
    move-result v5

    .line 136
    if-eqz v5, :cond_1

    .line 137
    sget v5, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->PAD_FREEFORM_ACCESSIBLE_AREA_BOTTOM_MARGIN_DESKTOP:I

    .line 139
    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    .line 141
    move-result v1

    .line 144
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    .line 145
    const-string v6, "getBottomMargin: "

    .line 147
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 149
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 152
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 155
    move-result-object v5

    .line 158
    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    sub-int/2addr v0, v1

    .line 162
    iput v0, v2, Landroid/graphics/Rect;->bottom:I

    .line 163
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 165
    move-result-object v0

    .line 168
    const v1, 0x7f0707e0    # @dimen/miui_bubble_size '64.0dp'

    .line 169
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 172
    move-result v1

    .line 175
    iput v1, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubblePositioner;->mBubbleSize:I

    .line 176
    const v1, 0x7f0707df    # @dimen/miui_bubble_shown_part_size '24.0dp'

    .line 178
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 181
    move-result v0

    .line 184
    iput v0, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubblePositioner;->mBubbleShownPartSize:I

    .line 185
    return-void
    .line 187
.end method
