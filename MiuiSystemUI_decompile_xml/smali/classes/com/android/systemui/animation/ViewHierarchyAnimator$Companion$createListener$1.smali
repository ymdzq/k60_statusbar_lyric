.class public final Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion$createListener$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic $duration:J

.field public final synthetic $ephemeral:Z

.field public final synthetic $ignorePreviousValues:Z

.field public final synthetic $interpolator:Landroid/view/animation/Interpolator;

.field public final synthetic $onAnimationEnd:Ljava/lang/Runnable;

.field public final synthetic $origin:Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;


# direct methods
.method public constructor <init>(JLandroid/view/animation/Interpolator;Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;Ljava/lang/Runnable;Z)V
    .locals 0

    .line 1
    iput-object p4, p0, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion$createListener$1;->$origin:Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;

    .line 2
    iput-boolean p6, p0, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion$createListener$1;->$ignorePreviousValues:Z

    .line 4
    iput-object p3, p0, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion$createListener$1;->$interpolator:Landroid/view/animation/Interpolator;

    .line 6
    iput-wide p1, p0, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion$createListener$1;->$duration:J

    .line 8
    const/4 p1, 0x1

    .line 10
    iput-boolean p1, p0, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion$createListener$1;->$ephemeral:Z

    .line 11
    iput-object p5, p0, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion$createListener$1;->$onAnimationEnd:Ljava/lang/Runnable;

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    return-void
    .line 18
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 4
    move/from16 v2, p2

    .line 6
    move/from16 v3, p3

    .line 8
    move/from16 v4, p4

    .line 10
    move/from16 v5, p5

    .line 12
    if-nez v1, :cond_0

    .line 14
    return-void

    .line 16
    :cond_0
    sget-object v6, Lcom/android/systemui/animation/ViewHierarchyAnimator;->Companion:Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;

    .line 17
    sget-object v6, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;->LEFT:Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound$LEFT;

    .line 19
    invoke-static {v1, v6}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;->access$getBound(Landroid/view/View;Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;)Ljava/lang/Integer;

    .line 21
    move-result-object v7

    .line 24
    if-eqz v7, :cond_1

    .line 25
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 27
    move-result v7

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    move/from16 v7, p6

    .line 32
    :goto_0
    sget-object v8, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;->TOP:Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound$TOP;

    .line 34
    invoke-static {v1, v8}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;->access$getBound(Landroid/view/View;Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;)Ljava/lang/Integer;

    .line 36
    move-result-object v9

    .line 39
    if-eqz v9, :cond_2

    .line 40
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 42
    move-result v9

    .line 45
    goto :goto_1

    .line 46
    :cond_2
    move/from16 v9, p7

    .line 47
    :goto_1
    sget-object v10, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;->RIGHT:Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound$RIGHT;

    .line 49
    invoke-static {v1, v10}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;->access$getBound(Landroid/view/View;Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;)Ljava/lang/Integer;

    .line 51
    move-result-object v11

    .line 54
    if-eqz v11, :cond_3

    .line 55
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    .line 57
    move-result v11

    .line 60
    goto :goto_2

    .line 61
    :cond_3
    move/from16 v11, p8

    .line 62
    :goto_2
    sget-object v12, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;->BOTTOM:Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound$BOTTOM;

    .line 64
    invoke-static {v1, v12}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;->access$getBound(Landroid/view/View;Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;)Ljava/lang/Integer;

    .line 66
    move-result-object v13

    .line 69
    if-eqz v13, :cond_4

    .line 70
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    .line 72
    move-result v13

    .line 75
    goto :goto_3

    .line 76
    :cond_4
    move/from16 v13, p9

    .line 77
    :goto_3
    const v14, 0x7f0a0949    # @id/tag_animator

    .line 79
    invoke-virtual {v1, v14}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 82
    move-result-object v14

    .line 85
    instance-of v15, v14, Landroid/animation/ObjectAnimator;

    .line 86
    if-eqz v15, :cond_5

    .line 88
    check-cast v14, Landroid/animation/ObjectAnimator;

    .line 90
    goto :goto_4

    .line 92
    :cond_5
    const/4 v14, 0x0

    .line 93
    :goto_4
    if-eqz v14, :cond_6

    .line 94
    invoke-virtual {v14}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 96
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getVisibility()I

    .line 99
    move-result v14

    .line 102
    const/16 v15, 0x8

    .line 103
    const/16 v16, 0x1

    .line 105
    if-eq v14, v15, :cond_7

    .line 107
    if-eq v2, v4, :cond_7

    .line 109
    if-eq v3, v5, :cond_7

    .line 111
    move/from16 v14, v16

    .line 113
    goto :goto_5

    .line 115
    :cond_7
    const/4 v14, 0x0

    .line 116
    :goto_5
    if-nez v14, :cond_8

    .line 117
    invoke-static {v1, v6, v2}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;->setBound(Landroid/view/View;Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;I)V

    .line 119
    invoke-static {v1, v8, v3}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;->setBound(Landroid/view/View;Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;I)V

    .line 122
    invoke-static {v1, v10, v4}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;->setBound(Landroid/view/View;Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;I)V

    .line 125
    invoke-static {v1, v12, v5}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;->setBound(Landroid/view/View;Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;I)V

    .line 128
    return-void

    .line 131
    :cond_8
    iget-object v14, v0, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion$createListener$1;->$origin:Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;

    .line 132
    iget-boolean v15, v0, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion$createListener$1;->$ignorePreviousValues:Z

    .line 134
    if-eqz v15, :cond_9

    .line 136
    move v7, v2

    .line 138
    :cond_9
    if-eqz v15, :cond_a

    .line 139
    move v9, v3

    .line 141
    :cond_a
    if-eqz v15, :cond_b

    .line 142
    move v11, v4

    .line 144
    :cond_b
    if-eqz v15, :cond_c

    .line 145
    move v13, v5

    .line 147
    :cond_c
    if-eqz v14, :cond_d

    .line 148
    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    .line 150
    move-result v15

    .line 153
    packed-switch v15, :pswitch_data_0

    .line 154
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    .line 157
    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 159
    throw v0

    .line 162
    :pswitch_0
    invoke-static {v11, v4}, Ljava/lang/Math;->max(II)I

    .line 163
    move-result v15

    .line 166
    goto :goto_6

    .line 167
    :pswitch_1
    move v15, v2

    .line 168
    goto :goto_6

    .line 169
    :pswitch_2
    invoke-static {v7, v2}, Ljava/lang/Math;->min(II)I

    .line 170
    move-result v15

    .line 173
    goto :goto_6

    .line 174
    :pswitch_3
    add-int v15, v2, v4

    .line 175
    div-int/lit8 v15, v15, 0x2

    .line 177
    :goto_6
    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    .line 179
    move-result v17

    .line 182
    packed-switch v17, :pswitch_data_1

    .line 183
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    .line 186
    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 188
    throw v0

    .line 191
    :pswitch_4
    invoke-static {v13, v5}, Ljava/lang/Math;->max(II)I

    .line 192
    move-result v17

    .line 195
    goto :goto_7

    .line 196
    :pswitch_5
    invoke-static {v9, v3}, Ljava/lang/Math;->min(II)I

    .line 197
    move-result v17

    .line 200
    goto :goto_7

    .line 201
    :pswitch_6
    move/from16 v17, v3

    .line 202
    goto :goto_7

    .line 204
    :pswitch_7
    add-int v17, v3, v5

    .line 205
    div-int/lit8 v17, v17, 0x2

    .line 207
    :goto_7
    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    .line 209
    move-result v18

    .line 212
    packed-switch v18, :pswitch_data_2

    .line 213
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    .line 216
    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 218
    throw v0

    .line 221
    :pswitch_8
    invoke-static {v11, v4}, Ljava/lang/Math;->max(II)I

    .line 222
    move-result v7

    .line 225
    goto :goto_8

    .line 226
    :pswitch_9
    move v11, v4

    .line 227
    goto :goto_9

    .line 228
    :pswitch_a
    invoke-static {v7, v2}, Ljava/lang/Math;->min(II)I

    .line 229
    move-result v7

    .line 232
    goto :goto_8

    .line 233
    :pswitch_b
    add-int v7, v2, v4

    .line 234
    div-int/lit8 v7, v7, 0x2

    .line 236
    :goto_8
    move v11, v7

    .line 238
    :goto_9
    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    .line 239
    move-result v7

    .line 242
    packed-switch v7, :pswitch_data_3

    .line 243
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    .line 246
    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 248
    throw v0

    .line 251
    :pswitch_c
    invoke-static {v13, v5}, Ljava/lang/Math;->max(II)I

    .line 252
    move-result v7

    .line 255
    goto :goto_a

    .line 256
    :pswitch_d
    invoke-static {v9, v3}, Ljava/lang/Math;->min(II)I

    .line 257
    move-result v7

    .line 260
    goto :goto_a

    .line 261
    :pswitch_e
    move v13, v5

    .line 262
    goto :goto_b

    .line 263
    :pswitch_f
    add-int v7, v3, v5

    .line 264
    div-int/lit8 v7, v7, 0x2

    .line 266
    :goto_a
    move v13, v7

    .line 268
    :goto_b
    move v7, v15

    .line 269
    move/from16 v9, v17

    .line 270
    :cond_d
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 272
    move-result-object v7

    .line 275
    new-instance v14, Lkotlin/Pair;

    .line 276
    invoke-direct {v14, v6, v7}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 278
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 281
    move-result-object v7

    .line 284
    new-instance v9, Lkotlin/Pair;

    .line 285
    invoke-direct {v9, v8, v7}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 287
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 290
    move-result-object v7

    .line 293
    new-instance v11, Lkotlin/Pair;

    .line 294
    invoke-direct {v11, v10, v7}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 296
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 299
    move-result-object v7

    .line 302
    new-instance v13, Lkotlin/Pair;

    .line 303
    invoke-direct {v13, v12, v7}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 305
    filled-new-array {v14, v9, v11, v13}, [Lkotlin/Pair;

    .line 308
    move-result-object v7

    .line 311
    invoke-static {v7}, Lkotlin/collections/MapsKt___MapsJvmKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    .line 312
    move-result-object v7

    .line 315
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 316
    move-result-object v9

    .line 319
    new-instance v11, Lkotlin/Pair;

    .line 320
    invoke-direct {v11, v6, v9}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 322
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 325
    move-result-object v9

    .line 328
    new-instance v13, Lkotlin/Pair;

    .line 329
    invoke-direct {v13, v8, v9}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 331
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 334
    move-result-object v9

    .line 337
    new-instance v14, Lkotlin/Pair;

    .line 338
    invoke-direct {v14, v10, v9}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 340
    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 343
    move-result-object v9

    .line 346
    new-instance v15, Lkotlin/Pair;

    .line 347
    invoke-direct {v15, v12, v9}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 349
    filled-new-array {v11, v13, v14, v15}, [Lkotlin/Pair;

    .line 352
    move-result-object v9

    .line 355
    invoke-static {v9}, Lkotlin/collections/MapsKt___MapsJvmKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    .line 356
    move-result-object v9

    .line 359
    new-instance v11, Ljava/util/LinkedHashSet;

    .line 360
    invoke-direct {v11}, Ljava/util/LinkedHashSet;-><init>()V

    .line 362
    invoke-static {v7, v6}, Lkotlin/collections/MapsKt___MapsJvmKt;->getValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    move-result-object v13

    .line 368
    check-cast v13, Ljava/lang/Number;

    .line 369
    invoke-virtual {v13}, Ljava/lang/Number;->intValue()I

    .line 371
    move-result v13

    .line 374
    if-eq v13, v2, :cond_e

    .line 375
    invoke-interface {v11, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 377
    :cond_e
    invoke-static {v7, v8}, Lkotlin/collections/MapsKt___MapsJvmKt;->getValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    move-result-object v2

    .line 383
    check-cast v2, Ljava/lang/Number;

    .line 384
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 386
    move-result v2

    .line 389
    if-eq v2, v3, :cond_f

    .line 390
    invoke-interface {v11, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 392
    :cond_f
    invoke-static {v7, v10}, Lkotlin/collections/MapsKt___MapsJvmKt;->getValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    move-result-object v2

    .line 398
    check-cast v2, Ljava/lang/Number;

    .line 399
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 401
    move-result v2

    .line 404
    if-eq v2, v4, :cond_10

    .line 405
    invoke-interface {v11, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 407
    :cond_10
    invoke-static {v7, v12}, Lkotlin/collections/MapsKt___MapsJvmKt;->getValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    move-result-object v2

    .line 413
    check-cast v2, Ljava/lang/Number;

    .line 414
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 416
    move-result v2

    .line 419
    if-eq v2, v5, :cond_11

    .line 420
    invoke-interface {v11, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 422
    :cond_11
    invoke-interface {v11}, Ljava/util/Collection;->isEmpty()Z

    .line 425
    move-result v2

    .line 428
    xor-int/lit8 v2, v2, 0x1

    .line 429
    if-eqz v2, :cond_12

    .line 431
    iget-object v2, v0, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion$createListener$1;->$interpolator:Landroid/view/animation/Interpolator;

    .line 433
    iget-wide v3, v0, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion$createListener$1;->$duration:J

    .line 435
    iget-boolean v5, v0, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion$createListener$1;->$ephemeral:Z

    .line 437
    iget-object v0, v0, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion$createListener$1;->$onAnimationEnd:Ljava/lang/Runnable;

    .line 439
    move-object/from16 p0, p1

    .line 441
    move-object/from16 p1, v11

    .line 443
    move-object/from16 p2, v7

    .line 445
    move-object/from16 p3, v9

    .line 447
    move-object/from16 p4, v2

    .line 449
    move-wide/from16 p5, v3

    .line 451
    move/from16 p7, v5

    .line 453
    move-object/from16 p8, v0

    .line 455
    invoke-static/range {p0 .. p8}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;->startAnimation(Landroid/view/View;Ljava/util/Set;Ljava/util/Map;Ljava/util/Map;Landroid/view/animation/Interpolator;JZLjava/lang/Runnable;)V

    .line 457
    :cond_12
    return-void

    .line 460
    nop

    .line 461
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 462
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch

    .line 484
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch

    .line 506
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_e
        :pswitch_c
        :pswitch_c
        :pswitch_c
    .end packed-switch
    .line 528
.end method
