.class public final Landroidx/slice/widget/GridContent$CellContent;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mCellItems:Ljava/util/ArrayList;

.field public mContentDescr:Landroidx/slice/SliceItem;

.field public mContentIntent:Landroidx/slice/SliceItem;

.field public mImage:Landroidx/core/graphics/drawable/IconCompat;

.field public mImageCount:I

.field public mImageMode:I

.field public mOverlayItem:Landroidx/slice/SliceItem;

.field public mPicker:Landroidx/slice/SliceItem;

.field public mTextCount:I

.field public mTitleItem:Landroidx/slice/SliceItem;

.field public mToggleItem:Landroidx/slice/SliceItem;


# direct methods
.method public constructor <init>(Landroidx/slice/SliceItem;)V
    .locals 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    iput-object v0, p0, Landroidx/slice/widget/GridContent$CellContent;->mCellItems:Ljava/util/ArrayList;

    .line 10
    const/4 v1, -0x1

    .line 12
    iput v1, p0, Landroidx/slice/widget/GridContent$CellContent;->mImageMode:I

    .line 13
    iget-object v1, p1, Landroidx/slice/SliceItem;->mFormat:Ljava/lang/String;

    .line 15
    const-string/jumbo v2, "shortcut"

    .line 17
    invoke-virtual {p1, v2}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    .line 20
    move-result v2

    .line 23
    const/4 v3, 0x0

    .line 24
    if-nez v2, :cond_6

    .line 25
    const-string/jumbo v2, "slice"

    .line 27
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    move-result v4

    .line 33
    const-string v5, "action"

    .line 34
    if-nez v4, :cond_0

    .line 36
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    move-result v4

    .line 41
    if-eqz v4, :cond_6

    .line 42
    :cond_0
    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    .line 44
    move-result-object v0

    .line 47
    invoke-virtual {v0}, Landroidx/slice/Slice;->getItems()Ljava/util/List;

    .line 48
    move-result-object v0

    .line 51
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 52
    move-result-object v4

    .line 55
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 56
    move-result v6

    .line 59
    if-eqz v6, :cond_4

    .line 60
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 62
    move-result-object v6

    .line 65
    check-cast v6, Landroidx/slice/SliceItem;

    .line 66
    iget-object v7, v6, Landroidx/slice/SliceItem;->mFormat:Ljava/lang/String;

    .line 68
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 70
    move-result v7

    .line 73
    if-nez v7, :cond_2

    .line 74
    iget-object v7, v6, Landroidx/slice/SliceItem;->mFormat:Ljava/lang/String;

    .line 76
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 78
    move-result v7

    .line 81
    if-eqz v7, :cond_1

    .line 82
    :cond_2
    iget-object v7, v6, Landroidx/slice/SliceItem;->mSubType:Ljava/lang/String;

    .line 84
    const-string v8, "date_picker"

    .line 86
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 88
    move-result v7

    .line 91
    if-nez v7, :cond_1

    .line 92
    iget-object v7, v6, Landroidx/slice/SliceItem;->mSubType:Ljava/lang/String;

    .line 94
    const-string/jumbo v8, "time_picker"

    .line 96
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 99
    move-result v7

    .line 102
    if-nez v7, :cond_1

    .line 103
    invoke-virtual {v6}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    .line 105
    move-result-object v2

    .line 108
    invoke-virtual {v2}, Landroidx/slice/Slice;->getItems()Ljava/util/List;

    .line 109
    move-result-object v2

    .line 112
    new-instance v4, Landroidx/slice/core/SliceActionImpl;

    .line 113
    invoke-direct {v4, v6}, Landroidx/slice/core/SliceActionImpl;-><init>(Landroidx/slice/SliceItem;)V

    .line 115
    invoke-virtual {v4}, Landroidx/slice/core/SliceActionImpl;->isToggle()Z

    .line 118
    move-result v4

    .line 121
    if-eqz v4, :cond_3

    .line 122
    iput-object v6, p0, Landroidx/slice/widget/GridContent$CellContent;->mToggleItem:Landroidx/slice/SliceItem;

    .line 124
    goto :goto_0

    .line 126
    :cond_3
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 127
    move-result-object v4

    .line 130
    check-cast v4, Landroidx/slice/SliceItem;

    .line 131
    iput-object v4, p0, Landroidx/slice/widget/GridContent$CellContent;->mContentIntent:Landroidx/slice/SliceItem;

    .line 133
    goto :goto_0

    .line 135
    :cond_4
    const/4 v2, 0x0

    .line 136
    :goto_0
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 137
    move-result v1

    .line 140
    if-eqz v1, :cond_5

    .line 141
    iput-object p1, p0, Landroidx/slice/widget/GridContent$CellContent;->mContentIntent:Landroidx/slice/SliceItem;

    .line 143
    :cond_5
    iput v3, p0, Landroidx/slice/widget/GridContent$CellContent;->mTextCount:I

    .line 145
    iput v3, p0, Landroidx/slice/widget/GridContent$CellContent;->mImageCount:I

    .line 147
    invoke-virtual {p0, v0}, Landroidx/slice/widget/GridContent$CellContent;->fillCellItems(Ljava/util/List;)V

    .line 149
    iget p1, p0, Landroidx/slice/widget/GridContent$CellContent;->mTextCount:I

    .line 152
    if-nez p1, :cond_b

    .line 154
    iget p1, p0, Landroidx/slice/widget/GridContent$CellContent;->mImageCount:I

    .line 156
    if-nez p1, :cond_b

    .line 158
    if-eqz v2, :cond_b

    .line 160
    invoke-virtual {p0, v2}, Landroidx/slice/widget/GridContent$CellContent;->fillCellItems(Ljava/util/List;)V

    .line 162
    goto :goto_3

    .line 165
    :cond_6
    iget-object v1, p1, Landroidx/slice/SliceItem;->mFormat:Ljava/lang/String;

    .line 166
    iget-object v2, p1, Landroidx/slice/SliceItem;->mSubType:Ljava/lang/String;

    .line 168
    const-string v4, "content_description"

    .line 170
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 172
    move-result v2

    .line 175
    const/4 v4, 0x1

    .line 176
    if-nez v2, :cond_8

    .line 177
    const-string/jumbo v2, "ttl"

    .line 179
    const-string v5, "last_updated"

    .line 182
    const-string v6, "keywords"

    .line 184
    filled-new-array {v6, v2, v5}, [Ljava/lang/String;

    .line 186
    move-result-object v2

    .line 189
    invoke-virtual {p1, v2}, Landroidx/slice/SliceItem;->hasAnyHints([Ljava/lang/String;)Z

    .line 190
    move-result v2

    .line 193
    if-eqz v2, :cond_7

    .line 194
    goto :goto_1

    .line 196
    :cond_7
    move v2, v3

    .line 197
    goto :goto_2

    .line 198
    :cond_8
    :goto_1
    move v2, v4

    .line 199
    :goto_2
    if-nez v2, :cond_a

    .line 200
    const-string/jumbo v2, "text"

    .line 202
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 205
    move-result v2

    .line 208
    if-nez v2, :cond_9

    .line 209
    const-string v2, "long"

    .line 211
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 213
    move-result v2

    .line 216
    if-nez v2, :cond_9

    .line 217
    const-string v2, "image"

    .line 219
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 221
    move-result v1

    .line 224
    if-eqz v1, :cond_a

    .line 225
    :cond_9
    move v3, v4

    .line 227
    :cond_a
    if-eqz v3, :cond_b

    .line 228
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    :cond_b
    :goto_3
    iget-object p1, p0, Landroidx/slice/widget/GridContent$CellContent;->mPicker:Landroidx/slice/SliceItem;

    .line 233
    if-nez p1, :cond_c

    .line 235
    iget-object p0, p0, Landroidx/slice/widget/GridContent$CellContent;->mCellItems:Ljava/util/ArrayList;

    .line 237
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 239
    move-result p1

    .line 242
    if-lez p1, :cond_c

    .line 243
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 245
    :cond_c
    return-void
    .line 248
.end method


# virtual methods
.method public final fillCellItems(Ljava/util/List;)V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 3
    move-result v1

    .line 6
    if-ge v0, v1, :cond_9

    .line 7
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 9
    move-result-object v1

    .line 12
    check-cast v1, Landroidx/slice/SliceItem;

    .line 13
    iget-object v2, v1, Landroidx/slice/SliceItem;->mFormat:Ljava/lang/String;

    .line 15
    iget-object v3, p0, Landroidx/slice/widget/GridContent$CellContent;->mPicker:Landroidx/slice/SliceItem;

    .line 17
    if-nez v3, :cond_1

    .line 19
    iget-object v3, v1, Landroidx/slice/SliceItem;->mSubType:Ljava/lang/String;

    .line 21
    const-string v4, "date_picker"

    .line 23
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    move-result v3

    .line 28
    if-nez v3, :cond_0

    .line 29
    iget-object v3, v1, Landroidx/slice/SliceItem;->mSubType:Ljava/lang/String;

    .line 31
    const-string/jumbo v4, "time_picker"

    .line 33
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    move-result v3

    .line 39
    if-eqz v3, :cond_1

    .line 40
    :cond_0
    iput-object v1, p0, Landroidx/slice/widget/GridContent$CellContent;->mPicker:Landroidx/slice/SliceItem;

    .line 42
    goto/16 :goto_1

    .line 44
    :cond_1
    iget-object v3, v1, Landroidx/slice/SliceItem;->mSubType:Ljava/lang/String;

    .line 46
    const-string v4, "content_description"

    .line 48
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    move-result v3

    .line 53
    if-eqz v3, :cond_2

    .line 54
    iput-object v1, p0, Landroidx/slice/widget/GridContent$CellContent;->mContentDescr:Landroidx/slice/SliceItem;

    .line 56
    goto :goto_1

    .line 58
    :cond_2
    iget v3, p0, Landroidx/slice/widget/GridContent$CellContent;->mTextCount:I

    .line 59
    iget-object v4, p0, Landroidx/slice/widget/GridContent$CellContent;->mCellItems:Ljava/util/ArrayList;

    .line 61
    const/4 v5, 0x1

    .line 63
    const/4 v6, 0x2

    .line 64
    if-ge v3, v6, :cond_7

    .line 65
    const-string/jumbo v3, "text"

    .line 67
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 70
    move-result v3

    .line 73
    if-nez v3, :cond_3

    .line 74
    const-string v3, "long"

    .line 76
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 78
    move-result v2

    .line 81
    if-eqz v2, :cond_7

    .line 82
    :cond_3
    iget-object v2, p0, Landroidx/slice/widget/GridContent$CellContent;->mTitleItem:Landroidx/slice/SliceItem;

    .line 84
    if-eqz v2, :cond_4

    .line 86
    const-string/jumbo v3, "title"

    .line 88
    invoke-virtual {v2, v3}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    .line 91
    move-result v2

    .line 94
    if-nez v2, :cond_5

    .line 95
    invoke-virtual {v1, v3}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    .line 97
    move-result v2

    .line 100
    if-eqz v2, :cond_5

    .line 101
    :cond_4
    iput-object v1, p0, Landroidx/slice/widget/GridContent$CellContent;->mTitleItem:Landroidx/slice/SliceItem;

    .line 103
    :cond_5
    const-string v2, "overlay"

    .line 105
    invoke-virtual {v1, v2}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    .line 107
    move-result v2

    .line 110
    if-eqz v2, :cond_6

    .line 111
    iget-object v2, p0, Landroidx/slice/widget/GridContent$CellContent;->mOverlayItem:Landroidx/slice/SliceItem;

    .line 113
    if-nez v2, :cond_8

    .line 115
    iput-object v1, p0, Landroidx/slice/widget/GridContent$CellContent;->mOverlayItem:Landroidx/slice/SliceItem;

    .line 117
    goto :goto_1

    .line 119
    :cond_6
    iget v2, p0, Landroidx/slice/widget/GridContent$CellContent;->mTextCount:I

    .line 120
    add-int/2addr v2, v5

    .line 122
    iput v2, p0, Landroidx/slice/widget/GridContent$CellContent;->mTextCount:I

    .line 123
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    goto :goto_1

    .line 128
    :cond_7
    iget v2, p0, Landroidx/slice/widget/GridContent$CellContent;->mImageCount:I

    .line 129
    if-ge v2, v5, :cond_8

    .line 131
    iget-object v2, v1, Landroidx/slice/SliceItem;->mFormat:Ljava/lang/String;

    .line 133
    const-string v3, "image"

    .line 135
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 137
    move-result v2

    .line 140
    if-eqz v2, :cond_8

    .line 141
    invoke-static {v1}, Landroidx/slice/core/SliceActionImpl;->parseImageMode(Landroidx/slice/SliceItem;)I

    .line 143
    move-result v2

    .line 146
    iput v2, p0, Landroidx/slice/widget/GridContent$CellContent;->mImageMode:I

    .line 147
    iget v2, p0, Landroidx/slice/widget/GridContent$CellContent;->mImageCount:I

    .line 149
    add-int/2addr v2, v5

    .line 151
    iput v2, p0, Landroidx/slice/widget/GridContent$CellContent;->mImageCount:I

    .line 152
    iget-object v2, v1, Landroidx/slice/SliceItem;->mObj:Ljava/lang/Object;

    .line 154
    check-cast v2, Landroidx/core/graphics/drawable/IconCompat;

    .line 156
    iput-object v2, p0, Landroidx/slice/widget/GridContent$CellContent;->mImage:Landroidx/core/graphics/drawable/IconCompat;

    .line 158
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    :cond_8
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 163
    goto/16 :goto_0

    .line 165
    :cond_9
    return-void
    .line 167
.end method
