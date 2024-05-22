.class public final Lcom/miui/systemui/MiuiKeyboardShotcutsAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final datas:Ljava/util/ArrayList;

.field public final layoutInflater:Landroid/view/LayoutInflater;

.field public final miuiKeyboardShortcuts:Lcom/miui/systemui/MiuiKeyboardShortcuts;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/systemui/MiuiKeyboardShortcuts;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/miui/systemui/MiuiKeyboardShotcutsAdapter;->miuiKeyboardShortcuts:Lcom/miui/systemui/MiuiKeyboardShortcuts;

    .line 5
    new-instance p2, Ljava/util/ArrayList;

    .line 7
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iput-object p2, p0, Lcom/miui/systemui/MiuiKeyboardShotcutsAdapter;->datas:Ljava/util/ArrayList;

    .line 12
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 14
    move-result-object p1

    .line 17
    iput-object p1, p0, Lcom/miui/systemui/MiuiKeyboardShotcutsAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    .line 18
    check-cast p3, Ljava/util/ArrayList;

    .line 20
    iput-object p3, p0, Lcom/miui/systemui/MiuiKeyboardShotcutsAdapter;->datas:Ljava/util/ArrayList;

    .line 22
    return-void
    .line 24
.end method


# virtual methods
.method public final getItemCount()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/MiuiKeyboardShotcutsAdapter;->datas:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 4
    move-result p0

    .line 7
    return p0
    .line 8
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 12

    .line 1
    check-cast p1, Lcom/miui/systemui/MiuiKeyboardShotcutsAdapter$ShotcutsViewHolder;

    .line 2
    iget-object v0, p0, Lcom/miui/systemui/MiuiKeyboardShotcutsAdapter;->datas:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 6
    move-result-object v1

    .line 9
    check-cast v1, Landroid/view/KeyboardShortcutInfo;

    .line 10
    invoke-virtual {v1}, Landroid/view/KeyboardShortcutInfo;->getIcon()Landroid/graphics/drawable/Icon;

    .line 12
    move-result-object v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    move-result-object v1

    .line 21
    check-cast v1, Landroid/view/KeyboardShortcutInfo;

    .line 22
    invoke-virtual {v1}, Landroid/view/KeyboardShortcutInfo;->getIcon()Landroid/graphics/drawable/Icon;

    .line 24
    move-result-object v1

    .line 27
    iget-object v2, p1, Lcom/miui/systemui/MiuiKeyboardShotcutsAdapter$ShotcutsViewHolder;->icon:Landroid/widget/ImageView;

    .line 28
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageIcon(Landroid/graphics/drawable/Icon;)V

    .line 30
    :cond_0
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 33
    move-result-object v1

    .line 36
    check-cast v1, Landroid/view/KeyboardShortcutInfo;

    .line 37
    invoke-virtual {v1}, Landroid/view/KeyboardShortcutInfo;->getLabel()Ljava/lang/CharSequence;

    .line 39
    move-result-object v1

    .line 42
    iget-object v2, p1, Lcom/miui/systemui/MiuiKeyboardShotcutsAdapter$ShotcutsViewHolder;->keyword:Landroid/widget/TextView;

    .line 43
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 48
    move-result-object p2

    .line 51
    check-cast p2, Landroid/view/KeyboardShortcutInfo;

    .line 52
    iget-object v0, p0, Lcom/miui/systemui/MiuiKeyboardShotcutsAdapter;->miuiKeyboardShortcuts:Lcom/miui/systemui/MiuiKeyboardShortcuts;

    .line 54
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    new-instance v1, Ljava/util/ArrayList;

    .line 59
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 61
    invoke-virtual {p2}, Landroid/view/KeyboardShortcutInfo;->getModifiers()I

    .line 64
    move-result v2

    .line 67
    const/4 v3, 0x0

    .line 68
    const/4 v4, 0x0

    .line 69
    if-nez v2, :cond_1

    .line 70
    goto/16 :goto_1

    .line 72
    :cond_1
    sget-object v5, Lcom/miui/systemui/MiuiKeyboardShortcutsData;->specialCharacterNames:Landroid/util/SparseArray;

    .line 74
    const/4 v5, -0x1

    .line 76
    iget-object v6, v0, Lcom/miui/systemui/MiuiKeyboardShortcuts;->context:Landroid/content/Context;

    .line 77
    if-ne v2, v5, :cond_2

    .line 79
    new-instance v2, Lcom/miui/systemui/MiuiKeyboardShortcuts$MiuiStringDrawableContainer;

    .line 81
    const v5, 0x7f13073c    # @string/miui_keyboard_shortcut_click 'Press'

    .line 83
    invoke-virtual {v6, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 86
    move-result-object v5

    .line 89
    invoke-direct {v2, v5, v3}, Lcom/miui/systemui/MiuiKeyboardShortcuts$MiuiStringDrawableContainer;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 90
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    goto/16 :goto_1

    .line 96
    :cond_2
    const/4 v5, -0x2

    .line 98
    if-ne v2, v5, :cond_3

    .line 99
    new-instance v2, Lcom/miui/systemui/MiuiKeyboardShortcuts$MiuiStringDrawableContainer;

    .line 101
    const v5, 0x7f13073d    # @string/miui_keyboard_shortcut_double_click 'Double press'

    .line 103
    invoke-virtual {v6, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 106
    move-result-object v5

    .line 109
    invoke-direct {v2, v5, v3}, Lcom/miui/systemui/MiuiKeyboardShortcuts$MiuiStringDrawableContainer;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 110
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    goto :goto_1

    .line 116
    :cond_3
    const/16 v5, 0x75

    .line 117
    const v7, 0x7f081073    # @drawable/ic_miui_ksh_meta_wrapper 'res/drawable/ic_miui_ksh_meta_wrapper.xml'

    .line 119
    const-string v8, "Meta Left"

    .line 122
    if-eq v2, v5, :cond_7

    .line 124
    const/16 v5, 0x76

    .line 126
    if-eq v2, v5, :cond_6

    .line 128
    iget-object v5, v0, Lcom/miui/systemui/MiuiKeyboardShortcuts;->modifierList:[I

    .line 130
    array-length v6, v5

    .line 132
    move v7, v4

    .line 133
    :goto_0
    if-ge v7, v6, :cond_5

    .line 134
    aget v8, v5, v7

    .line 136
    and-int v9, v2, v8

    .line 138
    if-eqz v9, :cond_4

    .line 140
    new-instance v9, Lcom/miui/systemui/MiuiKeyboardShortcuts$MiuiStringDrawableContainer;

    .line 142
    sget-object v10, Lcom/miui/systemui/MiuiKeyboardShortcutsData;->modifierNames:Landroid/util/SparseArray;

    .line 144
    invoke-virtual {v10, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 146
    move-result-object v10

    .line 149
    check-cast v10, Ljava/lang/String;

    .line 150
    sget-object v11, Lcom/miui/systemui/MiuiKeyboardShortcutsData;->modifierDrawables:Landroid/util/SparseArray;

    .line 152
    invoke-virtual {v11, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 154
    move-result-object v11

    .line 157
    check-cast v11, Landroid/graphics/drawable/Drawable;

    .line 158
    invoke-direct {v9, v10, v11}, Lcom/miui/systemui/MiuiKeyboardShortcuts$MiuiStringDrawableContainer;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 160
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    not-int v8, v8

    .line 166
    and-int/2addr v2, v8

    .line 167
    :cond_4
    add-int/lit8 v7, v7, 0x1

    .line 168
    goto :goto_0

    .line 170
    :cond_5
    if-eqz v2, :cond_8

    .line 171
    move-object v1, v3

    .line 173
    goto :goto_1

    .line 174
    :cond_6
    new-instance v2, Lcom/miui/systemui/MiuiKeyboardShortcuts$MiuiStringDrawableContainer;

    .line 175
    invoke-virtual {v6, v7}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 177
    move-result-object v5

    .line 180
    invoke-direct {v2, v8, v5}, Lcom/miui/systemui/MiuiKeyboardShortcuts$MiuiStringDrawableContainer;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 181
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    new-instance v2, Lcom/miui/systemui/MiuiKeyboardShortcuts$MiuiStringDrawableContainer;

    .line 187
    const-string v5, "Shift"

    .line 189
    invoke-direct {v2, v5, v3}, Lcom/miui/systemui/MiuiKeyboardShortcuts$MiuiStringDrawableContainer;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 191
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    goto :goto_1

    .line 197
    :cond_7
    new-instance v2, Lcom/miui/systemui/MiuiKeyboardShortcuts$MiuiStringDrawableContainer;

    .line 198
    invoke-virtual {v6, v7}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 200
    move-result-object v5

    .line 203
    invoke-direct {v2, v8, v5}, Lcom/miui/systemui/MiuiKeyboardShortcuts$MiuiStringDrawableContainer;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 204
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 207
    :cond_8
    :goto_1
    const-string v2, "MiuiKeyboardShortcuts"

    .line 210
    if-nez v1, :cond_9

    .line 212
    goto/16 :goto_4

    .line 214
    :cond_9
    invoke-virtual {p2}, Landroid/view/KeyboardShortcutInfo;->getBaseCharacter()C

    .line 216
    move-result v5

    .line 219
    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    .line 220
    move-result v5

    .line 223
    if-lez v5, :cond_a

    .line 224
    invoke-virtual {p2}, Landroid/view/KeyboardShortcutInfo;->getBaseCharacter()C

    .line 226
    move-result p2

    .line 229
    invoke-static {p2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    .line 230
    move-result-object p2

    .line 233
    goto :goto_2

    .line 234
    :cond_a
    sget-object v5, Lcom/miui/systemui/MiuiKeyboardShortcutsData;->specialCharacterDrawables:Landroid/util/SparseArray;

    .line 235
    invoke-virtual {p2}, Landroid/view/KeyboardShortcutInfo;->getKeycode()I

    .line 237
    move-result v6

    .line 240
    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 241
    move-result-object v6

    .line 244
    if-eqz v6, :cond_b

    .line 245
    invoke-virtual {p2}, Landroid/view/KeyboardShortcutInfo;->getKeycode()I

    .line 247
    move-result v0

    .line 250
    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 251
    move-result-object v0

    .line 254
    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 255
    sget-object v5, Lcom/miui/systemui/MiuiKeyboardShortcutsData;->specialCharacterNames:Landroid/util/SparseArray;

    .line 257
    invoke-virtual {p2}, Landroid/view/KeyboardShortcutInfo;->getKeycode()I

    .line 259
    move-result p2

    .line 262
    invoke-virtual {v5, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 263
    move-result-object p2

    .line 266
    check-cast p2, Ljava/lang/String;

    .line 267
    goto :goto_3

    .line 269
    :cond_b
    sget-object v5, Lcom/miui/systemui/MiuiKeyboardShortcutsData;->specialCharacterNames:Landroid/util/SparseArray;

    .line 270
    invoke-virtual {p2}, Landroid/view/KeyboardShortcutInfo;->getKeycode()I

    .line 272
    move-result v6

    .line 275
    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 276
    move-result-object v6

    .line 279
    if-eqz v6, :cond_c

    .line 280
    invoke-virtual {p2}, Landroid/view/KeyboardShortcutInfo;->getKeycode()I

    .line 282
    move-result p2

    .line 285
    invoke-virtual {v5, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 286
    move-result-object p2

    .line 289
    check-cast p2, Ljava/lang/String;

    .line 290
    goto :goto_2

    .line 292
    :cond_c
    invoke-virtual {p2}, Landroid/view/KeyboardShortcutInfo;->getKeycode()I

    .line 293
    move-result v5

    .line 296
    if-nez v5, :cond_d

    .line 297
    goto :goto_5

    .line 299
    :cond_d
    iget-object v5, v0, Lcom/miui/systemui/MiuiKeyboardShortcuts;->keyCharacterMap:Landroid/view/KeyCharacterMap;

    .line 300
    if-nez v5, :cond_e

    .line 302
    move-object v5, v3

    .line 304
    :cond_e
    invoke-virtual {p2}, Landroid/view/KeyboardShortcutInfo;->getKeycode()I

    .line 305
    move-result v6

    .line 308
    invoke-virtual {v5, v6}, Landroid/view/KeyCharacterMap;->getDisplayLabel(I)C

    .line 309
    move-result v5

    .line 312
    if-eqz v5, :cond_f

    .line 313
    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    .line 315
    move-result-object p2

    .line 318
    goto :goto_2

    .line 319
    :cond_f
    iget-object v0, v0, Lcom/miui/systemui/MiuiKeyboardShortcuts;->backupKeyCharacterMap:Landroid/view/KeyCharacterMap;

    .line 320
    if-nez v0, :cond_10

    .line 322
    move-object v0, v3

    .line 324
    :cond_10
    invoke-virtual {p2}, Landroid/view/KeyboardShortcutInfo;->getKeycode()I

    .line 325
    move-result p2

    .line 328
    invoke-virtual {v0, p2}, Landroid/view/KeyCharacterMap;->getDisplayLabel(I)C

    .line 329
    move-result p2

    .line 332
    if-eqz p2, :cond_12

    .line 333
    invoke-static {p2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    .line 335
    move-result-object p2

    .line 338
    :goto_2
    move-object v0, v3

    .line 339
    :goto_3
    if-eqz p2, :cond_11

    .line 340
    new-instance v5, Lcom/miui/systemui/MiuiKeyboardShortcuts$MiuiStringDrawableContainer;

    .line 342
    invoke-direct {v5, p2, v0}, Lcom/miui/systemui/MiuiKeyboardShortcuts$MiuiStringDrawableContainer;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 344
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 347
    goto :goto_5

    .line 350
    :cond_11
    const-string p2, "Keyboard Shortcut does not have a text representation, skipping."

    .line 351
    invoke-static {v2, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    goto :goto_5

    .line 356
    :cond_12
    :goto_4
    move-object v1, v3

    .line 357
    :goto_5
    if-nez v1, :cond_13

    .line 358
    const-string p0, "Keyboard Shortcut contains unsupported keys, skipping."

    .line 360
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    goto :goto_8

    .line 365
    :cond_13
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 366
    move-result p2

    .line 369
    move v0, v4

    .line 370
    :goto_6
    if-ge v0, p2, :cond_16

    .line 371
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 373
    move-result-object v2

    .line 376
    check-cast v2, Lcom/miui/systemui/MiuiKeyboardShortcuts$MiuiStringDrawableContainer;

    .line 377
    iget-object v5, v2, Lcom/miui/systemui/MiuiKeyboardShortcuts$MiuiStringDrawableContainer;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 379
    const v6, 0x7f0d01ad    # @layout/miui_keyboard_shortcuts_key_view 'res/layout/miui_keyboard_shortcuts_key_view.xml'

    .line 381
    iget-object v7, p0, Lcom/miui/systemui/MiuiKeyboardShotcutsAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    .line 384
    iget-object v8, p1, Lcom/miui/systemui/MiuiKeyboardShotcutsAdapter$ShotcutsViewHolder;->shortcut:Landroid/view/ViewGroup;

    .line 386
    iget-object v9, v2, Lcom/miui/systemui/MiuiKeyboardShortcuts$MiuiStringDrawableContainer;->mString:Ljava/lang/String;

    .line 388
    if-eqz v5, :cond_14

    .line 390
    const v5, 0x7f0d01ac    # @layout/miui_keyboard_shortcuts_key_icon_view 'res/layout/miui_keyboard_shortcuts_key_icon_view.xml'

    .line 392
    invoke-virtual {v7, v5, v8, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 395
    move-result-object v5

    .line 398
    check-cast v5, Landroid/widget/ImageView;

    .line 399
    invoke-virtual {v7, v6, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 401
    move-result-object v6

    .line 404
    check-cast v6, Landroid/widget/TextView;

    .line 405
    invoke-virtual {v6, v4, v4}, Landroid/widget/TextView;->measure(II)V

    .line 407
    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredHeight()I

    .line 410
    move-result v6

    .line 413
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 414
    invoke-static {v6, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 416
    move-result-object v6

    .line 419
    new-instance v7, Landroid/graphics/Canvas;

    .line 420
    invoke-direct {v7, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 422
    iget-object v2, v2, Lcom/miui/systemui/MiuiKeyboardShortcuts$MiuiStringDrawableContainer;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 425
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 427
    invoke-virtual {v7}, Landroid/graphics/Canvas;->getWidth()I

    .line 430
    move-result v10

    .line 433
    invoke-virtual {v7}, Landroid/graphics/Canvas;->getHeight()I

    .line 434
    move-result v11

    .line 437
    invoke-virtual {v2, v4, v4, v10, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 438
    invoke-virtual {v2, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 441
    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 444
    const/4 v2, 0x1

    .line 447
    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setImportantForAccessibility(I)V

    .line 448
    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 451
    invoke-virtual {v8, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 454
    goto :goto_7

    .line 457
    :cond_14
    if-eqz v9, :cond_15

    .line 458
    invoke-virtual {v7, v6, v8, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 460
    move-result-object v2

    .line 463
    check-cast v2, Landroid/widget/TextView;

    .line 464
    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 466
    invoke-virtual {v8, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 469
    :cond_15
    :goto_7
    add-int/lit8 v0, v0, 0x1

    .line 472
    goto :goto_6

    .line 474
    :cond_16
    :goto_8
    return-void
    .line 475
.end method

.method public final onCreateViewHolder(ILandroidx/recyclerview/widget/RecyclerView;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    .line 1
    new-instance p1, Lcom/miui/systemui/MiuiKeyboardShotcutsAdapter$ShotcutsViewHolder;

    .line 2
    iget-object p0, p0, Lcom/miui/systemui/MiuiKeyboardShotcutsAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    .line 4
    const v0, 0x7f0d0348    # @layout/shortcuts_item 'res/layout/shortcuts_item.xml'

    .line 6
    const/4 v1, 0x0

    .line 9
    invoke-virtual {p0, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 10
    move-result-object p0

    .line 13
    invoke-direct {p1, p0}, Lcom/miui/systemui/MiuiKeyboardShotcutsAdapter$ShotcutsViewHolder;-><init>(Landroid/view/View;)V

    .line 14
    return-object p1
    .line 17
.end method
