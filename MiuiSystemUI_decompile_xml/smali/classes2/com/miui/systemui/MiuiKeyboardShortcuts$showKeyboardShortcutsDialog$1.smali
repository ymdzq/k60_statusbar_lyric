.class public final Lcom/miui/systemui/MiuiKeyboardShortcuts$showKeyboardShortcutsDialog$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $context:Landroid/content/Context;

.field public final synthetic $keyboardShortcutGroups:Ljava/util/List;

.field public final synthetic this$0:Lcom/miui/systemui/MiuiKeyboardShortcuts;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/systemui/MiuiKeyboardShortcuts;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/miui/systemui/MiuiKeyboardShortcuts$showKeyboardShortcutsDialog$1;->this$0:Lcom/miui/systemui/MiuiKeyboardShortcuts;

    .line 2
    iput-object p1, p0, Lcom/miui/systemui/MiuiKeyboardShortcuts$showKeyboardShortcutsDialog$1;->$context:Landroid/content/Context;

    .line 4
    iput-object p3, p0, Lcom/miui/systemui/MiuiKeyboardShortcuts$showKeyboardShortcutsDialog$1;->$keyboardShortcutGroups:Ljava/util/List;

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public final run()V
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 2
    iget-object v1, v0, Lcom/miui/systemui/MiuiKeyboardShortcuts$showKeyboardShortcutsDialog$1;->this$0:Lcom/miui/systemui/MiuiKeyboardShortcuts;

    .line 4
    iget-object v11, v0, Lcom/miui/systemui/MiuiKeyboardShortcuts$showKeyboardShortcutsDialog$1;->$context:Landroid/content/Context;

    .line 6
    iget-object v0, v0, Lcom/miui/systemui/MiuiKeyboardShortcuts$showKeyboardShortcutsDialog$1;->$keyboardShortcutGroups:Ljava/util/List;

    .line 8
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    const-string v2, "layout_inflater"

    .line 13
    invoke-virtual {v11, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 15
    move-result-object v3

    .line 18
    check-cast v3, Landroid/view/LayoutInflater;

    .line 19
    const v4, 0x7f0d01af    # @layout/miui_keyboard_shortcuts_view 'res/layout/miui_keyboard_shortcuts_view.xml'

    .line 21
    const/4 v12, 0x0

    .line 24
    invoke-virtual {v3, v4, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 25
    move-result-object v13

    .line 28
    const v14, 0x7f0a05c8    # @id/miui_keyboard_shortcuts_container

    .line 29
    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 32
    move-result-object v3

    .line 35
    move-object v15, v3

    .line 36
    check-cast v15, Landroid/widget/FrameLayout;

    .line 37
    new-instance v10, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 39
    invoke-direct {v10}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 41
    const v9, 0x7f0a05ca    # @id/miui_keyboard_shortcuts_viewpager

    .line 44
    invoke-virtual {v15, v9}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 47
    move-result-object v3

    .line 50
    iput-object v3, v10, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 51
    check-cast v3, Landroidx/viewpager/widget/ViewPager;

    .line 53
    iget-object v4, v3, Landroidx/viewpager/widget/ViewPager;->mOnPageChangeListeners:Ljava/util/List;

    .line 55
    if-nez v4, :cond_0

    .line 57
    new-instance v4, Ljava/util/ArrayList;

    .line 59
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 61
    iput-object v4, v3, Landroidx/viewpager/widget/ViewPager;->mOnPageChangeListeners:Ljava/util/List;

    .line 64
    :cond_0
    iget-object v3, v3, Landroidx/viewpager/widget/ViewPager;->mOnPageChangeListeners:Ljava/util/List;

    .line 66
    check-cast v3, Ljava/util/ArrayList;

    .line 68
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    invoke-virtual {v11, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 73
    move-result-object v2

    .line 76
    move-object v8, v2

    .line 77
    check-cast v8, Landroid/view/LayoutInflater;

    .line 78
    new-instance v7, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 80
    invoke-direct {v7}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 82
    sget-boolean v2, Lcom/miui/systemui/MiuiKeyboardShortcuts;->isSystem:Z

    .line 85
    new-instance v3, Ljava/util/ArrayList;

    .line 87
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 89
    const/4 v6, 0x0

    .line 92
    const/4 v5, -0x1

    .line 93
    const/4 v4, 0x1

    .line 94
    if-eqz v2, :cond_1

    .line 95
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 97
    move-result v2

    .line 100
    sub-int/2addr v2, v4

    .line 101
    :goto_0
    if-ge v5, v2, :cond_2

    .line 102
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 104
    move-result-object v16

    .line 107
    check-cast v16, Landroid/view/KeyboardShortcutGroup;

    .line 108
    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyboardShortcutGroup;->getItems()Ljava/util/List;

    .line 110
    move-result-object v5

    .line 113
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 114
    add-int/lit8 v2, v2, -0x1

    .line 117
    const/4 v5, -0x1

    .line 119
    goto :goto_0

    .line 120
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 121
    move-result v2

    .line 124
    if-le v2, v4, :cond_2

    .line 125
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 127
    move-result-object v0

    .line 130
    check-cast v0, Landroid/view/KeyboardShortcutGroup;

    .line 131
    invoke-virtual {v0}, Landroid/view/KeyboardShortcutGroup;->getItems()Ljava/util/List;

    .line 133
    move-result-object v0

    .line 136
    move-object v3, v0

    .line 137
    check-cast v3, Ljava/util/ArrayList;

    .line 138
    :cond_2
    iput-object v3, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 140
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 142
    move-result v0

    .line 145
    const/4 v5, 0x2

    .line 146
    if-ge v0, v4, :cond_3

    .line 147
    move v3, v5

    .line 149
    move v8, v6

    .line 150
    move-object v7, v11

    .line 151
    move-object/from16 v24, v13

    .line 152
    move v5, v4

    .line 154
    move-object v4, v1

    .line 155
    goto/16 :goto_e

    .line 156
    :cond_3
    new-instance v0, Lkotlin/jvm/internal/Ref$IntRef;

    .line 158
    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    .line 160
    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 163
    move-result-object v2

    .line 166
    const v3, 0x7f0b00c8    # @integer/miui_keyboard_shortcuts_number '10'

    .line 167
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    .line 170
    move-result v2

    .line 173
    iput v2, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 174
    iget-object v2, v10, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 176
    check-cast v2, Landroidx/viewpager/widget/ViewPager;

    .line 178
    iget-object v3, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 180
    check-cast v3, Ljava/util/ArrayList;

    .line 182
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 184
    move-result v3

    .line 187
    move-object/from16 v16, v10

    .line 188
    int-to-double v9, v3

    .line 190
    iget v3, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 191
    move-object/from16 v18, v15

    .line 193
    int-to-double v14, v3

    .line 195
    div-double/2addr v9, v14

    .line 196
    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    .line 197
    move-result-wide v9

    .line 200
    double-to-int v3, v9

    .line 201
    invoke-virtual {v2, v3}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    .line 202
    new-instance v14, Ljava/util/ArrayList;

    .line 205
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 207
    iget-object v2, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 210
    check-cast v2, Ljava/util/ArrayList;

    .line 212
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 214
    move-result v2

    .line 217
    if-gtz v2, :cond_4

    .line 218
    move v15, v6

    .line 220
    goto :goto_6

    .line 221
    :cond_4
    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 222
    move-result-object v3

    .line 225
    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 226
    move-result-object v3

    .line 229
    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    .line 230
    if-ne v3, v5, :cond_5

    .line 232
    move v3, v4

    .line 234
    goto :goto_1

    .line 235
    :cond_5
    move v3, v6

    .line 236
    :goto_1
    if-eqz v3, :cond_a

    .line 237
    const/4 v3, 0x5

    .line 239
    if-gt v4, v2, :cond_6

    .line 240
    if-ge v2, v3, :cond_6

    .line 242
    move v9, v4

    .line 244
    goto :goto_2

    .line 245
    :cond_6
    move v9, v6

    .line 246
    :goto_2
    if-eqz v9, :cond_7

    .line 247
    goto :goto_4

    .line 249
    :cond_7
    if-gt v3, v2, :cond_8

    .line 250
    const/16 v3, 0x15

    .line 252
    if-ge v2, v3, :cond_8

    .line 254
    move v2, v4

    .line 256
    goto :goto_3

    .line 257
    :cond_8
    move v2, v6

    .line 258
    :goto_3
    if-eqz v2, :cond_9

    .line 259
    move v2, v5

    .line 261
    goto :goto_5

    .line 262
    :cond_9
    const/4 v2, 0x3

    .line 263
    goto :goto_5

    .line 264
    :cond_a
    :goto_4
    move v2, v4

    .line 265
    :goto_5
    move v15, v2

    .line 266
    :goto_6
    new-instance v19, Lkotlin/jvm/internal/Ref$IntRef;

    .line 267
    invoke-direct/range {v19 .. v19}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    .line 269
    new-instance v20, Lkotlin/jvm/internal/Ref$IntRef;

    .line 272
    invoke-direct/range {v20 .. v20}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    .line 274
    move v2, v6

    .line 277
    move v10, v2

    .line 278
    :goto_7
    const v3, 0x7f0d01ae    # @layout/miui_keyboard_shortcuts_page 'res/layout/miui_keyboard_shortcuts_page.xml'

    .line 279
    invoke-virtual {v8, v3, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 282
    move-result-object v3

    .line 285
    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 286
    const v9, 0x7f0a05c9    # @id/miui_keyboard_shortcuts_grid

    .line 289
    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 292
    move-result-object v3

    .line 295
    move-object v9, v3

    .line 296
    check-cast v9, Landroidx/recyclerview/widget/RecyclerView;

    .line 297
    add-int/lit8 v3, v2, 0x1

    .line 299
    iget v5, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 301
    mul-int/2addr v5, v3

    .line 303
    sub-int/2addr v5, v4

    .line 304
    iget-object v4, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 305
    check-cast v4, Ljava/util/ArrayList;

    .line 307
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 309
    move-result v4

    .line 312
    if-lt v5, v4, :cond_b

    .line 313
    iget-object v4, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 315
    check-cast v4, Ljava/util/ArrayList;

    .line 317
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 319
    move-result v4

    .line 322
    goto :goto_8

    .line 323
    :cond_b
    iget v4, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 324
    mul-int/2addr v4, v3

    .line 326
    :goto_8
    new-instance v5, Ljava/util/ArrayList;

    .line 327
    iget-object v6, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 329
    check-cast v6, Ljava/util/ArrayList;

    .line 331
    iget v12, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 333
    mul-int/2addr v2, v12

    .line 335
    invoke-virtual {v6, v2, v4}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    .line 336
    move-result-object v2

    .line 339
    invoke-direct {v5, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 340
    new-instance v2, Lcom/miui/systemui/MiuiKeyboardShotcutsAdapter;

    .line 343
    invoke-direct {v2, v11, v1, v5}, Lcom/miui/systemui/MiuiKeyboardShotcutsAdapter;-><init>(Landroid/content/Context;Lcom/miui/systemui/MiuiKeyboardShortcuts;Ljava/util/List;)V

    .line 345
    invoke-virtual {v9, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 348
    new-instance v2, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 351
    invoke-direct {v2, v15}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(I)V

    .line 353
    invoke-virtual {v9, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 356
    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationCount()I

    .line 359
    move-result v2

    .line 362
    if-nez v2, :cond_c

    .line 363
    new-instance v2, Lcom/miui/systemui/SpaceItemDecorator;

    .line 365
    invoke-direct {v2, v15, v11}, Lcom/miui/systemui/SpaceItemDecorator;-><init>(ILandroid/content/Context;)V

    .line 367
    invoke-virtual {v9, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 370
    :cond_c
    invoke-virtual {v9}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 373
    move-result-object v12

    .line 376
    new-instance v6, Lcom/miui/systemui/MiuiKeyboardShortcuts$populateKeyboardShortcuts$1$1;

    .line 377
    move-object v2, v6

    .line 379
    move v4, v3

    .line 380
    move-object/from16 v3, v19

    .line 381
    move-object/from16 v24, v13

    .line 383
    move v13, v4

    .line 385
    move-object v4, v9

    .line 386
    move-object/from16 v22, v1

    .line 387
    move-object/from16 v21, v5

    .line 389
    const/4 v1, -0x1

    .line 391
    const/4 v9, 0x2

    .line 392
    move-object v5, v11

    .line 393
    move-object v1, v6

    .line 394
    move-object/from16 v6, v18

    .line 395
    move-object/from16 v23, v7

    .line 397
    move-object/from16 v7, v20

    .line 399
    move-object/from16 v25, v8

    .line 401
    move-object/from16 v8, v16

    .line 403
    move-object/from16 v9, v23

    .line 405
    move-object/from16 v17, v11

    .line 407
    move-object/from16 v11, v16

    .line 409
    move-object/from16 v16, v14

    .line 411
    move v14, v10

    .line 413
    move-object v10, v0

    .line 414
    invoke-direct/range {v2 .. v10}, Lcom/miui/systemui/MiuiKeyboardShortcuts$populateKeyboardShortcuts$1$1;-><init>(Lkotlin/jvm/internal/Ref$IntRef;Landroidx/recyclerview/widget/RecyclerView;Landroid/content/Context;Landroid/widget/FrameLayout;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$IntRef;)V

    .line 415
    invoke-virtual {v12, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 418
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    .line 421
    move-result v1

    .line 424
    int-to-float v1, v1

    .line 425
    int-to-float v2, v15

    .line 426
    div-float/2addr v1, v2

    .line 427
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 428
    move-result v1

    .line 431
    if-ge v14, v1, :cond_d

    .line 432
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    .line 434
    move-result v1

    .line 437
    int-to-float v1, v1

    .line 438
    div-float/2addr v1, v2

    .line 439
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 440
    move-result v1

    .line 443
    move v10, v1

    .line 444
    goto :goto_9

    .line 445
    :cond_d
    move v10, v14

    .line 446
    :goto_9
    move-object/from16 v1, v23

    .line 447
    iget-object v2, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 449
    check-cast v2, Ljava/util/ArrayList;

    .line 451
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 453
    move-result v2

    .line 456
    iget v3, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 457
    div-int/2addr v2, v3

    .line 459
    sub-int/2addr v2, v13

    .line 460
    if-gez v2, :cond_1a

    .line 461
    iget-object v0, v11, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 463
    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    .line 465
    new-instance v1, Lcom/miui/systemui/MiuiKeyboardViewpagerAdapter;

    .line 467
    move-object/from16 v2, v16

    .line 469
    invoke-direct {v1, v2}, Lcom/miui/systemui/MiuiKeyboardViewpagerAdapter;-><init>(Ljava/util/ArrayList;)V

    .line 471
    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 474
    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 477
    move-result-object v0

    .line 480
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 481
    move-result-object v0

    .line 484
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 485
    const/4 v3, 0x2

    .line 487
    if-ne v0, v3, :cond_e

    .line 488
    invoke-virtual/range {v18 .. v18}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 490
    move-result-object v0

    .line 493
    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 494
    move-result-object v1

    .line 497
    const v2, 0x7f070990    # @dimen/miui_shortcuts_item_min_width '-2.0px'

    .line 498
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 501
    move-result v1

    .line 504
    mul-int/2addr v1, v15

    .line 505
    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 506
    move-result-object v2

    .line 509
    const v4, 0x7f070877    # @dimen/miui_keyboard_shortcuts_dialog_padding_horizontal '35.56dp'

    .line 510
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 513
    move-result v2

    .line 516
    add-int/2addr v2, v1

    .line 517
    const/4 v1, -0x1

    .line 518
    add-int/2addr v15, v1

    .line 519
    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 520
    move-result-object v1

    .line 523
    const v4, 0x7f07098e    # @dimen/miui_shortcuts_item_margin_left '26.67dp'

    .line 524
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 527
    move-result v1

    .line 530
    mul-int/2addr v1, v15

    .line 531
    add-int/2addr v1, v2

    .line 532
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 533
    :cond_e
    invoke-virtual/range {v18 .. v18}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    .line 535
    move-result-object v0

    .line 538
    check-cast v0, Landroid/view/View;

    .line 539
    const v1, 0x7f0a043b    # @id/indicator_group

    .line 541
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 544
    move-result-object v0

    .line 547
    check-cast v0, Landroid/widget/LinearLayout;

    .line 548
    move-object/from16 v4, v22

    .line 550
    iget-object v1, v4, Lcom/miui/systemui/MiuiKeyboardShortcuts;->indicatorList:Ljava/util/ArrayList;

    .line 552
    const/4 v5, 0x1

    .line 554
    if-le v13, v5, :cond_11

    .line 555
    if-gt v5, v13, :cond_10

    .line 557
    move v2, v5

    .line 559
    :goto_a
    new-instance v6, Landroid/widget/ImageView;

    .line 560
    move-object/from16 v7, v17

    .line 562
    invoke-direct {v6, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 564
    const v8, 0x7f0812e4    # @drawable/miui_keyboard_shortcuts_indicator 'res/drawable/miui_keyboard_shortcuts_indicator.xml'

    .line 567
    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 570
    if-ne v2, v5, :cond_f

    .line 573
    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 575
    const/4 v8, 0x0

    .line 578
    goto :goto_b

    .line 579
    :cond_f
    const/4 v8, 0x0

    .line 580
    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 581
    :goto_b
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    .line 584
    const/4 v10, -0x2

    .line 586
    invoke-direct {v9, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 587
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 590
    move-result-object v10

    .line 593
    const v11, 0x7f07087b    # @dimen/miui_keyboard_shortcuts_indicator_margin '8.0dp'

    .line 594
    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 597
    move-result v10

    .line 600
    iput v10, v9, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 601
    invoke-virtual {v0, v6, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 603
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 606
    if-eq v2, v13, :cond_13

    .line 609
    add-int/lit8 v2, v2, 0x1

    .line 611
    move-object/from16 v17, v7

    .line 613
    goto :goto_a

    .line 615
    :cond_10
    move-object/from16 v7, v17

    .line 616
    const/4 v8, 0x0

    .line 618
    goto :goto_d

    .line 619
    :cond_11
    move-object/from16 v7, v17

    .line 620
    const/4 v8, 0x0

    .line 622
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 623
    move-result-object v2

    .line 626
    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 627
    move-result v6

    .line 630
    if-eqz v6, :cond_12

    .line 631
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 633
    move-result-object v6

    .line 636
    check-cast v6, Landroid/widget/ImageView;

    .line 637
    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 639
    goto :goto_c

    .line 642
    :cond_12
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 643
    :cond_13
    :goto_d
    move v6, v5

    .line 646
    :goto_e
    if-nez v6, :cond_14

    .line 647
    goto/16 :goto_10

    .line 649
    :cond_14
    new-instance v0, Landroid/app/Dialog;

    .line 651
    const v1, 0x7f14088b    # @style/miui_shortcuts_dialog_style

    .line 653
    invoke-direct {v0, v7, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 656
    iput-object v0, v4, Lcom/miui/systemui/MiuiKeyboardShortcuts;->keyboardShortcutsDialog:Landroid/app/Dialog;

    .line 659
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 661
    move-result-object v0

    .line 664
    if-eqz v0, :cond_15

    .line 665
    invoke-virtual {v0, v5}, Landroid/view/Window;->requestFeature(I)Z

    .line 667
    :cond_15
    iget-object v1, v4, Lcom/miui/systemui/MiuiKeyboardShortcuts;->keyboardShortcutsDialog:Landroid/app/Dialog;

    .line 670
    move-object/from16 v6, v24

    .line 672
    if-nez v1, :cond_16

    .line 674
    const/4 v1, 0x0

    .line 676
    :cond_16
    invoke-virtual {v1, v6}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 677
    const v9, 0x7f0a05c8    # @id/miui_keyboard_shortcuts_container

    .line 680
    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 683
    move-result-object v2

    .line 686
    iput-object v2, v4, Lcom/miui/systemui/MiuiKeyboardShortcuts;->blurContainer:Landroid/view/View;

    .line 687
    const v12, 0x7f0a05ca    # @id/miui_keyboard_shortcuts_viewpager

    .line 689
    invoke-virtual {v6, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 692
    move-result-object v2

    .line 695
    check-cast v2, Landroidx/viewpager/widget/ViewPager;

    .line 696
    if-eqz v2, :cond_17

    .line 698
    new-instance v9, Lcom/miui/systemui/MiuiKeyboardShortcuts$handleShow$1$1;

    .line 700
    invoke-direct {v9, v7, v4}, Lcom/miui/systemui/MiuiKeyboardShortcuts$handleShow$1$1;-><init>(Landroid/content/Context;Lcom/miui/systemui/MiuiKeyboardShortcuts;)V

    .line 702
    invoke-virtual {v2, v9}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 705
    :cond_17
    invoke-virtual {v1, v5}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 708
    new-instance v2, Lcom/miui/systemui/MiuiKeyboardShortcuts$handleShow$1$2;

    .line 711
    invoke-direct {v2, v4}, Lcom/miui/systemui/MiuiKeyboardShortcuts$handleShow$1$2;-><init>(Lcom/miui/systemui/MiuiKeyboardShortcuts;)V

    .line 713
    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 716
    new-instance v2, Lcom/miui/systemui/MiuiKeyboardShortcuts$handleShow$1$3;

    .line 719
    invoke-direct {v2, v4}, Lcom/miui/systemui/MiuiKeyboardShortcuts$handleShow$1$3;-><init>(Lcom/miui/systemui/MiuiKeyboardShortcuts;)V

    .line 721
    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 724
    new-instance v1, Lcom/miui/systemui/MiuiKeyboardShortcuts$handleShow$2;

    .line 727
    invoke-direct {v1, v4}, Lcom/miui/systemui/MiuiKeyboardShortcuts$handleShow$2;-><init>(Lcom/miui/systemui/MiuiKeyboardShortcuts;)V

    .line 729
    invoke-virtual {v6, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 732
    if-eqz v0, :cond_18

    .line 735
    const/16 v1, 0x7d8

    .line 737
    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 739
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    .line 742
    invoke-direct {v1, v8}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 744
    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 747
    invoke-virtual {v0, v3}, Landroid/view/Window;->clearFlags(I)V

    .line 750
    const v1, 0x8000

    .line 753
    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 756
    const v1, 0x1048020

    .line 759
    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 762
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    .line 765
    invoke-direct {v1, v8}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 767
    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 770
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 773
    move-result-object v1

    .line 776
    const/4 v14, -0x1

    .line 777
    iput v14, v1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 778
    iput v14, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 780
    iput v14, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 782
    const/16 v2, 0x11

    .line 784
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 786
    const/4 v2, -0x3

    .line 788
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 789
    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 791
    const-string v2, "MiuiKeyboardShortcuts"

    .line 793
    invoke-virtual {v1, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 795
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 798
    :cond_18
    iget-object v0, v4, Lcom/miui/systemui/MiuiKeyboardShortcuts;->keyboardShortcutsDialog:Landroid/app/Dialog;

    .line 801
    if-nez v0, :cond_19

    .line 803
    const/4 v12, 0x0

    .line 805
    goto :goto_f

    .line 806
    :cond_19
    move-object v12, v0

    .line 807
    :goto_f
    invoke-virtual {v12}, Landroid/app/Dialog;->show()V

    .line 808
    :goto_10
    return-void

    .line 811
    :cond_1a
    move-object v7, v1

    .line 812
    move v2, v13

    .line 813
    move-object/from16 v14, v16

    .line 814
    move-object/from16 v1, v22

    .line 816
    move-object/from16 v13, v24

    .line 818
    move-object/from16 v8, v25

    .line 820
    const/4 v4, 0x1

    .line 822
    const/4 v5, 0x2

    .line 823
    const/4 v6, 0x0

    .line 824
    const/4 v12, 0x0

    .line 825
    move-object/from16 v16, v11

    .line 826
    move-object/from16 v11, v17

    .line 828
    goto/16 :goto_7
    .line 830
.end method
