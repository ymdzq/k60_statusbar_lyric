.class public final Landroidx/slice/widget/GridContent;
.super Landroidx/slice/widget/SliceContent;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public mAllImages:Z

.field public mFirstImage:Landroidx/core/graphics/drawable/IconCompat;

.field public mFirstImageSize:Landroid/graphics/Point;

.field public final mGridContent:Ljava/util/ArrayList;

.field public mIsLastIndex:Z

.field public mLargestImageMode:I

.field public mMaxCellLineCount:I

.field public mPrimaryAction:Landroidx/slice/SliceItem;

.field public mSeeMoreItem:Landroidx/slice/SliceItem;

.field public mTitleItem:Landroidx/slice/SliceItem;


# direct methods
.method public constructor <init>(Landroidx/slice/SliceItem;I)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 4
    invoke-direct/range {p0 .. p2}, Landroidx/slice/widget/SliceContent;-><init>(Landroidx/slice/SliceItem;I)V

    .line 6
    new-instance v2, Ljava/util/ArrayList;

    .line 9
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 11
    iput-object v2, v0, Landroidx/slice/widget/GridContent;->mGridContent:Ljava/util/ArrayList;

    .line 14
    const/4 v2, 0x5

    .line 16
    iput v2, v0, Landroidx/slice/widget/GridContent;->mLargestImageMode:I

    .line 17
    const/4 v2, 0x0

    .line 19
    iput-object v2, v0, Landroidx/slice/widget/GridContent;->mFirstImage:Landroidx/core/graphics/drawable/IconCompat;

    .line 20
    iput-object v2, v0, Landroidx/slice/widget/GridContent;->mFirstImageSize:Landroid/graphics/Point;

    .line 22
    const-string/jumbo v3, "see_more"

    .line 24
    invoke-static {v1, v2, v3}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    .line 27
    move-result-object v4

    .line 30
    iput-object v4, v0, Landroidx/slice/widget/GridContent;->mSeeMoreItem:Landroidx/slice/SliceItem;

    .line 31
    const/4 v5, 0x0

    .line 33
    const-string/jumbo v6, "slice"

    .line 34
    if-eqz v4, :cond_0

    .line 37
    iget-object v4, v4, Landroidx/slice/SliceItem;->mFormat:Ljava/lang/String;

    .line 39
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    move-result v4

    .line 44
    if-eqz v4, :cond_0

    .line 45
    iget-object v4, v0, Landroidx/slice/widget/GridContent;->mSeeMoreItem:Landroidx/slice/SliceItem;

    .line 47
    invoke-virtual {v4}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    .line 49
    move-result-object v4

    .line 52
    invoke-virtual {v4}, Landroidx/slice/Slice;->getItems()Ljava/util/List;

    .line 53
    move-result-object v4

    .line 56
    if-eqz v4, :cond_0

    .line 57
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 59
    move-result v7

    .line 62
    if-lez v7, :cond_0

    .line 63
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 65
    move-result-object v4

    .line 68
    check-cast v4, Landroidx/slice/SliceItem;

    .line 69
    iput-object v4, v0, Landroidx/slice/widget/GridContent;->mSeeMoreItem:Landroidx/slice/SliceItem;

    .line 71
    :cond_0
    const-string/jumbo v4, "shortcut"

    .line 73
    const-string/jumbo v7, "title"

    .line 76
    filled-new-array {v4, v7}, [Ljava/lang/String;

    .line 79
    move-result-object v4

    .line 82
    const-string v7, "actions"

    .line 83
    filled-new-array {v7}, [Ljava/lang/String;

    .line 85
    move-result-object v7

    .line 88
    invoke-static {v1, v6, v4, v7}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/SliceItem;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/SliceItem;

    .line 89
    move-result-object v4

    .line 92
    iput-object v4, v0, Landroidx/slice/widget/GridContent;->mPrimaryAction:Landroidx/slice/SliceItem;

    .line 93
    const/4 v4, 0x1

    .line 95
    iput-boolean v4, v0, Landroidx/slice/widget/GridContent;->mAllImages:Z

    .line 96
    iget-object v7, v1, Landroidx/slice/SliceItem;->mFormat:Ljava/lang/String;

    .line 98
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 100
    move-result v6

    .line 103
    if-eqz v6, :cond_8

    .line 104
    invoke-virtual/range {p1 .. p1}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    .line 106
    move-result-object v1

    .line 109
    invoke-virtual {v1}, Landroidx/slice/Slice;->getItems()Ljava/util/List;

    .line 110
    move-result-object v1

    .line 113
    new-instance v6, Ljava/util/ArrayList;

    .line 114
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 116
    move v7, v5

    .line 119
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 120
    move-result v8

    .line 123
    const-string v9, "content_description"

    .line 124
    if-ge v7, v8, :cond_6

    .line 126
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 128
    move-result-object v8

    .line 131
    check-cast v8, Landroidx/slice/SliceItem;

    .line 132
    invoke-static {v8, v2, v3}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    .line 134
    move-result-object v10

    .line 137
    if-eqz v10, :cond_1

    .line 138
    move v10, v4

    .line 140
    goto :goto_1

    .line 141
    :cond_1
    move v10, v5

    .line 142
    :goto_1
    if-nez v10, :cond_3

    .line 143
    const-string/jumbo v11, "shortcut"

    .line 145
    const-string/jumbo v12, "see_more"

    .line 148
    const-string v13, "keywords"

    .line 151
    const-string/jumbo v14, "ttl"

    .line 153
    const-string v15, "last_updated"

    .line 156
    const-string v16, "overlay"

    .line 158
    filled-new-array/range {v11 .. v16}, [Ljava/lang/String;

    .line 160
    move-result-object v10

    .line 163
    invoke-virtual {v8, v10}, Landroidx/slice/SliceItem;->hasAnyHints([Ljava/lang/String;)Z

    .line 164
    move-result v10

    .line 167
    if-eqz v10, :cond_2

    .line 168
    goto :goto_2

    .line 170
    :cond_2
    move v10, v5

    .line 171
    goto :goto_3

    .line 172
    :cond_3
    :goto_2
    move v10, v4

    .line 173
    :goto_3
    iget-object v11, v8, Landroidx/slice/SliceItem;->mSubType:Ljava/lang/String;

    .line 174
    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 176
    move-result v9

    .line 179
    if-eqz v9, :cond_4

    .line 180
    iput-object v8, v0, Landroidx/slice/widget/SliceContent;->mContentDescr:Landroidx/slice/SliceItem;

    .line 182
    goto :goto_4

    .line 184
    :cond_4
    if-nez v10, :cond_5

    .line 185
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    :cond_5
    :goto_4
    add-int/lit8 v7, v7, 0x1

    .line 190
    goto :goto_0

    .line 192
    :cond_6
    :goto_5
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 193
    move-result v1

    .line 196
    if-ge v5, v1, :cond_9

    .line 197
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 199
    move-result-object v1

    .line 202
    check-cast v1, Landroidx/slice/SliceItem;

    .line 203
    iget-object v2, v1, Landroidx/slice/SliceItem;->mSubType:Ljava/lang/String;

    .line 205
    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 207
    move-result v2

    .line 210
    if-nez v2, :cond_7

    .line 211
    new-instance v2, Landroidx/slice/widget/GridContent$CellContent;

    .line 213
    invoke-direct {v2, v1}, Landroidx/slice/widget/GridContent$CellContent;-><init>(Landroidx/slice/SliceItem;)V

    .line 215
    invoke-virtual {v0, v2}, Landroidx/slice/widget/GridContent;->processContent(Landroidx/slice/widget/GridContent$CellContent;)V

    .line 218
    :cond_7
    add-int/lit8 v5, v5, 0x1

    .line 221
    goto :goto_5

    .line 223
    :cond_8
    new-instance v2, Landroidx/slice/widget/GridContent$CellContent;

    .line 224
    invoke-direct {v2, v1}, Landroidx/slice/widget/GridContent$CellContent;-><init>(Landroidx/slice/SliceItem;)V

    .line 226
    invoke-virtual {v0, v2}, Landroidx/slice/widget/GridContent;->processContent(Landroidx/slice/widget/GridContent$CellContent;)V

    .line 229
    :cond_9
    invoke-virtual/range {p0 .. p0}, Landroidx/slice/widget/GridContent;->isValid()Z

    .line 232
    return-void
    .line 235
.end method


# virtual methods
.method public final getFirstImageSize(Landroid/content/Context;)Landroid/graphics/Point;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/slice/widget/GridContent;->mFirstImage:Landroidx/core/graphics/drawable/IconCompat;

    .line 2
    if-nez v0, :cond_0

    .line 4
    new-instance p0, Landroid/graphics/Point;

    .line 6
    const/4 p1, -0x1

    .line 8
    invoke-direct {p0, p1, p1}, Landroid/graphics/Point;-><init>(II)V

    .line 9
    return-object p0

    .line 12
    :cond_0
    iget-object v1, p0, Landroidx/slice/widget/GridContent;->mFirstImageSize:Landroid/graphics/Point;

    .line 13
    if-nez v1, :cond_1

    .line 15
    invoke-virtual {v0, p1}, Landroidx/core/graphics/drawable/IconCompat;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    .line 17
    move-result-object p1

    .line 20
    new-instance v0, Landroid/graphics/Point;

    .line 21
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 23
    move-result v1

    .line 26
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 27
    move-result p1

    .line 30
    invoke-direct {v0, v1, p1}, Landroid/graphics/Point;-><init>(II)V

    .line 31
    iput-object v0, p0, Landroidx/slice/widget/GridContent;->mFirstImageSize:Landroid/graphics/Point;

    .line 34
    :cond_1
    iget-object p0, p0, Landroidx/slice/widget/GridContent;->mFirstImageSize:Landroid/graphics/Point;

    .line 36
    return-object p0
    .line 38
.end method

.method public final getHeight(Landroidx/slice/widget/SliceStyle;Landroidx/slice/widget/SliceViewPolicy;)I
    .locals 8

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iget p2, p2, Landroidx/slice/widget/SliceViewPolicy;->mMode:I

    .line 5
    const/4 v0, 0x0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-ne p2, v1, :cond_0

    .line 9
    move p2, v1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move p2, v0

    .line 13
    :goto_0
    invoke-virtual {p0}, Landroidx/slice/widget/GridContent;->isValid()Z

    .line 14
    move-result v2

    .line 17
    if-nez v2, :cond_1

    .line 18
    goto/16 :goto_8

    .line 20
    :cond_1
    iget v2, p0, Landroidx/slice/widget/GridContent;->mLargestImageMode:I

    .line 22
    iget-boolean v3, p0, Landroidx/slice/widget/GridContent;->mAllImages:Z

    .line 24
    iget-object v4, p1, Landroidx/slice/widget/SliceStyle;->mContext:Landroid/content/Context;

    .line 26
    const/4 v5, 0x4

    .line 28
    if-eqz v3, :cond_6

    .line 29
    iget-object v3, p0, Landroidx/slice/widget/GridContent;->mGridContent:Ljava/util/ArrayList;

    .line 31
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 33
    move-result v3

    .line 36
    if-ne v3, v1, :cond_3

    .line 37
    if-eqz p2, :cond_2

    .line 39
    iget p2, p1, Landroidx/slice/widget/SliceStyle;->mGridBigPicMinHeight:I

    .line 41
    goto :goto_6

    .line 43
    :cond_2
    iget p2, p1, Landroidx/slice/widget/SliceStyle;->mGridBigPicMaxHeight:I

    .line 44
    goto :goto_6

    .line 46
    :cond_3
    if-nez v2, :cond_4

    .line 47
    goto :goto_5

    .line 49
    :cond_4
    if-ne v2, v5, :cond_5

    .line 50
    invoke-virtual {p0, v4}, Landroidx/slice/widget/GridContent;->getFirstImageSize(Landroid/content/Context;)Landroid/graphics/Point;

    .line 52
    move-result-object p2

    .line 55
    iget p2, p2, Landroid/graphics/Point;->y:I

    .line 56
    goto :goto_6

    .line 58
    :cond_5
    iget p2, p1, Landroidx/slice/widget/SliceStyle;->mGridAllImagesHeight:I

    .line 59
    goto :goto_6

    .line 61
    :cond_6
    iget v3, p0, Landroidx/slice/widget/GridContent;->mMaxCellLineCount:I

    .line 62
    if-le v3, v1, :cond_7

    .line 64
    move v3, v1

    .line 66
    goto :goto_1

    .line 67
    :cond_7
    move v3, v0

    .line 68
    :goto_1
    iget-object v6, p0, Landroidx/slice/widget/GridContent;->mFirstImage:Landroidx/core/graphics/drawable/IconCompat;

    .line 69
    if-eqz v6, :cond_8

    .line 71
    move v6, v1

    .line 73
    goto :goto_2

    .line 74
    :cond_8
    move v6, v0

    .line 75
    :goto_2
    if-eqz v2, :cond_a

    .line 76
    const/4 v7, 0x5

    .line 78
    if-ne v2, v7, :cond_9

    .line 79
    goto :goto_3

    .line 81
    :cond_9
    move v7, v0

    .line 82
    goto :goto_4

    .line 83
    :cond_a
    :goto_3
    move v7, v1

    .line 84
    :goto_4
    if-ne v2, v5, :cond_c

    .line 85
    invoke-virtual {p0, v4}, Landroidx/slice/widget/GridContent;->getFirstImageSize(Landroid/content/Context;)Landroid/graphics/Point;

    .line 87
    move-result-object p2

    .line 90
    iget p2, p2, Landroid/graphics/Point;->y:I

    .line 91
    if-eqz v3, :cond_b

    .line 93
    const/4 v1, 0x2

    .line 95
    :cond_b
    iget v2, p1, Landroidx/slice/widget/SliceStyle;->mGridRawImageTextHeight:I

    .line 96
    mul-int/2addr v1, v2

    .line 98
    add-int/2addr p2, v1

    .line 99
    goto :goto_6

    .line 100
    :cond_c
    if-eqz v3, :cond_d

    .line 101
    if-nez p2, :cond_d

    .line 103
    if-eqz v6, :cond_e

    .line 105
    iget p2, p1, Landroidx/slice/widget/SliceStyle;->mGridMaxHeight:I

    .line 107
    goto :goto_6

    .line 109
    :cond_d
    if-eqz v7, :cond_f

    .line 110
    :cond_e
    :goto_5
    iget p2, p1, Landroidx/slice/widget/SliceStyle;->mGridMinHeight:I

    .line 112
    goto :goto_6

    .line 114
    :cond_f
    iget p2, p1, Landroidx/slice/widget/SliceStyle;->mGridImageTextHeight:I

    .line 115
    :goto_6
    iget-boolean v1, p0, Landroidx/slice/widget/GridContent;->mAllImages:Z

    .line 117
    if-eqz v1, :cond_10

    .line 119
    iget v2, p0, Landroidx/slice/widget/SliceContent;->mRowIndex:I

    .line 121
    if-nez v2, :cond_10

    .line 123
    iget v2, p1, Landroidx/slice/widget/SliceStyle;->mGridTopPadding:I

    .line 125
    goto :goto_7

    .line 127
    :cond_10
    move v2, v0

    .line 128
    :goto_7
    if-eqz v1, :cond_11

    .line 129
    iget-boolean p0, p0, Landroidx/slice/widget/GridContent;->mIsLastIndex:Z

    .line 131
    if-eqz p0, :cond_11

    .line 133
    iget v0, p1, Landroidx/slice/widget/SliceStyle;->mGridBottomPadding:I

    .line 135
    :cond_11
    add-int/2addr p2, v2

    .line 137
    add-int/2addr v0, p2

    .line 138
    :goto_8
    return v0
    .line 139
.end method

.method public final isValid()Z
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/slice/widget/SliceContent;->mSliceItem:Landroidx/slice/SliceItem;

    .line 2
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    move v0, v1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move v0, v2

    .line 10
    :goto_0
    if-eqz v0, :cond_1

    .line 11
    iget-object p0, p0, Landroidx/slice/widget/GridContent;->mGridContent:Ljava/util/ArrayList;

    .line 13
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 15
    move-result p0

    .line 18
    if-lez p0, :cond_1

    .line 19
    goto :goto_1

    .line 21
    :cond_1
    move v1, v2

    .line 22
    :goto_1
    return v1
    .line 23
.end method

.method public final processContent(Landroidx/slice/widget/GridContent$CellContent;)V
    .locals 5

    .line 1
    iget-object v0, p1, Landroidx/slice/widget/GridContent$CellContent;->mPicker:Landroidx/slice/SliceItem;

    .line 2
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    iget-object v3, p1, Landroidx/slice/widget/GridContent$CellContent;->mCellItems:Ljava/util/ArrayList;

    .line 6
    if-nez v0, :cond_1

    .line 8
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 10
    move-result v0

    .line 13
    if-lez v0, :cond_0

    .line 14
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 16
    move-result v0

    .line 19
    const/4 v4, 0x3

    .line 20
    if-gt v0, v4, :cond_0

    .line 21
    goto :goto_0

    .line 23
    :cond_0
    move v0, v1

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    :goto_0
    move v0, v2

    .line 26
    :goto_1
    if-eqz v0, :cond_8

    .line 27
    iget-object v0, p0, Landroidx/slice/widget/GridContent;->mTitleItem:Landroidx/slice/SliceItem;

    .line 29
    if-nez v0, :cond_2

    .line 31
    iget-object v0, p1, Landroidx/slice/widget/GridContent$CellContent;->mTitleItem:Landroidx/slice/SliceItem;

    .line 33
    if-eqz v0, :cond_2

    .line 35
    iput-object v0, p0, Landroidx/slice/widget/GridContent;->mTitleItem:Landroidx/slice/SliceItem;

    .line 37
    :cond_2
    iget-object v0, p0, Landroidx/slice/widget/GridContent;->mGridContent:Ljava/util/ArrayList;

    .line 39
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 44
    move-result v0

    .line 47
    if-ne v0, v2, :cond_3

    .line 48
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 50
    move-result-object v0

    .line 53
    check-cast v0, Landroidx/slice/SliceItem;

    .line 54
    iget-object v0, v0, Landroidx/slice/SliceItem;->mFormat:Ljava/lang/String;

    .line 56
    const-string v3, "image"

    .line 58
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    move-result v0

    .line 63
    if-eqz v0, :cond_3

    .line 64
    move v0, v2

    .line 66
    goto :goto_2

    .line 67
    :cond_3
    move v0, v1

    .line 68
    :goto_2
    if-nez v0, :cond_4

    .line 69
    iput-boolean v1, p0, Landroidx/slice/widget/GridContent;->mAllImages:Z

    .line 71
    :cond_4
    iget v0, p0, Landroidx/slice/widget/GridContent;->mMaxCellLineCount:I

    .line 73
    iget v3, p1, Landroidx/slice/widget/GridContent$CellContent;->mTextCount:I

    .line 75
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    .line 77
    move-result v0

    .line 80
    iput v0, p0, Landroidx/slice/widget/GridContent;->mMaxCellLineCount:I

    .line 81
    iget-object v0, p0, Landroidx/slice/widget/GridContent;->mFirstImage:Landroidx/core/graphics/drawable/IconCompat;

    .line 83
    if-nez v0, :cond_6

    .line 85
    iget-object v0, p1, Landroidx/slice/widget/GridContent$CellContent;->mImage:Landroidx/core/graphics/drawable/IconCompat;

    .line 87
    if-eqz v0, :cond_5

    .line 89
    move v1, v2

    .line 91
    :cond_5
    if-eqz v1, :cond_6

    .line 92
    iput-object v0, p0, Landroidx/slice/widget/GridContent;->mFirstImage:Landroidx/core/graphics/drawable/IconCompat;

    .line 94
    :cond_6
    iget v0, p0, Landroidx/slice/widget/GridContent;->mLargestImageMode:I

    .line 96
    const/4 v1, 0x5

    .line 98
    if-ne v0, v1, :cond_7

    .line 99
    iget p1, p1, Landroidx/slice/widget/GridContent$CellContent;->mImageMode:I

    .line 101
    goto :goto_3

    .line 103
    :cond_7
    iget p1, p1, Landroidx/slice/widget/GridContent$CellContent;->mImageMode:I

    .line 104
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    .line 106
    move-result p1

    .line 109
    :goto_3
    iput p1, p0, Landroidx/slice/widget/GridContent;->mLargestImageMode:I

    .line 110
    :cond_8
    return-void
    .line 112
.end method
