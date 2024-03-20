.class public Landroidx/slice/widget/GridRowView;
.super Landroidx/slice/widget/SliceChildView;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final mForeground:Landroid/view/View;

.field public mGridContent:Landroidx/slice/widget/GridContent;

.field public final mGutter:I

.field public mHiddenItemCount:I

.field public final mIconSize:I

.field public final mLargeImageHeight:I

.field public final mLoc:[I

.field public mMaxCellUpdateScheduled:Z

.field public mMaxCells:I

.field public final mMaxCellsUpdater:Landroidx/slice/widget/GridRowView$2;

.field public mRowCount:I

.field public mRowIndex:I

.field public final mSmallImageMinWidth:I

.field public final mSmallImageSize:I

.field public final mTextPadding:I

.field public final mViewContainer:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Landroidx/slice/widget/GridRowView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 2
    invoke-direct {p0, p1, p2}, Landroidx/slice/widget/SliceChildView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 3
    iput-object p1, p0, Landroidx/slice/widget/GridRowView;->mLoc:[I

    const/4 p1, -0x1

    .line 4
    iput p1, p0, Landroidx/slice/widget/GridRowView;->mMaxCells:I

    .line 5
    new-instance p2, Landroidx/slice/widget/GridRowView$2;

    invoke-direct {p2, p0}, Landroidx/slice/widget/GridRowView$2;-><init>(Landroidx/slice/widget/GridRowView;)V

    iput-object p2, p0, Landroidx/slice/widget/GridRowView;->mMaxCellsUpdater:Landroidx/slice/widget/GridRowView$2;

    .line 6
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 7
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/slice/widget/GridRowView;->mViewContainer:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 9
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, p1, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v1, 0x10

    .line 10
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    const v0, 0x7f070049    # @dimen/abc_slice_icon_size '24.0dp'

    .line 11
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroidx/slice/widget/GridRowView;->mIconSize:I

    const v0, 0x7f070058    # @dimen/abc_slice_small_image_size '48.0dp'

    .line 12
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroidx/slice/widget/GridRowView;->mSmallImageSize:I

    const v0, 0x7f070041    # @dimen/abc_slice_grid_image_only_height '86.0dp'

    .line 13
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroidx/slice/widget/GridRowView;->mLargeImageHeight:I

    const v0, 0x7f070040    # @dimen/abc_slice_grid_image_min_width '60.0dp'

    .line 14
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroidx/slice/widget/GridRowView;->mSmallImageMinWidth:I

    const v0, 0x7f07003f    # @dimen/abc_slice_grid_gutter '4.0dp'

    .line 15
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroidx/slice/widget/GridRowView;->mGutter:I

    const v0, 0x7f070048    # @dimen/abc_slice_grid_text_padding '10.0dp'

    .line 16
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Landroidx/slice/widget/GridRowView;->mTextPadding:I

    .line 17
    new-instance p2, Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Landroidx/slice/widget/GridRowView;->mForeground:Landroid/view/View;

    .line 18
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, p1, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public final addCell(Landroidx/slice/widget/GridContent$CellContent;II)V
    .locals 28

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 4
    move/from16 v2, p2

    .line 6
    move/from16 v3, p3

    .line 8
    invoke-virtual/range {p0 .. p0}, Landroidx/slice/widget/SliceChildView;->getMode()I

    .line 10
    move-result v4

    .line 13
    const/4 v7, 0x1

    .line 14
    if-ne v4, v7, :cond_1

    .line 15
    iget-object v4, v0, Landroidx/slice/widget/GridRowView;->mGridContent:Landroidx/slice/widget/GridContent;

    .line 17
    iget-object v4, v4, Landroidx/slice/widget/GridContent;->mFirstImage:Landroidx/core/graphics/drawable/IconCompat;

    .line 19
    if-eqz v4, :cond_0

    .line 21
    move v4, v7

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v4, 0x0

    .line 25
    :goto_0
    if-eqz v4, :cond_1

    .line 26
    move v4, v7

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    const/4 v4, 0x2

    .line 30
    :goto_1
    new-instance v8, Landroid/widget/LinearLayout;

    .line 31
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 33
    move-result-object v9

    .line 36
    invoke-direct {v8, v9}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 37
    invoke-virtual {v8, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 40
    invoke-virtual {v8, v7}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 43
    iget-object v9, v1, Landroidx/slice/widget/GridContent$CellContent;->mCellItems:Ljava/util/ArrayList;

    .line 46
    iget-object v10, v1, Landroidx/slice/widget/GridContent$CellContent;->mContentIntent:Landroidx/slice/SliceItem;

    .line 48
    iget-object v11, v1, Landroidx/slice/widget/GridContent$CellContent;->mPicker:Landroidx/slice/SliceItem;

    .line 50
    iget-object v12, v1, Landroidx/slice/widget/GridContent$CellContent;->mToggleItem:Landroidx/slice/SliceItem;

    .line 52
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 54
    move-result v13

    .line 57
    if-ne v13, v7, :cond_2

    .line 58
    move v13, v7

    .line 60
    goto :goto_2

    .line 61
    :cond_2
    const/4 v13, 0x0

    .line 62
    :goto_2
    const-string/jumbo v15, "title"

    .line 63
    const-string v5, "large"

    .line 66
    const-string/jumbo v6, "text"

    .line 68
    if-nez v13, :cond_7

    .line 71
    invoke-virtual/range {p0 .. p0}, Landroidx/slice/widget/SliceChildView;->getMode()I

    .line 73
    move-result v14

    .line 76
    if-ne v14, v7, :cond_7

    .line 77
    new-instance v14, Ljava/util/ArrayList;

    .line 79
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 81
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 84
    move-result-object v17

    .line 87
    :goto_3
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    .line 88
    move-result v18

    .line 91
    if-eqz v18, :cond_4

    .line 92
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 94
    move-result-object v18

    .line 97
    move-object/from16 v7, v18

    .line 98
    check-cast v7, Landroidx/slice/SliceItem;

    .line 100
    move-object/from16 v18, v10

    .line 102
    iget-object v10, v7, Landroidx/slice/SliceItem;->mFormat:Ljava/lang/String;

    .line 104
    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 106
    move-result v10

    .line 109
    if-eqz v10, :cond_3

    .line 110
    invoke-virtual {v14, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    :cond_3
    move-object/from16 v10, v18

    .line 115
    const/4 v7, 0x1

    .line 117
    goto :goto_3

    .line 118
    :cond_4
    move-object/from16 v18, v10

    .line 119
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 121
    move-result-object v7

    .line 124
    :goto_4
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    .line 125
    move-result v10

    .line 128
    if-le v10, v4, :cond_6

    .line 129
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 131
    move-result-object v10

    .line 134
    check-cast v10, Landroidx/slice/SliceItem;

    .line 135
    move-object/from16 v17, v14

    .line 137
    filled-new-array {v15, v5}, [Ljava/lang/String;

    .line 139
    move-result-object v14

    .line 142
    invoke-virtual {v10, v14}, Landroidx/slice/SliceItem;->hasAnyHints([Ljava/lang/String;)Z

    .line 143
    move-result v10

    .line 146
    if-nez v10, :cond_5

    .line 147
    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    .line 149
    :cond_5
    move-object/from16 v14, v17

    .line 152
    goto :goto_4

    .line 154
    :cond_6
    move-object/from16 v17, v14

    .line 155
    goto :goto_5

    .line 157
    :cond_7
    move-object/from16 v18, v10

    .line 158
    const/4 v14, 0x0

    .line 160
    :goto_5
    move-object/from16 v19, v12

    .line 161
    const/4 v2, 0x0

    .line 163
    const/4 v3, 0x0

    .line 164
    const/4 v7, 0x0

    .line 165
    const/4 v10, 0x0

    .line 166
    const/16 v17, 0x0

    .line 167
    :goto_6
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 169
    move-result v12

    .line 172
    move-object/from16 v20, v11

    .line 173
    if-ge v7, v12, :cond_24

    .line 175
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 177
    move-result-object v12

    .line 180
    check-cast v12, Landroidx/slice/SliceItem;

    .line 181
    iget-object v11, v12, Landroidx/slice/SliceItem;->mFormat:Ljava/lang/String;

    .line 183
    move-object/from16 v22, v9

    .line 185
    invoke-virtual {v0, v3}, Landroidx/slice/widget/GridRowView;->determinePadding(Landroidx/slice/SliceItem;)I

    .line 187
    move-result v9

    .line 190
    if-ge v10, v4, :cond_12

    .line 191
    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 193
    move-result v23

    .line 196
    move/from16 v24, v4

    .line 197
    const-string v4, "long"

    .line 199
    if-nez v23, :cond_9

    .line 201
    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 203
    move-result v11

    .line 206
    if-eqz v11, :cond_8

    .line 207
    goto :goto_7

    .line 209
    :cond_8
    move-object/from16 v16, v3

    .line 210
    goto/16 :goto_d

    .line 212
    :cond_9
    :goto_7
    if-eqz v14, :cond_a

    .line 214
    invoke-interface {v14, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 216
    move-result v11

    .line 219
    if-nez v11, :cond_a

    .line 220
    move-object/from16 v16, v3

    .line 222
    move-object/from16 v23, v6

    .line 224
    move v4, v7

    .line 226
    move/from16 v27, v10

    .line 227
    move-object/from16 v25, v14

    .line 229
    move-object/from16 v26, v15

    .line 231
    goto/16 :goto_1c

    .line 233
    :cond_a
    iget-object v11, v12, Landroidx/slice/SliceItem;->mFormat:Ljava/lang/String;

    .line 235
    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 237
    move-result v21

    .line 240
    if-nez v21, :cond_b

    .line 241
    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 243
    move-result v21

    .line 246
    if-nez v21, :cond_b

    .line 247
    move-object/from16 v16, v3

    .line 249
    move-object/from16 v23, v6

    .line 251
    move v4, v7

    .line 253
    move-object/from16 v25, v14

    .line 254
    move-object/from16 v26, v15

    .line 256
    const/4 v3, 0x0

    .line 258
    goto/16 :goto_c

    .line 259
    :cond_b
    move-object/from16 v23, v6

    .line 261
    filled-new-array {v5, v15}, [Ljava/lang/String;

    .line 263
    move-result-object v6

    .line 266
    invoke-static {v12, v6}, Landroidx/slice/core/SliceQuery;->hasAnyHints(Landroidx/slice/SliceItem;[Ljava/lang/String;)Z

    .line 267
    move-result v6

    .line 270
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 271
    move-result-object v21

    .line 274
    move-object/from16 v25, v14

    .line 275
    invoke-static/range {v21 .. v21}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 277
    move-result-object v14

    .line 280
    if-eqz v6, :cond_c

    .line 281
    invoke-virtual/range {p0 .. p0}, Landroidx/slice/widget/GridRowView;->getTitleTextLayout()I

    .line 283
    move-result v21

    .line 286
    goto :goto_8

    .line 287
    :cond_c
    const v21, 0x7f0d0029    # @layout/abc_slice_secondary_text 'res/layout/abc_slice_secondary_text.xml'

    .line 288
    :goto_8
    move-object/from16 v16, v3

    .line 291
    move-object/from16 v26, v15

    .line 293
    move/from16 v15, v21

    .line 295
    const/4 v3, 0x0

    .line 297
    invoke-virtual {v14, v15, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 298
    move-result-object v14

    .line 301
    check-cast v14, Landroid/widget/TextView;

    .line 302
    iget-object v15, v0, Landroidx/slice/widget/SliceChildView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    .line 304
    if-eqz v15, :cond_10

    .line 306
    iget-object v3, v0, Landroidx/slice/widget/SliceChildView;->mRowStyle:Landroidx/slice/widget/RowStyle;

    .line 308
    if-eqz v3, :cond_10

    .line 310
    if-eqz v6, :cond_d

    .line 312
    iget v3, v15, Landroidx/slice/widget/SliceStyle;->mGridTitleSize:I

    .line 314
    goto :goto_9

    .line 316
    :cond_d
    iget v3, v15, Landroidx/slice/widget/SliceStyle;->mGridSubtitleSize:I

    .line 317
    :goto_9
    int-to-float v3, v3

    .line 319
    const/4 v15, 0x0

    .line 320
    invoke-virtual {v14, v15, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 321
    if-eqz v6, :cond_f

    .line 324
    iget-object v3, v0, Landroidx/slice/widget/SliceChildView;->mRowStyle:Landroidx/slice/widget/RowStyle;

    .line 326
    iget-object v6, v3, Landroidx/slice/widget/RowStyle;->mTitleColor:Ljava/lang/Integer;

    .line 328
    if-eqz v6, :cond_e

    .line 330
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 332
    move-result v3

    .line 335
    goto :goto_a

    .line 336
    :cond_e
    iget-object v3, v3, Landroidx/slice/widget/RowStyle;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    .line 337
    iget v3, v3, Landroidx/slice/widget/SliceStyle;->mTitleColor:I

    .line 339
    goto :goto_a

    .line 341
    :cond_f
    iget-object v3, v0, Landroidx/slice/widget/SliceChildView;->mRowStyle:Landroidx/slice/widget/RowStyle;

    .line 342
    invoke-virtual {v3}, Landroidx/slice/widget/RowStyle;->getSubtitleColor()I

    .line 344
    move-result v3

    .line 347
    :goto_a
    invoke-virtual {v14, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 348
    :cond_10
    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 351
    move-result v3

    .line 354
    if-eqz v3, :cond_11

    .line 355
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 357
    move-result-object v3

    .line 360
    move v4, v7

    .line 361
    invoke-virtual {v12}, Landroidx/slice/SliceItem;->getLong()J

    .line 362
    move-result-wide v6

    .line 365
    invoke-static {v6, v7, v3}, Landroidx/slice/widget/SliceViewUtil;->getTimestampString(JLandroid/content/Context;)Ljava/lang/CharSequence;

    .line 366
    move-result-object v3

    .line 369
    goto :goto_b

    .line 370
    :cond_11
    move v4, v7

    .line 371
    invoke-virtual {v12}, Landroidx/slice/SliceItem;->getSanitizedText()Ljava/lang/CharSequence;

    .line 372
    move-result-object v3

    .line 375
    :goto_b
    invoke-virtual {v14, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 376
    invoke-virtual {v8, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 379
    const/4 v3, 0x0

    .line 382
    invoke-virtual {v14, v3, v9, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 383
    const/4 v3, 0x1

    .line 386
    :goto_c
    if-eqz v3, :cond_22

    .line 387
    add-int/lit8 v10, v10, 0x1

    .line 389
    goto/16 :goto_1b

    .line 391
    :cond_12
    move-object/from16 v16, v3

    .line 393
    move/from16 v24, v4

    .line 395
    :goto_d
    move-object/from16 v23, v6

    .line 397
    move v4, v7

    .line 399
    move-object/from16 v25, v14

    .line 400
    move-object/from16 v26, v15

    .line 402
    const/4 v3, 0x1

    .line 404
    if-ge v2, v3, :cond_22

    .line 405
    iget-object v3, v12, Landroidx/slice/SliceItem;->mFormat:Ljava/lang/String;

    .line 407
    const-string v6, "image"

    .line 409
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 411
    move-result v3

    .line 414
    if-eqz v3, :cond_22

    .line 415
    iget-object v3, v1, Landroidx/slice/widget/GridContent$CellContent;->mOverlayItem:Landroidx/slice/SliceItem;

    .line 417
    iget v7, v0, Landroidx/slice/widget/SliceChildView;->mTintColor:I

    .line 419
    iget-object v9, v12, Landroidx/slice/SliceItem;->mFormat:Ljava/lang/String;

    .line 421
    iget-object v11, v0, Landroidx/slice/widget/SliceChildView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    .line 423
    if-eqz v11, :cond_14

    .line 425
    iget v11, v11, Landroidx/slice/widget/SliceStyle;->mImageCornerRadius:F

    .line 427
    const/4 v14, 0x0

    .line 429
    cmpl-float v11, v11, v14

    .line 430
    if-lez v11, :cond_13

    .line 432
    const/4 v11, 0x1

    .line 434
    goto :goto_e

    .line 435
    :cond_13
    const/4 v11, 0x0

    .line 436
    :goto_e
    if-eqz v11, :cond_14

    .line 437
    const/4 v11, 0x1

    .line 439
    goto :goto_f

    .line 440
    :cond_14
    const/4 v11, 0x0

    .line 441
    :goto_f
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 442
    move-result v6

    .line 445
    if-eqz v6, :cond_21

    .line 446
    iget-object v6, v12, Landroidx/slice/SliceItem;->mObj:Ljava/lang/Object;

    .line 448
    check-cast v6, Landroidx/core/graphics/drawable/IconCompat;

    .line 450
    if-nez v6, :cond_15

    .line 452
    goto/16 :goto_19

    .line 454
    :cond_15
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 456
    move-result-object v9

    .line 459
    invoke-virtual {v6, v9}, Landroidx/core/graphics/drawable/IconCompat;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    .line 460
    move-result-object v6

    .line 463
    if-nez v6, :cond_16

    .line 464
    goto/16 :goto_19

    .line 466
    :cond_16
    new-instance v9, Landroid/widget/ImageView;

    .line 468
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 470
    move-result-object v14

    .line 473
    invoke-direct {v9, v14}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 474
    if-eqz v11, :cond_17

    .line 477
    new-instance v14, Landroidx/slice/CornerDrawable;

    .line 479
    iget-object v15, v0, Landroidx/slice/widget/SliceChildView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    .line 481
    iget v15, v15, Landroidx/slice/widget/SliceStyle;->mImageCornerRadius:F

    .line 483
    invoke-direct {v14, v6, v15}, Landroidx/slice/CornerDrawable;-><init>(Landroid/graphics/drawable/Drawable;F)V

    .line 485
    invoke-virtual {v9, v14}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 488
    goto :goto_10

    .line 491
    :cond_17
    invoke-virtual {v9, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 492
    :goto_10
    const-string v6, "raw"

    .line 495
    invoke-virtual {v12, v6}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    .line 497
    move-result v6

    .line 500
    const-string v15, "no_tint"

    .line 501
    if-eqz v6, :cond_18

    .line 503
    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 505
    invoke-virtual {v9, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 507
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 510
    iget-object v11, v0, Landroidx/slice/widget/GridRowView;->mGridContent:Landroidx/slice/widget/GridContent;

    .line 512
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 514
    move-result-object v14

    .line 517
    invoke-virtual {v11, v14}, Landroidx/slice/widget/GridContent;->getFirstImageSize(Landroid/content/Context;)Landroid/graphics/Point;

    .line 518
    move-result-object v11

    .line 521
    iget v11, v11, Landroid/graphics/Point;->x:I

    .line 522
    iget-object v14, v0, Landroidx/slice/widget/GridRowView;->mGridContent:Landroidx/slice/widget/GridContent;

    .line 524
    move/from16 v27, v10

    .line 526
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 528
    move-result-object v10

    .line 531
    invoke-virtual {v14, v10}, Landroidx/slice/widget/GridContent;->getFirstImageSize(Landroid/content/Context;)Landroid/graphics/Point;

    .line 532
    move-result-object v10

    .line 535
    iget v10, v10, Landroid/graphics/Point;->y:I

    .line 536
    invoke-direct {v6, v11, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 538
    goto :goto_15

    .line 541
    :cond_18
    move/from16 v27, v10

    .line 542
    invoke-virtual {v12, v5}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    .line 544
    move-result v6

    .line 547
    if-eqz v6, :cond_1b

    .line 548
    if-eqz v11, :cond_19

    .line 550
    sget-object v6, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    .line 552
    goto :goto_11

    .line 554
    :cond_19
    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    .line 555
    :goto_11
    invoke-virtual {v9, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 557
    if-eqz v13, :cond_1a

    .line 560
    const/4 v6, -0x1

    .line 562
    goto :goto_12

    .line 563
    :cond_1a
    iget v6, v0, Landroidx/slice/widget/GridRowView;->mLargeImageHeight:I

    .line 564
    :goto_12
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    .line 566
    const/4 v11, -0x1

    .line 568
    invoke-direct {v10, v11, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 569
    move v6, v11

    .line 572
    goto :goto_16

    .line 573
    :cond_1b
    invoke-virtual {v12, v15}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    .line 574
    move-result v6

    .line 577
    const/4 v10, 0x1

    .line 578
    xor-int/2addr v6, v10

    .line 579
    if-nez v6, :cond_1c

    .line 580
    iget v10, v0, Landroidx/slice/widget/GridRowView;->mSmallImageSize:I

    .line 582
    goto :goto_13

    .line 584
    :cond_1c
    iget v10, v0, Landroidx/slice/widget/GridRowView;->mIconSize:I

    .line 585
    :goto_13
    if-eqz v6, :cond_1d

    .line 587
    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 589
    goto :goto_14

    .line 591
    :cond_1d
    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    .line 592
    :goto_14
    invoke-virtual {v9, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 594
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 597
    invoke-direct {v6, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 599
    :goto_15
    move-object v10, v6

    .line 602
    const/4 v6, -0x1

    .line 603
    :goto_16
    if-eq v7, v6, :cond_1e

    .line 604
    invoke-virtual {v12, v15}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    .line 606
    move-result v6

    .line 609
    if-nez v6, :cond_1e

    .line 610
    invoke-virtual {v9, v7}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 612
    :cond_1e
    if-eqz v3, :cond_20

    .line 615
    iget-object v6, v0, Landroidx/slice/widget/GridRowView;->mViewContainer:Landroid/widget/LinearLayout;

    .line 617
    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getChildCount()I

    .line 619
    move-result v6

    .line 622
    iget v7, v0, Landroidx/slice/widget/GridRowView;->mMaxCells:I

    .line 623
    const/4 v11, 0x1

    .line 625
    sub-int/2addr v7, v11

    .line 626
    if-ne v6, v7, :cond_1f

    .line 627
    goto :goto_17

    .line 629
    :cond_1f
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 630
    move-result-object v6

    .line 633
    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 634
    move-result-object v6

    .line 637
    const v7, 0x7f0d001e    # @layout/abc_slice_grid_text_overlay_image 'res/layout/abc_slice_grid_text_overlay_image.xml'

    .line 638
    const/4 v11, 0x0

    .line 641
    invoke-virtual {v6, v7, v8, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 642
    move-result-object v6

    .line 645
    check-cast v6, Landroid/widget/FrameLayout;

    .line 646
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    .line 648
    const/4 v14, -0x2

    .line 650
    invoke-direct {v7, v14, v14}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 651
    invoke-virtual {v6, v9, v11, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 654
    const v7, 0x7f0a0976    # @id/text_overlay

    .line 657
    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 660
    move-result-object v7

    .line 663
    check-cast v7, Landroid/widget/TextView;

    .line 664
    iget-object v3, v3, Landroidx/slice/SliceItem;->mObj:Ljava/lang/Object;

    .line 666
    check-cast v3, Ljava/lang/CharSequence;

    .line 668
    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 670
    const v3, 0x7f0a099d    # @id/tint_overlay

    .line 673
    invoke-virtual {v6, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 676
    move-result-object v3

    .line 679
    new-instance v7, Landroidx/slice/CornerDrawable;

    .line 680
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 682
    move-result-object v9

    .line 685
    sget-object v11, Landroidx/core/app/ActivityCompat;->sLock:Ljava/lang/Object;

    .line 686
    const v11, 0x7f080abb    # @drawable/abc_slice_gradient 'res/drawable/abc_slice_gradient.xml'

    .line 688
    invoke-virtual {v9, v11}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 691
    move-result-object v9

    .line 694
    iget-object v11, v0, Landroidx/slice/widget/SliceChildView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    .line 695
    iget v11, v11, Landroidx/slice/widget/SliceStyle;->mImageCornerRadius:F

    .line 697
    invoke-direct {v7, v9, v11}, Landroidx/slice/CornerDrawable;-><init>(Landroid/graphics/drawable/Drawable;F)V

    .line 699
    invoke-virtual {v3, v7}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 702
    invoke-virtual {v8, v6, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 705
    goto :goto_18

    .line 708
    :cond_20
    :goto_17
    invoke-virtual {v8, v9, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 709
    :goto_18
    const/4 v3, 0x1

    .line 712
    goto :goto_1a

    .line 713
    :cond_21
    :goto_19
    move/from16 v27, v10

    .line 714
    const/4 v3, 0x0

    .line 716
    :goto_1a
    if-eqz v3, :cond_23

    .line 717
    add-int/lit8 v2, v2, 0x1

    .line 719
    move/from16 v10, v27

    .line 721
    :goto_1b
    move-object v3, v12

    .line 723
    const/16 v17, 0x1

    .line 724
    goto :goto_1d

    .line 726
    :cond_22
    move/from16 v27, v10

    .line 727
    :cond_23
    :goto_1c
    move-object/from16 v3, v16

    .line 729
    move/from16 v10, v27

    .line 731
    :goto_1d
    add-int/lit8 v7, v4, 0x1

    .line 733
    move-object/from16 v11, v20

    .line 735
    move-object/from16 v9, v22

    .line 737
    move-object/from16 v6, v23

    .line 739
    move/from16 v4, v24

    .line 741
    move-object/from16 v14, v25

    .line 743
    move-object/from16 v15, v26

    .line 745
    goto/16 :goto_6

    .line 747
    :cond_24
    move-object/from16 v16, v3

    .line 749
    if-eqz v20, :cond_26

    .line 751
    move-object/from16 v2, v20

    .line 753
    iget-object v3, v2, Landroidx/slice/SliceItem;->mSubType:Ljava/lang/String;

    .line 755
    const-string v4, "date_picker"

    .line 757
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 759
    move-result v3

    .line 762
    if-eqz v3, :cond_25

    .line 763
    move-object/from16 v3, v16

    .line 765
    invoke-virtual {v0, v3}, Landroidx/slice/widget/GridRowView;->determinePadding(Landroidx/slice/SliceItem;)I

    .line 767
    move-result v3

    .line 770
    const/4 v4, 0x1

    .line 771
    invoke-virtual {v0, v2, v8, v3, v4}, Landroidx/slice/widget/GridRowView;->addPickerItem(Landroidx/slice/SliceItem;Landroid/view/ViewGroup;IZ)Z

    .line 772
    move-result v17

    .line 775
    goto :goto_1e

    .line 776
    :cond_25
    move-object/from16 v3, v16

    .line 777
    iget-object v4, v2, Landroidx/slice/SliceItem;->mSubType:Ljava/lang/String;

    .line 779
    const-string/jumbo v5, "time_picker"

    .line 781
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 784
    move-result v4

    .line 787
    if-eqz v4, :cond_26

    .line 788
    invoke-virtual {v0, v3}, Landroidx/slice/widget/GridRowView;->determinePadding(Landroidx/slice/SliceItem;)I

    .line 790
    move-result v3

    .line 793
    const/4 v4, 0x0

    .line 794
    invoke-virtual {v0, v2, v8, v3, v4}, Landroidx/slice/widget/GridRowView;->addPickerItem(Landroidx/slice/SliceItem;Landroid/view/ViewGroup;IZ)Z

    .line 795
    move-result v17

    .line 798
    :cond_26
    :goto_1e
    if-eqz v19, :cond_27

    .line 799
    new-instance v2, Landroidx/slice/widget/SliceActionView;

    .line 801
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 803
    move-result-object v3

    .line 806
    iget-object v4, v0, Landroidx/slice/widget/SliceChildView;->mRowStyle:Landroidx/slice/widget/RowStyle;

    .line 807
    invoke-direct {v2, v3, v4}, Landroidx/slice/widget/SliceActionView;-><init>(Landroid/content/Context;Landroidx/slice/widget/RowStyle;)V

    .line 809
    invoke-virtual {v8, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 812
    move-object v9, v2

    .line 815
    const/4 v3, 0x1

    .line 816
    goto :goto_1f

    .line 817
    :cond_27
    move/from16 v3, v17

    .line 818
    const/4 v9, 0x0

    .line 820
    :goto_1f
    if-eqz v3, :cond_2c

    .line 821
    iget-object v1, v1, Landroidx/slice/widget/GridContent$CellContent;->mContentDescr:Landroidx/slice/SliceItem;

    .line 823
    if-eqz v1, :cond_28

    .line 825
    iget-object v1, v1, Landroidx/slice/SliceItem;->mObj:Ljava/lang/Object;

    .line 827
    move-object v14, v1

    .line 829
    check-cast v14, Ljava/lang/CharSequence;

    .line 830
    goto :goto_20

    .line 832
    :cond_28
    const/4 v14, 0x0

    .line 833
    :goto_20
    if-eqz v14, :cond_29

    .line 834
    invoke-virtual {v8, v14}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 836
    :cond_29
    iget-object v1, v0, Landroidx/slice/widget/GridRowView;->mViewContainer:Landroid/widget/LinearLayout;

    .line 839
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 841
    const/high16 v3, 0x3f800000    # 1.0f

    .line 843
    const/4 v4, -0x2

    .line 845
    const/4 v5, 0x0

    .line 846
    invoke-direct {v2, v5, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 847
    invoke-virtual {v1, v8, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 850
    move/from16 v1, p3

    .line 853
    add-int/lit8 v2, v1, -0x1

    .line 855
    move/from16 v3, p2

    .line 857
    if-eq v3, v2, :cond_2a

    .line 859
    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 861
    move-result-object v2

    .line 864
    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 865
    iget v4, v0, Landroidx/slice/widget/GridRowView;->mGutter:I

    .line 867
    invoke-virtual {v2, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 869
    invoke-virtual {v8, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 872
    :cond_2a
    if-eqz v18, :cond_2b

    .line 875
    new-instance v2, Landroidx/slice/widget/EventInfo;

    .line 877
    invoke-virtual/range {p0 .. p0}, Landroidx/slice/widget/SliceChildView;->getMode()I

    .line 879
    move-result v4

    .line 882
    iget v5, v0, Landroidx/slice/widget/GridRowView;->mRowIndex:I

    .line 883
    const/4 v6, 0x1

    .line 885
    invoke-direct {v2, v4, v6, v6, v5}, Landroidx/slice/widget/EventInfo;-><init>(IIII)V

    .line 886
    const/4 v4, 0x2

    .line 889
    iput v4, v2, Landroidx/slice/widget/EventInfo;->actionPosition:I

    .line 890
    iput v3, v2, Landroidx/slice/widget/EventInfo;->actionIndex:I

    .line 892
    iput v1, v2, Landroidx/slice/widget/EventInfo;->actionCount:I

    .line 894
    new-instance v4, Landroid/util/Pair;

    .line 896
    move-object/from16 v5, v18

    .line 898
    invoke-direct {v4, v5, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 900
    invoke-virtual {v8, v4}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 903
    invoke-virtual {v0, v8}, Landroidx/slice/widget/GridRowView;->makeClickable(Landroid/view/View;)V

    .line 906
    :cond_2b
    if-eqz v19, :cond_2c

    .line 909
    new-instance v2, Landroidx/slice/widget/EventInfo;

    .line 911
    invoke-virtual/range {p0 .. p0}, Landroidx/slice/widget/SliceChildView;->getMode()I

    .line 913
    move-result v4

    .line 916
    const/4 v5, 0x3

    .line 917
    iget v6, v0, Landroidx/slice/widget/GridRowView;->mRowIndex:I

    .line 918
    const/4 v7, 0x0

    .line 920
    invoke-direct {v2, v4, v7, v5, v6}, Landroidx/slice/widget/EventInfo;-><init>(IIII)V

    .line 921
    new-instance v10, Landroidx/slice/core/SliceActionImpl;

    .line 924
    move-object/from16 v4, v19

    .line 926
    invoke-direct {v10, v4}, Landroidx/slice/core/SliceActionImpl;-><init>(Landroidx/slice/SliceItem;)V

    .line 928
    iget-object v12, v0, Landroidx/slice/widget/SliceChildView;->mObserver:Landroidx/slice/widget/SliceView$OnSliceActionListener;

    .line 931
    iget v13, v0, Landroidx/slice/widget/SliceChildView;->mTintColor:I

    .line 933
    iget-object v14, v0, Landroidx/slice/widget/SliceChildView;->mLoadingListener:Landroidx/slice/widget/SliceActionView$SliceActionLoadingListener;

    .line 935
    move-object v11, v2

    .line 937
    invoke-virtual/range {v9 .. v14}, Landroidx/slice/widget/SliceActionView;->setAction(Landroidx/slice/core/SliceActionImpl;Landroidx/slice/widget/EventInfo;Landroidx/slice/widget/SliceView$OnSliceActionListener;ILandroidx/slice/widget/SliceActionView$SliceActionLoadingListener;)V

    .line 938
    const/4 v0, 0x2

    .line 941
    iput v0, v2, Landroidx/slice/widget/EventInfo;->actionPosition:I

    .line 942
    iput v3, v2, Landroidx/slice/widget/EventInfo;->actionIndex:I

    .line 944
    iput v1, v2, Landroidx/slice/widget/EventInfo;->actionCount:I

    .line 946
    :cond_2c
    return-void
    .line 948
.end method

.method public final addPickerItem(Landroidx/slice/SliceItem;Landroid/view/ViewGroup;IZ)Z
    .locals 11

    .line 1
    const-string v0, "long"

    .line 2
    const-string v1, "millis"

    .line 4
    invoke-static {p1, v0, v1}, Landroidx/slice/core/SliceQuery;->findSubtype(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    .line 6
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-nez v0, :cond_0

    .line 11
    return v1

    .line 13
    :cond_0
    invoke-virtual {v0}, Landroidx/slice/SliceItem;->getLong()J

    .line 14
    move-result-wide v2

    .line 17
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 18
    move-result-object v0

    .line 21
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 22
    move-result-object v0

    .line 25
    invoke-virtual {p0}, Landroidx/slice/widget/GridRowView;->getTitleTextLayout()I

    .line 26
    move-result v4

    .line 29
    const/4 v5, 0x0

    .line 30
    invoke-virtual {v0, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 31
    move-result-object v0

    .line 34
    check-cast v0, Landroid/widget/TextView;

    .line 35
    iget-object v4, p0, Landroidx/slice/widget/SliceChildView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    .line 37
    if-eqz v4, :cond_1

    .line 39
    iget v4, v4, Landroidx/slice/widget/SliceStyle;->mGridTitleSize:I

    .line 41
    int-to-float v4, v4

    .line 43
    invoke-virtual {v0, v1, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 44
    iget-object v4, p0, Landroidx/slice/widget/SliceChildView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    .line 47
    iget v4, v4, Landroidx/slice/widget/SliceStyle;->mTitleColor:I

    .line 49
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 51
    :cond_1
    new-instance v7, Ljava/util/Date;

    .line 54
    invoke-direct {v7, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 56
    const-string/jumbo v2, "text"

    .line 59
    const-string/jumbo v3, "title"

    .line 62
    invoke-static {p1, v2, v3}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    .line 65
    move-result-object v2

    .line 68
    if-eqz v2, :cond_2

    .line 69
    iget-object v2, v2, Landroidx/slice/SliceItem;->mObj:Ljava/lang/Object;

    .line 71
    check-cast v2, Ljava/lang/CharSequence;

    .line 73
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    :cond_2
    iget v10, p0, Landroidx/slice/widget/GridRowView;->mRowIndex:I

    .line 78
    new-instance v2, Landroidx/slice/widget/GridRowView$1;

    .line 80
    move-object v5, v2

    .line 82
    move-object v6, p0

    .line 83
    move v8, p4

    .line 84
    move-object v9, p1

    .line 85
    invoke-direct/range {v5 .. v10}, Landroidx/slice/widget/GridRowView$1;-><init>(Landroidx/slice/widget/GridRowView;Ljava/util/Date;ZLandroidx/slice/SliceItem;I)V

    .line 86
    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    const/4 p1, 0x1

    .line 92
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 93
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 96
    move-result-object p0

    .line 99
    const p4, 0x101045c    # @android:attr/selectableItemBackgroundBorderless

    .line 100
    invoke-static {p4, p0}, Landroidx/slice/widget/SliceViewUtil;->getDrawable(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    .line 103
    move-result-object p0

    .line 106
    invoke-virtual {p2, p0}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 107
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 110
    invoke-virtual {v0, v1, p3, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 113
    return p1
    .line 116
.end method

.method public final determinePadding(Landroidx/slice/SliceItem;)I
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    return v0

    .line 5
    :cond_0
    iget-object v1, p1, Landroidx/slice/SliceItem;->mFormat:Ljava/lang/String;

    .line 6
    const-string v2, "image"

    .line 8
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result v1

    .line 13
    if-eqz v1, :cond_1

    .line 14
    iget p0, p0, Landroidx/slice/widget/GridRowView;->mTextPadding:I

    .line 16
    return p0

    .line 18
    :cond_1
    iget-object v1, p1, Landroidx/slice/SliceItem;->mFormat:Ljava/lang/String;

    .line 19
    const-string/jumbo v2, "text"

    .line 21
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    move-result v1

    .line 27
    if-nez v1, :cond_3

    .line 28
    iget-object p1, p1, Landroidx/slice/SliceItem;->mFormat:Ljava/lang/String;

    .line 30
    const-string v1, "long"

    .line 32
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    move-result p1

    .line 37
    if-eqz p1, :cond_2

    .line 38
    goto :goto_0

    .line 40
    :cond_2
    return v0

    .line 41
    :cond_3
    :goto_0
    iget-object p0, p0, Landroidx/slice/widget/SliceChildView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    .line 42
    if-eqz p0, :cond_4

    .line 44
    iget v0, p0, Landroidx/slice/widget/SliceStyle;->mVerticalGridTextPadding:I

    .line 46
    :cond_4
    return v0
    .line 48
.end method

.method public getExtraBottomPadding()I
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/slice/widget/GridRowView;->mGridContent:Landroidx/slice/widget/GridContent;

    .line 2
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    iget-boolean v0, v0, Landroidx/slice/widget/GridContent;->mAllImages:Z

    .line 7
    if-eqz v0, :cond_1

    .line 9
    iget v0, p0, Landroidx/slice/widget/GridRowView;->mRowIndex:I

    .line 11
    iget v2, p0, Landroidx/slice/widget/GridRowView;->mRowCount:I

    .line 13
    const/4 v3, 0x1

    .line 15
    sub-int/2addr v2, v3

    .line 16
    if-eq v0, v2, :cond_0

    .line 17
    invoke-virtual {p0}, Landroidx/slice/widget/SliceChildView;->getMode()I

    .line 19
    move-result v0

    .line 22
    if-ne v0, v3, :cond_1

    .line 23
    :cond_0
    iget-object p0, p0, Landroidx/slice/widget/SliceChildView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    .line 25
    if-eqz p0, :cond_1

    .line 27
    iget v1, p0, Landroidx/slice/widget/SliceStyle;->mGridBottomPadding:I

    .line 29
    :cond_1
    return v1
    .line 31
.end method

.method public getExtraTopPadding()I
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/slice/widget/GridRowView;->mGridContent:Landroidx/slice/widget/GridContent;

    .line 2
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    iget-boolean v0, v0, Landroidx/slice/widget/GridContent;->mAllImages:Z

    .line 7
    if-eqz v0, :cond_0

    .line 9
    iget v0, p0, Landroidx/slice/widget/GridRowView;->mRowIndex:I

    .line 11
    if-nez v0, :cond_0

    .line 13
    iget-object p0, p0, Landroidx/slice/widget/SliceChildView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    .line 15
    if-eqz p0, :cond_0

    .line 17
    iget v1, p0, Landroidx/slice/widget/SliceStyle;->mGridTopPadding:I

    .line 19
    :cond_0
    return v1
    .line 21
.end method

.method public getHiddenItemCount()I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/slice/widget/GridRowView;->mHiddenItemCount:I

    .line 2
    return p0
    .line 4
.end method

.method public getMaxCells()I
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/slice/widget/GridRowView;->mGridContent:Landroidx/slice/widget/GridContent;

    .line 2
    if-eqz v0, :cond_4

    .line 4
    invoke-virtual {v0}, Landroidx/slice/widget/GridContent;->isValid()Z

    .line 6
    move-result v0

    .line 9
    if-eqz v0, :cond_4

    .line 10
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    .line 12
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    goto :goto_1

    .line 18
    :cond_0
    iget-object v0, p0, Landroidx/slice/widget/GridRowView;->mGridContent:Landroidx/slice/widget/GridContent;

    .line 19
    iget-object v0, v0, Landroidx/slice/widget/GridContent;->mGridContent:Ljava/util/ArrayList;

    .line 21
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 23
    move-result v0

    .line 26
    const/4 v1, 0x1

    .line 27
    if-le v0, v1, :cond_3

    .line 28
    iget-object v0, p0, Landroidx/slice/widget/GridRowView;->mGridContent:Landroidx/slice/widget/GridContent;

    .line 30
    iget v1, v0, Landroidx/slice/widget/GridContent;->mLargestImageMode:I

    .line 32
    const/4 v2, 0x2

    .line 34
    if-eq v1, v2, :cond_2

    .line 35
    const/4 v2, 0x4

    .line 37
    if-eq v1, v2, :cond_1

    .line 38
    iget v0, p0, Landroidx/slice/widget/GridRowView;->mSmallImageMinWidth:I

    .line 40
    goto :goto_0

    .line 42
    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 43
    move-result-object v1

    .line 46
    invoke-virtual {v0, v1}, Landroidx/slice/widget/GridContent;->getFirstImageSize(Landroid/content/Context;)Landroid/graphics/Point;

    .line 47
    move-result-object v0

    .line 50
    iget v0, v0, Landroid/graphics/Point;->x:I

    .line 51
    goto :goto_0

    .line 53
    :cond_2
    iget v0, p0, Landroidx/slice/widget/GridRowView;->mLargeImageHeight:I

    .line 54
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    .line 56
    move-result v1

    .line 59
    iget p0, p0, Landroidx/slice/widget/GridRowView;->mGutter:I

    .line 60
    add-int/2addr v0, p0

    .line 62
    div-int/2addr v1, v0

    .line 63
    :cond_3
    return v1

    .line 64
    :cond_4
    :goto_1
    const/4 p0, -0x1

    .line 65
    return p0
    .line 66
.end method

.method public getTitleTextLayout()I
    .locals 0

    .line 1
    const p0, 0x7f0d002d    # @layout/abc_slice_title 'res/layout/abc_slice_title.xml'

    .line 2
    return p0
    .line 5
.end method

.method public final makeClickable(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 5
    move-result-object p0

    .line 8
    const v0, 0x101045c    # @android:attr/selectableItemBackgroundBorderless

    .line 9
    invoke-static {v0, p0}, Landroidx/slice/widget/SliceViewUtil;->getDrawable(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    .line 12
    move-result-object p0

    .line 15
    invoke-virtual {p1, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 16
    const/4 p0, 0x1

    .line 19
    invoke-virtual {p1, p0}, Landroid/view/View;->setClickable(Z)V

    .line 20
    return-void
    .line 23
.end method

.method public final makeEntireGridClickable(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/slice/widget/GridRowView;->mViewContainer:Landroid/widget/LinearLayout;

    .line 2
    const/4 v1, 0x0

    .line 4
    if-eqz p1, :cond_0

    .line 5
    move-object v2, p0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move-object v2, v1

    .line 9
    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 10
    iget-object v0, p0, Landroidx/slice/widget/GridRowView;->mViewContainer:Landroid/widget/LinearLayout;

    .line 13
    if-eqz p1, :cond_1

    .line 15
    move-object v2, p0

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    move-object v2, v1

    .line 19
    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    iget-object v0, p0, Landroidx/slice/widget/GridRowView;->mForeground:Landroid/view/View;

    .line 23
    if-eqz p1, :cond_2

    .line 25
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 27
    move-result-object v1

    .line 30
    const v2, 0x101030e    # @android:attr/selectableItemBackground

    .line 31
    invoke-static {v2, v1}, Landroidx/slice/widget/SliceViewUtil;->getDrawable(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    .line 34
    move-result-object v1

    .line 37
    :cond_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 38
    iget-object v0, p0, Landroidx/slice/widget/GridRowView;->mViewContainer:Landroid/widget/LinearLayout;

    .line 41
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 43
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 46
    return-void
    .line 49
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 2
    move-result-object p1

    .line 5
    check-cast p1, Landroid/util/Pair;

    .line 6
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 8
    check-cast v0, Landroidx/slice/SliceItem;

    .line 10
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 12
    check-cast p1, Landroidx/slice/widget/EventInfo;

    .line 14
    if-eqz v0, :cond_1

    .line 16
    const-string v1, "action"

    .line 18
    const/4 v2, 0x0

    .line 20
    invoke-static {v0, v1, v2}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    .line 21
    move-result-object v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    :try_start_0
    invoke-virtual {v0, v2, v2}, Landroidx/slice/SliceItem;->fireActionInternal(Landroid/content/Context;Landroid/content/Intent;)V

    .line 27
    iget-object p0, p0, Landroidx/slice/widget/SliceChildView;->mObserver:Landroidx/slice/widget/SliceView$OnSliceActionListener;

    .line 30
    if-eqz p0, :cond_1

    .line 32
    check-cast p0, Lcom/android/systemui/volume/VolumePanelDialog$$ExternalSyntheticLambda4;

    .line 34
    iget-object p0, p0, Lcom/android/systemui/volume/VolumePanelDialog$$ExternalSyntheticLambda4;->f$0:Lcom/android/systemui/volume/VolumePanelDialog;

    .line 36
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    iget p1, p1, Landroidx/slice/widget/EventInfo;->actionType:I

    .line 41
    const/4 v0, 0x2

    .line 43
    if-ne p1, v0, :cond_0

    .line 44
    goto :goto_0

    .line 46
    :cond_0
    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    goto :goto_0

    .line 50
    :catch_0
    move-exception p0

    .line 51
    const-string p1, "GridRowView"

    .line 52
    const-string v0, "PendingIntent for slice cannot be sent"

    .line 54
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 56
    :cond_1
    :goto_0
    return-void
    .line 59
.end method

.method public final onMeasure(II)V
    .locals 2

    .line 1
    iget-object p2, p0, Landroidx/slice/widget/GridRowView;->mGridContent:Landroidx/slice/widget/GridContent;

    .line 2
    iget-object v0, p0, Landroidx/slice/widget/SliceChildView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    .line 4
    iget-object v1, p0, Landroidx/slice/widget/SliceChildView;->mViewPolicy:Landroidx/slice/widget/SliceViewPolicy;

    .line 6
    invoke-virtual {p2, v0, v1}, Landroidx/slice/widget/GridContent;->getHeight(Landroidx/slice/widget/SliceStyle;Landroidx/slice/widget/SliceViewPolicy;)I

    .line 8
    move-result p2

    .line 11
    iget v0, p0, Landroidx/slice/widget/SliceChildView;->mInsetTop:I

    .line 12
    add-int/2addr p2, v0

    .line 14
    iget v0, p0, Landroidx/slice/widget/SliceChildView;->mInsetBottom:I

    .line 15
    add-int/2addr p2, v0

    .line 17
    const/high16 v0, 0x40000000    # 2.0f

    .line 18
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 20
    move-result v0

    .line 23
    iget-object v1, p0, Landroidx/slice/widget/GridRowView;->mViewContainer:Landroid/widget/LinearLayout;

    .line 24
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 26
    move-result-object v1

    .line 29
    iput p2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 30
    invoke-super {p0, p1, v0}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 32
    return-void
    .line 35
.end method

.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    iget-object p1, p0, Landroidx/slice/widget/GridRowView;->mForeground:Landroid/view/View;

    .line 2
    iget-object v0, p0, Landroidx/slice/widget/GridRowView;->mLoc:[I

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 6
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    .line 9
    move-result p1

    .line 12
    iget-object v0, p0, Landroidx/slice/widget/GridRowView;->mLoc:[I

    .line 13
    const/4 v1, 0x0

    .line 15
    aget v0, v0, v1

    .line 16
    int-to-float v0, v0

    .line 18
    sub-float/2addr p1, v0

    .line 19
    float-to-int p1, p1

    .line 20
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    .line 21
    move-result v0

    .line 24
    iget-object v2, p0, Landroidx/slice/widget/GridRowView;->mLoc:[I

    .line 25
    const/4 v3, 0x1

    .line 27
    aget v2, v2, v3

    .line 28
    int-to-float v2, v2

    .line 30
    sub-float/2addr v0, v2

    .line 31
    float-to-int v0, v0

    .line 32
    iget-object v2, p0, Landroidx/slice/widget/GridRowView;->mForeground:Landroid/view/View;

    .line 33
    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 35
    move-result-object v2

    .line 38
    int-to-float p1, p1

    .line 39
    int-to-float v0, v0

    .line 40
    invoke-virtual {v2, p1, v0}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 41
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 44
    move-result p1

    .line 47
    if-nez p1, :cond_0

    .line 48
    iget-object p0, p0, Landroidx/slice/widget/GridRowView;->mForeground:Landroid/view/View;

    .line 50
    invoke-virtual {p0, v3}, Landroid/view/View;->setPressed(Z)V

    .line 52
    goto :goto_0

    .line 55
    :cond_0
    const/4 p2, 0x3

    .line 56
    if-eq p1, p2, :cond_1

    .line 57
    if-eq p1, v3, :cond_1

    .line 59
    const/4 p2, 0x2

    .line 61
    if-ne p1, p2, :cond_2

    .line 62
    :cond_1
    iget-object p0, p0, Landroidx/slice/widget/GridRowView;->mForeground:Landroid/view/View;

    .line 64
    invoke-virtual {p0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 66
    :cond_2
    :goto_0
    return v1
    .line 69
.end method

.method public final populateViews()V
    .locals 15

    .line 1
    iget-object v0, p0, Landroidx/slice/widget/GridRowView;->mGridContent:Landroidx/slice/widget/GridContent;

    .line 2
    if-eqz v0, :cond_10

    .line 4
    invoke-virtual {v0}, Landroidx/slice/widget/GridContent;->isValid()Z

    .line 6
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    goto/16 :goto_8

    .line 12
    :cond_0
    invoke-virtual {p0}, Landroidx/slice/widget/GridRowView;->scheduleMaxCellsUpdate()Z

    .line 14
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    return-void

    .line 20
    :cond_1
    iget-object v0, p0, Landroidx/slice/widget/GridRowView;->mGridContent:Landroidx/slice/widget/GridContent;

    .line 21
    invoke-virtual {v0}, Landroidx/slice/widget/SliceContent;->getLayoutDir()I

    .line 23
    move-result v0

    .line 26
    const/4 v1, -0x1

    .line 27
    if-eq v0, v1, :cond_2

    .line 28
    iget-object v0, p0, Landroidx/slice/widget/GridRowView;->mGridContent:Landroidx/slice/widget/GridContent;

    .line 30
    invoke-virtual {v0}, Landroidx/slice/widget/SliceContent;->getLayoutDir()I

    .line 32
    move-result v0

    .line 35
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setLayoutDirection(I)V

    .line 36
    :cond_2
    iget-object v0, p0, Landroidx/slice/widget/GridRowView;->mGridContent:Landroidx/slice/widget/GridContent;

    .line 39
    iget-object v0, v0, Landroidx/slice/widget/GridContent;->mPrimaryAction:Landroidx/slice/SliceItem;

    .line 41
    const/4 v2, 0x1

    .line 43
    if-eqz v0, :cond_3

    .line 44
    new-instance v0, Landroidx/slice/widget/EventInfo;

    .line 46
    invoke-virtual {p0}, Landroidx/slice/widget/SliceChildView;->getMode()I

    .line 48
    move-result v3

    .line 51
    const/4 v4, 0x3

    .line 52
    iget v5, p0, Landroidx/slice/widget/GridRowView;->mRowIndex:I

    .line 53
    invoke-direct {v0, v3, v4, v2, v5}, Landroidx/slice/widget/EventInfo;-><init>(IIII)V

    .line 55
    new-instance v3, Landroid/util/Pair;

    .line 58
    iget-object v4, p0, Landroidx/slice/widget/GridRowView;->mGridContent:Landroidx/slice/widget/GridContent;

    .line 60
    iget-object v4, v4, Landroidx/slice/widget/GridContent;->mPrimaryAction:Landroidx/slice/SliceItem;

    .line 62
    invoke-direct {v3, v4, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 64
    iget-object v0, p0, Landroidx/slice/widget/GridRowView;->mViewContainer:Landroid/widget/LinearLayout;

    .line 67
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 69
    invoke-virtual {p0, v2}, Landroidx/slice/widget/GridRowView;->makeEntireGridClickable(Z)V

    .line 72
    :cond_3
    iget-object v0, p0, Landroidx/slice/widget/GridRowView;->mGridContent:Landroidx/slice/widget/GridContent;

    .line 75
    iget-object v0, v0, Landroidx/slice/widget/SliceContent;->mContentDescr:Landroidx/slice/SliceItem;

    .line 77
    if-eqz v0, :cond_4

    .line 79
    iget-object v0, v0, Landroidx/slice/SliceItem;->mObj:Ljava/lang/Object;

    .line 81
    check-cast v0, Ljava/lang/CharSequence;

    .line 83
    goto :goto_0

    .line 85
    :cond_4
    const/4 v0, 0x0

    .line 86
    :goto_0
    if-eqz v0, :cond_5

    .line 87
    iget-object v3, p0, Landroidx/slice/widget/GridRowView;->mViewContainer:Landroid/widget/LinearLayout;

    .line 89
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 91
    :cond_5
    iget-object v0, p0, Landroidx/slice/widget/GridRowView;->mGridContent:Landroidx/slice/widget/GridContent;

    .line 94
    iget-object v3, v0, Landroidx/slice/widget/GridContent;->mGridContent:Ljava/util/ArrayList;

    .line 96
    iget v0, v0, Landroidx/slice/widget/GridContent;->mLargestImageMode:I

    .line 98
    const/4 v4, 0x4

    .line 100
    const/4 v5, 0x2

    .line 101
    if-eq v0, v5, :cond_7

    .line 102
    if-ne v0, v4, :cond_6

    .line 104
    goto :goto_1

    .line 106
    :cond_6
    iget-object v0, p0, Landroidx/slice/widget/GridRowView;->mViewContainer:Landroid/widget/LinearLayout;

    .line 107
    const/16 v6, 0x10

    .line 109
    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 111
    goto :goto_2

    .line 114
    :cond_7
    :goto_1
    iget-object v0, p0, Landroidx/slice/widget/GridRowView;->mViewContainer:Landroid/widget/LinearLayout;

    .line 115
    const/16 v6, 0x30

    .line 117
    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 119
    :goto_2
    iget v0, p0, Landroidx/slice/widget/GridRowView;->mMaxCells:I

    .line 122
    iget-object v6, p0, Landroidx/slice/widget/GridRowView;->mGridContent:Landroidx/slice/widget/GridContent;

    .line 124
    iget-object v6, v6, Landroidx/slice/widget/GridContent;->mSeeMoreItem:Landroidx/slice/SliceItem;

    .line 126
    const/4 v7, 0x0

    .line 128
    if-eqz v6, :cond_8

    .line 129
    move v6, v2

    .line 131
    goto :goto_3

    .line 132
    :cond_8
    move v6, v7

    .line 133
    :goto_3
    iput v7, p0, Landroidx/slice/widget/GridRowView;->mHiddenItemCount:I

    .line 134
    move v8, v7

    .line 136
    :goto_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 137
    move-result v9

    .line 140
    if-ge v8, v9, :cond_f

    .line 141
    iget-object v9, p0, Landroidx/slice/widget/GridRowView;->mViewContainer:Landroid/widget/LinearLayout;

    .line 143
    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getChildCount()I

    .line 145
    move-result v9

    .line 148
    if-lt v9, v0, :cond_e

    .line 149
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 151
    move-result v3

    .line 154
    sub-int/2addr v3, v0

    .line 155
    iput v3, p0, Landroidx/slice/widget/GridRowView;->mHiddenItemCount:I

    .line 156
    if-eqz v6, :cond_f

    .line 158
    iget-object v0, p0, Landroidx/slice/widget/GridRowView;->mViewContainer:Landroid/widget/LinearLayout;

    .line 160
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    .line 162
    move-result v6

    .line 165
    sub-int/2addr v6, v2

    .line 166
    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    .line 167
    move-result-object v0

    .line 170
    iget-object v6, p0, Landroidx/slice/widget/GridRowView;->mViewContainer:Landroid/widget/LinearLayout;

    .line 171
    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 173
    iget-object v6, p0, Landroidx/slice/widget/GridRowView;->mGridContent:Landroidx/slice/widget/GridContent;

    .line 176
    iget-object v6, v6, Landroidx/slice/widget/GridContent;->mSeeMoreItem:Landroidx/slice/SliceItem;

    .line 178
    iget-object v8, p0, Landroidx/slice/widget/GridRowView;->mViewContainer:Landroid/widget/LinearLayout;

    .line 180
    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getChildCount()I

    .line 182
    move-result v8

    .line 185
    iget v9, p0, Landroidx/slice/widget/GridRowView;->mMaxCells:I

    .line 186
    iget-object v10, v6, Landroidx/slice/SliceItem;->mFormat:Ljava/lang/String;

    .line 188
    const-string/jumbo v11, "slice"

    .line 190
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 193
    move-result v10

    .line 196
    if-nez v10, :cond_9

    .line 197
    iget-object v10, v6, Landroidx/slice/SliceItem;->mFormat:Ljava/lang/String;

    .line 199
    const-string v11, "action"

    .line 201
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 203
    move-result v10

    .line 206
    if-eqz v10, :cond_a

    .line 207
    :cond_9
    invoke-virtual {v6}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    .line 209
    move-result-object v10

    .line 212
    invoke-virtual {v10}, Landroidx/slice/Slice;->getItems()Ljava/util/List;

    .line 213
    move-result-object v10

    .line 216
    invoke-interface {v10}, Ljava/util/List;->size()I

    .line 217
    move-result v10

    .line 220
    if-lez v10, :cond_a

    .line 221
    new-instance v0, Landroidx/slice/widget/GridContent$CellContent;

    .line 223
    invoke-direct {v0, v6}, Landroidx/slice/widget/GridContent$CellContent;-><init>(Landroidx/slice/SliceItem;)V

    .line 225
    invoke-virtual {p0, v0, v8, v9}, Landroidx/slice/widget/GridRowView;->addCell(Landroidx/slice/widget/GridContent$CellContent;II)V

    .line 228
    goto/16 :goto_7

    .line 231
    :cond_a
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 233
    move-result-object v10

    .line 236
    invoke-static {v10}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 237
    move-result-object v10

    .line 240
    iget-object v11, p0, Landroidx/slice/widget/GridRowView;->mGridContent:Landroidx/slice/widget/GridContent;

    .line 241
    iget-boolean v11, v11, Landroidx/slice/widget/GridContent;->mAllImages:Z

    .line 243
    const v12, 0x7f0a097a    # @id/text_see_more_count

    .line 245
    if-eqz v11, :cond_b

    .line 248
    iget-object v11, p0, Landroidx/slice/widget/GridRowView;->mViewContainer:Landroid/widget/LinearLayout;

    .line 250
    const v13, 0x7f0d001d    # @layout/abc_slice_grid_see_more_overlay 'res/layout/abc_slice_grid_see_more_overlay.xml'

    .line 252
    invoke-virtual {v10, v13, v11, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 255
    move-result-object v10

    .line 258
    check-cast v10, Landroid/widget/FrameLayout;

    .line 259
    new-instance v11, Landroid/widget/FrameLayout$LayoutParams;

    .line 261
    invoke-direct {v11, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 263
    invoke-virtual {v10, v0, v7, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 266
    invoke-virtual {v10, v12}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 269
    move-result-object v0

    .line 272
    check-cast v0, Landroid/widget/TextView;

    .line 273
    const v11, 0x7f0a06dc    # @id/overlay_see_more

    .line 275
    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 278
    move-result-object v11

    .line 281
    new-instance v12, Landroidx/slice/CornerDrawable;

    .line 282
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 284
    move-result-object v13

    .line 287
    const v14, 0x1010030    # @android:attr/colorForeground

    .line 288
    invoke-static {v14, v13}, Landroidx/slice/widget/SliceViewUtil;->getDrawable(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    .line 291
    move-result-object v13

    .line 294
    iget-object v14, p0, Landroidx/slice/widget/SliceChildView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    .line 295
    iget v14, v14, Landroidx/slice/widget/SliceStyle;->mImageCornerRadius:F

    .line 297
    invoke-direct {v12, v13, v14}, Landroidx/slice/CornerDrawable;-><init>(Landroid/graphics/drawable/Drawable;F)V

    .line 299
    invoke-virtual {v11, v12}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 302
    goto :goto_6

    .line 305
    :cond_b
    iget-object v0, p0, Landroidx/slice/widget/GridRowView;->mViewContainer:Landroid/widget/LinearLayout;

    .line 306
    const v11, 0x7f0d001c    # @layout/abc_slice_grid_see_more 'res/layout/abc_slice_grid_see_more.xml'

    .line 308
    invoke-virtual {v10, v11, v0, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 311
    move-result-object v0

    .line 314
    move-object v10, v0

    .line 315
    check-cast v10, Landroid/widget/LinearLayout;

    .line 316
    invoke-virtual {v10, v12}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 318
    move-result-object v0

    .line 321
    check-cast v0, Landroid/widget/TextView;

    .line 322
    const v11, 0x7f0a0979    # @id/text_see_more

    .line 324
    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 327
    move-result-object v11

    .line 330
    check-cast v11, Landroid/widget/TextView;

    .line 331
    iget-object v12, p0, Landroidx/slice/widget/SliceChildView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    .line 333
    if-eqz v12, :cond_d

    .line 335
    iget-object v13, p0, Landroidx/slice/widget/SliceChildView;->mRowStyle:Landroidx/slice/widget/RowStyle;

    .line 337
    if-eqz v13, :cond_d

    .line 339
    iget v12, v12, Landroidx/slice/widget/SliceStyle;->mGridTitleSize:I

    .line 341
    int-to-float v12, v12

    .line 343
    invoke-virtual {v11, v7, v12}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 344
    iget-object v12, p0, Landroidx/slice/widget/SliceChildView;->mRowStyle:Landroidx/slice/widget/RowStyle;

    .line 347
    iget-object v13, v12, Landroidx/slice/widget/RowStyle;->mTitleColor:Ljava/lang/Integer;

    .line 349
    if-eqz v13, :cond_c

    .line 351
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    .line 353
    move-result v12

    .line 356
    goto :goto_5

    .line 357
    :cond_c
    iget-object v12, v12, Landroidx/slice/widget/RowStyle;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    .line 358
    iget v12, v12, Landroidx/slice/widget/SliceStyle;->mTitleColor:I

    .line 360
    :goto_5
    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 362
    :cond_d
    :goto_6
    iget-object v11, p0, Landroidx/slice/widget/GridRowView;->mViewContainer:Landroid/widget/LinearLayout;

    .line 365
    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    .line 367
    const/high16 v13, 0x3f800000    # 1.0f

    .line 369
    invoke-direct {v12, v7, v1, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 371
    invoke-virtual {v11, v10, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 374
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 377
    move-result-object v1

    .line 380
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 381
    move-result-object v3

    .line 384
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 385
    move-result-object v3

    .line 388
    const v7, 0x7f130029    # @string/abc_slice_more_content '+ %1$d'

    .line 389
    invoke-virtual {v1, v7, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 392
    move-result-object v1

    .line 395
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 396
    new-instance v0, Landroidx/slice/widget/EventInfo;

    .line 399
    invoke-virtual {p0}, Landroidx/slice/widget/SliceChildView;->getMode()I

    .line 401
    move-result v1

    .line 404
    iget v3, p0, Landroidx/slice/widget/GridRowView;->mRowIndex:I

    .line 405
    invoke-direct {v0, v1, v4, v2, v3}, Landroidx/slice/widget/EventInfo;-><init>(IIII)V

    .line 407
    iput v5, v0, Landroidx/slice/widget/EventInfo;->actionPosition:I

    .line 410
    iput v8, v0, Landroidx/slice/widget/EventInfo;->actionIndex:I

    .line 412
    iput v9, v0, Landroidx/slice/widget/EventInfo;->actionCount:I

    .line 414
    new-instance v1, Landroid/util/Pair;

    .line 416
    invoke-direct {v1, v6, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 418
    invoke-virtual {v10, v1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 421
    invoke-virtual {p0, v10}, Landroidx/slice/widget/GridRowView;->makeClickable(Landroid/view/View;)V

    .line 424
    goto :goto_7

    .line 427
    :cond_e
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 428
    move-result-object v9

    .line 431
    check-cast v9, Landroidx/slice/widget/GridContent$CellContent;

    .line 432
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 434
    move-result v10

    .line 437
    invoke-static {v10, v0}, Ljava/lang/Math;->min(II)I

    .line 438
    move-result v10

    .line 441
    invoke-virtual {p0, v9, v8, v10}, Landroidx/slice/widget/GridRowView;->addCell(Landroidx/slice/widget/GridContent$CellContent;II)V

    .line 442
    add-int/lit8 v8, v8, 0x1

    .line 445
    goto/16 :goto_4

    .line 447
    :cond_f
    :goto_7
    return-void

    .line 449
    :cond_10
    :goto_8
    invoke-virtual {p0}, Landroidx/slice/widget/GridRowView;->resetView()V

    .line 450
    return-void
    .line 453
.end method

.method public final resetView()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Landroidx/slice/widget/GridRowView;->mMaxCellUpdateScheduled:Z

    .line 2
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    iput-boolean v1, p0, Landroidx/slice/widget/GridRowView;->mMaxCellUpdateScheduled:Z

    .line 7
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 9
    move-result-object v0

    .line 12
    iget-object v2, p0, Landroidx/slice/widget/GridRowView;->mMaxCellsUpdater:Landroidx/slice/widget/GridRowView$2;

    .line 13
    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 15
    :cond_0
    iget-object v0, p0, Landroidx/slice/widget/GridRowView;->mViewContainer:Landroid/widget/LinearLayout;

    .line 18
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 20
    const/4 v0, 0x2

    .line 23
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setLayoutDirection(I)V

    .line 24
    invoke-virtual {p0, v1}, Landroidx/slice/widget/GridRowView;->makeEntireGridClickable(Z)V

    .line 27
    return-void
    .line 30
.end method

.method public final scheduleMaxCellsUpdate()Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/slice/widget/GridRowView;->mGridContent:Landroidx/slice/widget/GridContent;

    .line 2
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {v0}, Landroidx/slice/widget/GridContent;->isValid()Z

    .line 7
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    .line 14
    move-result v0

    .line 17
    if-nez v0, :cond_1

    .line 18
    iput-boolean v1, p0, Landroidx/slice/widget/GridRowView;->mMaxCellUpdateScheduled:Z

    .line 20
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 22
    move-result-object v0

    .line 25
    iget-object p0, p0, Landroidx/slice/widget/GridRowView;->mMaxCellsUpdater:Landroidx/slice/widget/GridRowView$2;

    .line 26
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 28
    return v1

    .line 31
    :cond_1
    invoke-virtual {p0}, Landroidx/slice/widget/GridRowView;->getMaxCells()I

    .line 32
    move-result v0

    .line 35
    iput v0, p0, Landroidx/slice/widget/GridRowView;->mMaxCells:I

    .line 36
    const/4 p0, 0x0

    .line 38
    return p0

    .line 39
    :cond_2
    :goto_0
    return v1
    .line 40
.end method

.method public setInsets(IIII)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/slice/widget/SliceChildView;->setInsets(IIII)V

    .line 2
    iget-object v0, p0, Landroidx/slice/widget/GridRowView;->mViewContainer:Landroid/widget/LinearLayout;

    .line 5
    invoke-virtual {p0}, Landroidx/slice/widget/GridRowView;->getExtraTopPadding()I

    .line 7
    move-result v1

    .line 10
    add-int/2addr v1, p2

    .line 11
    invoke-virtual {p0}, Landroidx/slice/widget/GridRowView;->getExtraBottomPadding()I

    .line 12
    move-result p0

    .line 15
    add-int/2addr p0, p4

    .line 16
    invoke-virtual {v0, p1, v1, p3, p0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 17
    return-void
    .line 20
.end method

.method public setSliceItem(Landroidx/slice/widget/SliceContent;ZIILandroidx/slice/widget/SliceView$OnSliceActionListener;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/slice/widget/GridRowView;->resetView()V

    .line 2
    invoke-virtual {p0, p5}, Landroidx/slice/widget/SliceChildView;->setSliceActionListener(Landroidx/slice/widget/SliceView$OnSliceActionListener;)V

    .line 5
    iput p3, p0, Landroidx/slice/widget/GridRowView;->mRowIndex:I

    .line 8
    iput p4, p0, Landroidx/slice/widget/GridRowView;->mRowCount:I

    .line 10
    check-cast p1, Landroidx/slice/widget/GridContent;

    .line 12
    iput-object p1, p0, Landroidx/slice/widget/GridRowView;->mGridContent:Landroidx/slice/widget/GridContent;

    .line 14
    invoke-virtual {p0}, Landroidx/slice/widget/GridRowView;->scheduleMaxCellsUpdate()Z

    .line 16
    move-result p1

    .line 19
    if-nez p1, :cond_0

    .line 20
    invoke-virtual {p0}, Landroidx/slice/widget/GridRowView;->populateViews()V

    .line 22
    :cond_0
    iget-object p1, p0, Landroidx/slice/widget/GridRowView;->mViewContainer:Landroid/widget/LinearLayout;

    .line 25
    iget p2, p0, Landroidx/slice/widget/SliceChildView;->mInsetStart:I

    .line 27
    iget p3, p0, Landroidx/slice/widget/SliceChildView;->mInsetTop:I

    .line 29
    invoke-virtual {p0}, Landroidx/slice/widget/GridRowView;->getExtraTopPadding()I

    .line 31
    move-result p4

    .line 34
    add-int/2addr p4, p3

    .line 35
    iget p3, p0, Landroidx/slice/widget/SliceChildView;->mInsetEnd:I

    .line 36
    iget p5, p0, Landroidx/slice/widget/SliceChildView;->mInsetBottom:I

    .line 38
    invoke-virtual {p0}, Landroidx/slice/widget/GridRowView;->getExtraBottomPadding()I

    .line 40
    move-result p0

    .line 43
    add-int/2addr p0, p5

    .line 44
    invoke-virtual {p1, p2, p4, p3, p0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 45
    return-void
    .line 48
.end method

.method public setTint(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/slice/widget/SliceChildView;->setTint(I)V

    .line 2
    iget-object p1, p0, Landroidx/slice/widget/GridRowView;->mGridContent:Landroidx/slice/widget/GridContent;

    .line 5
    if-eqz p1, :cond_0

    .line 7
    invoke-virtual {p0}, Landroidx/slice/widget/GridRowView;->resetView()V

    .line 9
    invoke-virtual {p0}, Landroidx/slice/widget/GridRowView;->populateViews()V

    .line 12
    :cond_0
    return-void
    .line 15
.end method
