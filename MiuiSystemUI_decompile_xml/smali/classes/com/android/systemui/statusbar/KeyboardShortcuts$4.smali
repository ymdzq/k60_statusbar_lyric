.class public final Lcom/android/systemui/statusbar/KeyboardShortcuts$4;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/KeyboardShortcuts;

.field public final synthetic val$keyboardShortcutGroups:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/KeyboardShortcuts;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts$4;->this$0:Lcom/android/systemui/statusbar/KeyboardShortcuts;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts$4;->val$keyboardShortcutGroups:Ljava/util/List;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 27

    .line 1
    move-object/from16 v0, p0

    .line 2
    iget-object v1, v0, Lcom/android/systemui/statusbar/KeyboardShortcuts$4;->this$0:Lcom/android/systemui/statusbar/KeyboardShortcuts;

    .line 4
    iget-object v0, v0, Lcom/android/systemui/statusbar/KeyboardShortcuts$4;->val$keyboardShortcutGroups:Ljava/util/List;

    .line 6
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    new-instance v2, Landroid/app/AlertDialog$Builder;

    .line 11
    iget-object v3, v1, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mContext:Landroid/content/Context;

    .line 13
    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 15
    iget-object v3, v1, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mContext:Landroid/content/Context;

    .line 18
    const-string v4, "layout_inflater"

    .line 20
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 22
    move-result-object v3

    .line 25
    check-cast v3, Landroid/view/LayoutInflater;

    .line 26
    const v4, 0x7f0d00f7    # @layout/keyboard_shortcuts_view 'res/layout/keyboard_shortcuts_view.xml'

    .line 28
    const/4 v5, 0x0

    .line 31
    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 32
    move-result-object v3

    .line 35
    const v4, 0x7f0a0468    # @id/keyboard_shortcuts_container

    .line 36
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 39
    move-result-object v4

    .line 42
    check-cast v4, Landroid/widget/LinearLayout;

    .line 43
    iget-object v6, v1, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mContext:Landroid/content/Context;

    .line 45
    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 47
    move-result-object v6

    .line 50
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 51
    move-result v7

    .line 54
    const v8, 0x7f0d00f5    # @layout/keyboard_shortcuts_key_view 'res/layout/keyboard_shortcuts_key_view.xml'

    .line 55
    const/4 v9, 0x0

    .line 58
    invoke-virtual {v6, v8, v5, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 59
    move-result-object v10

    .line 62
    check-cast v10, Landroid/widget/TextView;

    .line 63
    invoke-virtual {v10, v9, v9}, Landroid/widget/TextView;->measure(II)V

    .line 65
    invoke-virtual {v10}, Landroid/widget/TextView;->getMeasuredHeight()I

    .line 68
    move-result v11

    .line 71
    invoke-virtual {v10}, Landroid/widget/TextView;->getMeasuredHeight()I

    .line 72
    move-result v12

    .line 75
    invoke-virtual {v10}, Landroid/widget/TextView;->getPaddingTop()I

    .line 76
    move-result v13

    .line 79
    sub-int/2addr v12, v13

    .line 80
    invoke-virtual {v10}, Landroid/widget/TextView;->getPaddingBottom()I

    .line 81
    move-result v10

    .line 84
    sub-int/2addr v12, v10

    .line 85
    move-object v13, v4

    .line 86
    move v10, v9

    .line 87
    :goto_0
    if-ge v10, v7, :cond_15

    .line 88
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 90
    move-result-object v15

    .line 93
    check-cast v15, Landroid/view/KeyboardShortcutGroup;

    .line 94
    const v5, 0x7f0d00ee    # @layout/keyboard_shortcuts_category_title 'res/layout/keyboard_shortcuts_category_title.xml'

    .line 96
    invoke-virtual {v6, v5, v13, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 99
    move-result-object v5

    .line 102
    check-cast v5, Landroid/widget/TextView;

    .line 103
    invoke-virtual {v15}, Landroid/view/KeyboardShortcutGroup;->getLabel()Ljava/lang/CharSequence;

    .line 105
    move-result-object v8

    .line 108
    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    invoke-virtual {v15}, Landroid/view/KeyboardShortcutGroup;->isSystemGroup()Z

    .line 112
    move-result v8

    .line 115
    if-eqz v8, :cond_0

    .line 116
    iget-object v8, v1, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mContext:Landroid/content/Context;

    .line 118
    const v14, 0x1010435    # @android:attr/colorAccent

    .line 120
    invoke-static {v14, v8}, Lcom/android/settingslib/Utils;->getColorAttr(ILandroid/content/Context;)Landroid/content/res/ColorStateList;

    .line 123
    move-result-object v8

    .line 126
    goto :goto_1

    .line 127
    :cond_0
    iget-object v8, v1, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mContext:Landroid/content/Context;

    .line 128
    const v14, 0x7f06017d    # @color/ksh_application_group_color '#fff44336'

    .line 130
    invoke-virtual {v8, v14}, Landroid/content/Context;->getColor(I)I

    .line 133
    move-result v8

    .line 136
    invoke-static {v8}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 137
    move-result-object v8

    .line 140
    :goto_1
    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 141
    invoke-virtual {v13, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 144
    const v5, 0x7f0d00ef    # @layout/keyboard_shortcuts_container 'res/layout/keyboard_shortcuts_container.xml'

    .line 147
    invoke-virtual {v6, v5, v13, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 150
    move-result-object v5

    .line 153
    check-cast v5, Landroid/widget/LinearLayout;

    .line 154
    invoke-virtual {v15}, Landroid/view/KeyboardShortcutGroup;->getItems()Ljava/util/List;

    .line 156
    move-result-object v8

    .line 159
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 160
    move-result v8

    .line 163
    move v14, v9

    .line 164
    :goto_2
    if-ge v14, v8, :cond_13

    .line 165
    invoke-virtual {v15}, Landroid/view/KeyboardShortcutGroup;->getItems()Ljava/util/List;

    .line 167
    move-result-object v13

    .line 170
    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 171
    move-result-object v13

    .line 174
    check-cast v13, Landroid/view/KeyboardShortcutInfo;

    .line 175
    new-instance v9, Ljava/util/ArrayList;

    .line 177
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 179
    invoke-virtual {v13}, Landroid/view/KeyboardShortcutInfo;->getModifiers()I

    .line 182
    move-result v16

    .line 185
    move-object/from16 v17, v0

    .line 186
    if-nez v16, :cond_1

    .line 188
    move-object/from16 v21, v2

    .line 190
    move-object/from16 v18, v4

    .line 192
    move/from16 v19, v8

    .line 194
    move-object/from16 v20, v15

    .line 196
    goto :goto_5

    .line 198
    :cond_1
    move-object/from16 v18, v4

    .line 199
    const/4 v0, 0x0

    .line 201
    :goto_3
    iget-object v4, v1, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mModifierList:[I

    .line 202
    move/from16 v19, v8

    .line 204
    array-length v8, v4

    .line 206
    if-ge v0, v8, :cond_3

    .line 207
    aget v4, v4, v0

    .line 209
    and-int v8, v16, v4

    .line 211
    if-eqz v8, :cond_2

    .line 213
    new-instance v8, Lcom/android/systemui/statusbar/KeyboardShortcuts$StringDrawableContainer;

    .line 215
    move-object/from16 v20, v15

    .line 217
    iget-object v15, v1, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mModifierNames:Landroid/util/SparseArray;

    .line 219
    invoke-virtual {v15, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 221
    move-result-object v15

    .line 224
    check-cast v15, Ljava/lang/String;

    .line 225
    move-object/from16 v21, v2

    .line 227
    iget-object v2, v1, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mModifierDrawables:Landroid/util/SparseArray;

    .line 229
    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 231
    move-result-object v2

    .line 234
    check-cast v2, Landroid/graphics/drawable/Drawable;

    .line 235
    invoke-direct {v8, v15, v2}, Lcom/android/systemui/statusbar/KeyboardShortcuts$StringDrawableContainer;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 237
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 240
    not-int v2, v4

    .line 243
    and-int v2, v16, v2

    .line 244
    move/from16 v16, v2

    .line 246
    goto :goto_4

    .line 248
    :cond_2
    move-object/from16 v21, v2

    .line 249
    move-object/from16 v20, v15

    .line 251
    :goto_4
    add-int/lit8 v0, v0, 0x1

    .line 253
    move/from16 v8, v19

    .line 255
    move-object/from16 v15, v20

    .line 257
    move-object/from16 v2, v21

    .line 259
    goto :goto_3

    .line 261
    :cond_3
    move-object/from16 v21, v2

    .line 262
    move-object/from16 v20, v15

    .line 264
    if-eqz v16, :cond_4

    .line 266
    const/4 v9, 0x0

    .line 268
    :cond_4
    :goto_5
    const-string v0, "KeyboardShortcuts"

    .line 269
    if-nez v9, :cond_5

    .line 271
    goto/16 :goto_8

    .line 273
    :cond_5
    invoke-virtual {v13}, Landroid/view/KeyboardShortcutInfo;->getBaseCharacter()C

    .line 275
    move-result v2

    .line 278
    if-lez v2, :cond_6

    .line 279
    invoke-virtual {v13}, Landroid/view/KeyboardShortcutInfo;->getBaseCharacter()C

    .line 281
    move-result v2

    .line 284
    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    .line 285
    move-result-object v2

    .line 288
    goto :goto_6

    .line 289
    :cond_6
    iget-object v2, v1, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterDrawables:Landroid/util/SparseArray;

    .line 290
    invoke-virtual {v13}, Landroid/view/KeyboardShortcutInfo;->getKeycode()I

    .line 292
    move-result v4

    .line 295
    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 296
    move-result-object v4

    .line 299
    iget-object v8, v1, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    .line 300
    if-eqz v4, :cond_7

    .line 302
    invoke-virtual {v13}, Landroid/view/KeyboardShortcutInfo;->getKeycode()I

    .line 304
    move-result v4

    .line 307
    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 308
    move-result-object v2

    .line 311
    check-cast v2, Landroid/graphics/drawable/Drawable;

    .line 312
    invoke-virtual {v13}, Landroid/view/KeyboardShortcutInfo;->getKeycode()I

    .line 314
    move-result v4

    .line 317
    invoke-virtual {v8, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 318
    move-result-object v4

    .line 321
    check-cast v4, Ljava/lang/String;

    .line 322
    goto :goto_7

    .line 324
    :cond_7
    invoke-virtual {v13}, Landroid/view/KeyboardShortcutInfo;->getKeycode()I

    .line 325
    move-result v2

    .line 328
    invoke-virtual {v8, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 329
    move-result-object v2

    .line 332
    if-eqz v2, :cond_8

    .line 333
    invoke-virtual {v13}, Landroid/view/KeyboardShortcutInfo;->getKeycode()I

    .line 335
    move-result v2

    .line 338
    invoke-virtual {v8, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 339
    move-result-object v2

    .line 342
    check-cast v2, Ljava/lang/String;

    .line 343
    goto :goto_6

    .line 345
    :cond_8
    invoke-virtual {v13}, Landroid/view/KeyboardShortcutInfo;->getKeycode()I

    .line 346
    move-result v2

    .line 349
    if-nez v2, :cond_9

    .line 350
    goto :goto_9

    .line 352
    :cond_9
    iget-object v2, v1, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mKeyCharacterMap:Landroid/view/KeyCharacterMap;

    .line 353
    invoke-virtual {v13}, Landroid/view/KeyboardShortcutInfo;->getKeycode()I

    .line 355
    move-result v4

    .line 358
    invoke-virtual {v2, v4}, Landroid/view/KeyCharacterMap;->getDisplayLabel(I)C

    .line 359
    move-result v2

    .line 362
    if-eqz v2, :cond_a

    .line 363
    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    .line 365
    move-result-object v2

    .line 368
    goto :goto_6

    .line 369
    :cond_a
    iget-object v2, v1, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mBackupKeyCharacterMap:Landroid/view/KeyCharacterMap;

    .line 370
    invoke-virtual {v13}, Landroid/view/KeyboardShortcutInfo;->getKeycode()I

    .line 372
    move-result v4

    .line 375
    invoke-virtual {v2, v4}, Landroid/view/KeyCharacterMap;->getDisplayLabel(I)C

    .line 376
    move-result v2

    .line 379
    if-eqz v2, :cond_c

    .line 380
    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    .line 382
    move-result-object v2

    .line 385
    :goto_6
    move-object v4, v2

    .line 386
    const/4 v2, 0x0

    .line 387
    :goto_7
    if-eqz v4, :cond_b

    .line 388
    new-instance v8, Lcom/android/systemui/statusbar/KeyboardShortcuts$StringDrawableContainer;

    .line 390
    invoke-direct {v8, v4, v2}, Lcom/android/systemui/statusbar/KeyboardShortcuts$StringDrawableContainer;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 392
    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 395
    goto :goto_9

    .line 398
    :cond_b
    const-string v2, "Keyboard Shortcut does not have a text representation, skipping."

    .line 399
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    goto :goto_9

    .line 404
    :cond_c
    :goto_8
    const/4 v9, 0x0

    .line 405
    :goto_9
    if-nez v9, :cond_d

    .line 406
    const-string v2, "Keyboard Shortcut contains unsupported keys, skipping."

    .line 408
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    move-object/from16 v24, v1

    .line 413
    move-object/from16 v25, v3

    .line 415
    move/from16 v26, v10

    .line 417
    move/from16 v23, v12

    .line 419
    const v1, 0x7f0d00f5    # @layout/keyboard_shortcuts_key_view 'res/layout/keyboard_shortcuts_key_view.xml'

    .line 421
    goto/16 :goto_c

    .line 424
    :cond_d
    const v0, 0x7f0d00eb    # @layout/keyboard_shortcut_app_item 'res/layout/keyboard_shortcut_app_item.xml'

    .line 426
    const/4 v2, 0x0

    .line 429
    invoke-virtual {v6, v0, v5, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 430
    move-result-object v0

    .line 433
    invoke-virtual {v13}, Landroid/view/KeyboardShortcutInfo;->getIcon()Landroid/graphics/drawable/Icon;

    .line 434
    move-result-object v4

    .line 437
    if-eqz v4, :cond_e

    .line 438
    const v4, 0x7f0a0469    # @id/keyboard_shortcuts_icon

    .line 440
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 443
    move-result-object v4

    .line 446
    check-cast v4, Landroid/widget/ImageView;

    .line 447
    invoke-virtual {v13}, Landroid/view/KeyboardShortcutInfo;->getIcon()Landroid/graphics/drawable/Icon;

    .line 449
    move-result-object v8

    .line 452
    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setImageIcon(Landroid/graphics/drawable/Icon;)V

    .line 453
    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 456
    :cond_e
    const v2, 0x7f0a046b    # @id/keyboard_shortcuts_keyword

    .line 459
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 462
    move-result-object v2

    .line 465
    check-cast v2, Landroid/widget/TextView;

    .line 466
    invoke-virtual {v13}, Landroid/view/KeyboardShortcutInfo;->getLabel()Ljava/lang/CharSequence;

    .line 468
    move-result-object v4

    .line 471
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 472
    invoke-virtual {v13}, Landroid/view/KeyboardShortcutInfo;->getIcon()Landroid/graphics/drawable/Icon;

    .line 475
    move-result-object v4

    .line 478
    if-eqz v4, :cond_f

    .line 479
    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 481
    move-result-object v4

    .line 484
    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 485
    const/16 v8, 0x14

    .line 487
    invoke-virtual {v4, v8}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 489
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 492
    :cond_f
    const v2, 0x7f0a046a    # @id/keyboard_shortcuts_item_container

    .line 495
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 498
    move-result-object v2

    .line 501
    check-cast v2, Landroid/view/ViewGroup;

    .line 502
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 504
    move-result v4

    .line 507
    const/4 v8, 0x0

    .line 508
    :goto_a
    if-ge v8, v4, :cond_12

    .line 509
    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 511
    move-result-object v13

    .line 514
    check-cast v13, Lcom/android/systemui/statusbar/KeyboardShortcuts$StringDrawableContainer;

    .line 515
    iget-object v15, v13, Lcom/android/systemui/statusbar/KeyboardShortcuts$StringDrawableContainer;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 517
    move/from16 v16, v4

    .line 519
    iget-object v4, v13, Lcom/android/systemui/statusbar/KeyboardShortcuts$StringDrawableContainer;->mString:Ljava/lang/String;

    .line 521
    if-eqz v15, :cond_10

    .line 523
    const v15, 0x7f0d00f0    # @layout/keyboard_shortcuts_key_icon_view 'res/layout/keyboard_shortcuts_key_icon_view.xml'

    .line 525
    move-object/from16 v22, v9

    .line 528
    const/4 v9, 0x0

    .line 530
    invoke-virtual {v6, v15, v2, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 531
    move-result-object v15

    .line 534
    check-cast v15, Landroid/widget/ImageView;

    .line 535
    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 537
    invoke-static {v12, v12, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 539
    move-result-object v9

    .line 542
    move/from16 v23, v12

    .line 543
    new-instance v12, Landroid/graphics/Canvas;

    .line 545
    invoke-direct {v12, v9}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 547
    move-object/from16 v24, v1

    .line 550
    invoke-virtual {v12}, Landroid/graphics/Canvas;->getWidth()I

    .line 552
    move-result v1

    .line 555
    move-object/from16 v25, v3

    .line 556
    invoke-virtual {v12}, Landroid/graphics/Canvas;->getHeight()I

    .line 558
    move-result v3

    .line 561
    iget-object v13, v13, Lcom/android/systemui/statusbar/KeyboardShortcuts$StringDrawableContainer;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 562
    move/from16 v26, v10

    .line 564
    const/4 v10, 0x0

    .line 566
    invoke-virtual {v13, v10, v10, v1, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 567
    invoke-virtual {v13, v12}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 570
    invoke-virtual {v15, v9}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 573
    const/4 v1, 0x1

    .line 576
    invoke-virtual {v15, v1}, Landroid/widget/ImageView;->setImportantForAccessibility(I)V

    .line 577
    new-instance v1, Lcom/android/systemui/statusbar/KeyboardShortcuts$ShortcutKeyAccessibilityDelegate;

    .line 580
    invoke-direct {v1, v4}, Lcom/android/systemui/statusbar/KeyboardShortcuts$ShortcutKeyAccessibilityDelegate;-><init>(Ljava/lang/String;)V

    .line 582
    invoke-virtual {v15, v1}, Landroid/widget/ImageView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 585
    invoke-virtual {v2, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 588
    const v1, 0x7f0d00f5    # @layout/keyboard_shortcuts_key_view 'res/layout/keyboard_shortcuts_key_view.xml'

    .line 591
    goto :goto_b

    .line 594
    :cond_10
    move-object/from16 v24, v1

    .line 595
    move-object/from16 v25, v3

    .line 597
    move-object/from16 v22, v9

    .line 599
    move/from16 v26, v10

    .line 601
    move/from16 v23, v12

    .line 603
    const/4 v10, 0x0

    .line 605
    const v1, 0x7f0d00f5    # @layout/keyboard_shortcuts_key_view 'res/layout/keyboard_shortcuts_key_view.xml'

    .line 606
    if-eqz v4, :cond_11

    .line 609
    invoke-virtual {v6, v1, v2, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 611
    move-result-object v3

    .line 614
    check-cast v3, Landroid/widget/TextView;

    .line 615
    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setMinimumWidth(I)V

    .line 617
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 620
    new-instance v9, Lcom/android/systemui/statusbar/KeyboardShortcuts$ShortcutKeyAccessibilityDelegate;

    .line 623
    invoke-direct {v9, v4}, Lcom/android/systemui/statusbar/KeyboardShortcuts$ShortcutKeyAccessibilityDelegate;-><init>(Ljava/lang/String;)V

    .line 625
    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 628
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 631
    :cond_11
    :goto_b
    add-int/lit8 v8, v8, 0x1

    .line 634
    move/from16 v4, v16

    .line 636
    move-object/from16 v9, v22

    .line 638
    move/from16 v12, v23

    .line 640
    move-object/from16 v1, v24

    .line 642
    move-object/from16 v3, v25

    .line 644
    move/from16 v10, v26

    .line 646
    goto/16 :goto_a

    .line 648
    :cond_12
    move-object/from16 v24, v1

    .line 650
    move-object/from16 v25, v3

    .line 652
    move/from16 v26, v10

    .line 654
    move/from16 v23, v12

    .line 656
    const v1, 0x7f0d00f5    # @layout/keyboard_shortcuts_key_view 'res/layout/keyboard_shortcuts_key_view.xml'

    .line 658
    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 661
    :goto_c
    add-int/lit8 v14, v14, 0x1

    .line 664
    move-object/from16 v0, v17

    .line 666
    move-object/from16 v4, v18

    .line 668
    move-object v13, v4

    .line 670
    move/from16 v8, v19

    .line 671
    move-object/from16 v15, v20

    .line 673
    move-object/from16 v2, v21

    .line 675
    move/from16 v12, v23

    .line 677
    move-object/from16 v1, v24

    .line 679
    move-object/from16 v3, v25

    .line 681
    move/from16 v10, v26

    .line 683
    const/4 v9, 0x0

    .line 685
    goto/16 :goto_2

    .line 686
    :cond_13
    move-object/from16 v17, v0

    .line 688
    move-object/from16 v24, v1

    .line 690
    move-object/from16 v21, v2

    .line 692
    move-object/from16 v25, v3

    .line 694
    move-object/from16 v18, v4

    .line 696
    move/from16 v26, v10

    .line 698
    move/from16 v23, v12

    .line 700
    const v1, 0x7f0d00f5    # @layout/keyboard_shortcuts_key_view 'res/layout/keyboard_shortcuts_key_view.xml'

    .line 702
    invoke-virtual {v13, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 705
    add-int/lit8 v0, v7, -0x1

    .line 708
    move/from16 v9, v26

    .line 710
    if-ge v9, v0, :cond_14

    .line 712
    const v0, 0x7f0d00ec    # @layout/keyboard_shortcuts_category_separator 'res/layout/keyboard_shortcuts_category_separator.xml'

    .line 714
    const/4 v2, 0x0

    .line 717
    invoke-virtual {v6, v0, v13, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 718
    move-result-object v0

    .line 721
    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 722
    goto :goto_d

    .line 725
    :cond_14
    const/4 v2, 0x0

    .line 726
    :goto_d
    add-int/lit8 v10, v9, 0x1

    .line 727
    move v8, v1

    .line 729
    move v9, v2

    .line 730
    move-object/from16 v0, v17

    .line 731
    move-object/from16 v4, v18

    .line 733
    move-object/from16 v2, v21

    .line 735
    move/from16 v12, v23

    .line 737
    move-object/from16 v1, v24

    .line 739
    move-object/from16 v3, v25

    .line 741
    const/4 v5, 0x0

    .line 743
    goto/16 :goto_0

    .line 744
    :cond_15
    move-object/from16 v24, v1

    .line 746
    move-object v0, v2

    .line 748
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 749
    iget-object v2, v1, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mDialogCloseListener:Lcom/android/systemui/statusbar/KeyboardShortcuts$1;

    .line 752
    const v3, 0x7f1309a4    # @string/quick_settings_done 'Done'

    .line 754
    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 757
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 760
    move-result-object v0

    .line 763
    iput-object v0, v1, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mKeyboardShortcutsDialog:Landroid/app/Dialog;

    .line 764
    const/4 v2, 0x1

    .line 766
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 767
    iget-object v0, v1, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mKeyboardShortcutsDialog:Landroid/app/Dialog;

    .line 770
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 772
    move-result-object v0

    .line 775
    const/16 v2, 0x7d8

    .line 776
    invoke-virtual {v0, v2}, Landroid/view/Window;->setType(I)V

    .line 778
    sget-object v2, Lcom/android/systemui/statusbar/KeyboardShortcuts;->sLock:Ljava/lang/Object;

    .line 781
    monitor-enter v2

    .line 783
    :try_start_0
    sget-object v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->sInstance:Lcom/android/systemui/statusbar/KeyboardShortcuts;

    .line 784
    if-eqz v0, :cond_16

    .line 786
    iget-object v0, v1, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mKeyboardShortcutsDialog:Landroid/app/Dialog;

    .line 788
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 790
    :cond_16
    monitor-exit v2

    .line 793
    return-void

    .line 794
    :catchall_0
    move-exception v0

    .line 795
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 796
    throw v0
    .line 797
.end method
