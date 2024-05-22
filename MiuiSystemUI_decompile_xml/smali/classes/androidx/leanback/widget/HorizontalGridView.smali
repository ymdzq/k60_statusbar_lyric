.class public Landroidx/leanback/widget/HorizontalGridView;
.super Landroidx/leanback/widget/BaseGridView;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public mFadingHighEdge:Z

.field public mFadingLowEdge:Z

.field public mHighFadeShader:Landroid/graphics/LinearGradient;

.field public mHighFadeShaderLength:I

.field public mHighFadeShaderOffset:I

.field public mLowFadeShader:Landroid/graphics/LinearGradient;

.field public mLowFadeShaderLength:I

.field public mLowFadeShaderOffset:I

.field public mTempBitmapHigh:Landroid/graphics/Bitmap;

.field public mTempBitmapLow:Landroid/graphics/Bitmap;

.field public mTempPaint:Landroid/graphics/Paint;

.field public final mTempRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Landroidx/leanback/widget/HorizontalGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Landroidx/leanback/widget/HorizontalGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroidx/leanback/widget/BaseGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    iput-object p3, p0, Landroidx/leanback/widget/HorizontalGridView;->mTempPaint:Landroid/graphics/Paint;

    .line 5
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Landroidx/leanback/widget/HorizontalGridView;->mTempRect:Landroid/graphics/Rect;

    .line 6
    iget-object p3, p0, Landroidx/leanback/widget/BaseGridView;->mLayoutManager:Landroidx/leanback/widget/GridLayoutManager;

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroidx/leanback/widget/GridLayoutManager;->setOrientation(I)V

    .line 7
    invoke-virtual {p0, p1, p2}, Landroidx/leanback/widget/BaseGridView;->initBaseGridViewAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 8
    sget-object v3, Landroidx/leanback/widget/R$styleable;->lbHorizontalGridView:[I

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p3

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 9
    sget-object v1, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    .line 10
    invoke-static/range {v1 .. v7}, Landroidx/core/view/ViewCompat$Api29Impl;->saveAttributeDataForStyleable(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    const/4 p1, 0x1

    .line 11
    invoke-virtual {p3, p1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 12
    invoke-virtual {p3, p1, v0}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result p2

    .line 13
    invoke-virtual {p0, p2}, Landroidx/leanback/widget/HorizontalGridView;->setRowHeight(I)V

    .line 14
    :cond_0
    invoke-virtual {p3, v0, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/leanback/widget/HorizontalGridView;->setNumRows(I)V

    .line 15
    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    .line 16
    invoke-virtual {p0}, Landroidx/leanback/widget/HorizontalGridView;->updateLayerType()V

    .line 17
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Landroidx/leanback/widget/HorizontalGridView;->mTempPaint:Landroid/graphics/Paint;

    .line 18
    new-instance p0, Landroid/graphics/PorterDuffXfermode;

    sget-object p2, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p0, p2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    return-void
.end method

.method private getTempBitmapHigh()Landroid/graphics/Bitmap;
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/HorizontalGridView;->mTempBitmapHigh:Landroid/graphics/Bitmap;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 6
    move-result v0

    .line 9
    iget v1, p0, Landroidx/leanback/widget/HorizontalGridView;->mHighFadeShaderLength:I

    .line 10
    if-ne v0, v1, :cond_0

    .line 12
    iget-object v0, p0, Landroidx/leanback/widget/HorizontalGridView;->mTempBitmapHigh:Landroid/graphics/Bitmap;

    .line 14
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 16
    move-result v0

    .line 19
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    .line 20
    move-result v1

    .line 23
    if-eq v0, v1, :cond_1

    .line 24
    :cond_0
    iget v0, p0, Landroidx/leanback/widget/HorizontalGridView;->mHighFadeShaderLength:I

    .line 26
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    .line 28
    move-result v1

    .line 31
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 32
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 34
    move-result-object v0

    .line 37
    iput-object v0, p0, Landroidx/leanback/widget/HorizontalGridView;->mTempBitmapHigh:Landroid/graphics/Bitmap;

    .line 38
    :cond_1
    iget-object p0, p0, Landroidx/leanback/widget/HorizontalGridView;->mTempBitmapHigh:Landroid/graphics/Bitmap;

    .line 40
    return-object p0
    .line 42
.end method

.method private getTempBitmapLow()Landroid/graphics/Bitmap;
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/HorizontalGridView;->mTempBitmapLow:Landroid/graphics/Bitmap;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 6
    move-result v0

    .line 9
    iget v1, p0, Landroidx/leanback/widget/HorizontalGridView;->mLowFadeShaderLength:I

    .line 10
    if-ne v0, v1, :cond_0

    .line 12
    iget-object v0, p0, Landroidx/leanback/widget/HorizontalGridView;->mTempBitmapLow:Landroid/graphics/Bitmap;

    .line 14
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 16
    move-result v0

    .line 19
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    .line 20
    move-result v1

    .line 23
    if-eq v0, v1, :cond_1

    .line 24
    :cond_0
    iget v0, p0, Landroidx/leanback/widget/HorizontalGridView;->mLowFadeShaderLength:I

    .line 26
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    .line 28
    move-result v1

    .line 31
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 32
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 34
    move-result-object v0

    .line 37
    iput-object v0, p0, Landroidx/leanback/widget/HorizontalGridView;->mTempBitmapLow:Landroid/graphics/Bitmap;

    .line 38
    :cond_1
    iget-object p0, p0, Landroidx/leanback/widget/HorizontalGridView;->mTempBitmapLow:Landroid/graphics/Bitmap;

    .line 40
    return-object p0
    .line 42
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 4
    iget-boolean v2, v0, Landroidx/leanback/widget/HorizontalGridView;->mFadingLowEdge:Z

    .line 6
    const/4 v3, 0x1

    .line 8
    const/4 v4, 0x0

    .line 9
    if-nez v2, :cond_1

    .line 10
    :cond_0
    move v2, v4

    .line 12
    goto :goto_1

    .line 13
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 14
    move-result v2

    .line 17
    move v5, v4

    .line 18
    :goto_0
    if-ge v5, v2, :cond_0

    .line 19
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 21
    move-result-object v6

    .line 24
    iget-object v7, v0, Landroidx/leanback/widget/BaseGridView;->mLayoutManager:Landroidx/leanback/widget/GridLayoutManager;

    .line 25
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 30
    move-result-object v7

    .line 33
    check-cast v7, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;

    .line 34
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    .line 39
    move-result v6

    .line 42
    iget v7, v7, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->mLeftInset:I

    .line 43
    add-int/2addr v6, v7

    .line 45
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    .line 46
    move-result v7

    .line 49
    iget v8, v0, Landroidx/leanback/widget/HorizontalGridView;->mLowFadeShaderOffset:I

    .line 50
    sub-int/2addr v7, v8

    .line 52
    if-ge v6, v7, :cond_2

    .line 53
    move v2, v3

    .line 55
    goto :goto_1

    .line 56
    :cond_2
    add-int/lit8 v5, v5, 0x1

    .line 57
    goto :goto_0

    .line 59
    :goto_1
    iget-boolean v5, v0, Landroidx/leanback/widget/HorizontalGridView;->mFadingHighEdge:Z

    .line 60
    if-nez v5, :cond_4

    .line 62
    :cond_3
    move v3, v4

    .line 64
    goto :goto_3

    .line 65
    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 66
    move-result v5

    .line 69
    sub-int/2addr v5, v3

    .line 70
    :goto_2
    if-ltz v5, :cond_3

    .line 71
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 73
    move-result-object v6

    .line 76
    iget-object v7, v0, Landroidx/leanback/widget/BaseGridView;->mLayoutManager:Landroidx/leanback/widget/GridLayoutManager;

    .line 77
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 79
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 82
    move-result-object v7

    .line 85
    check-cast v7, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;

    .line 86
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 88
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    .line 91
    move-result v6

    .line 94
    iget v7, v7, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->mRightInset:I

    .line 95
    sub-int/2addr v6, v7

    .line 97
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWidth()I

    .line 98
    move-result v7

    .line 101
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    .line 102
    move-result v8

    .line 105
    sub-int/2addr v7, v8

    .line 106
    iget v8, v0, Landroidx/leanback/widget/HorizontalGridView;->mHighFadeShaderOffset:I

    .line 107
    add-int/2addr v7, v8

    .line 109
    if-le v6, v7, :cond_5

    .line 110
    goto :goto_3

    .line 112
    :cond_5
    add-int/lit8 v5, v5, -0x1

    .line 113
    goto :goto_2

    .line 115
    :goto_3
    const/4 v5, 0x0

    .line 116
    if-nez v2, :cond_6

    .line 117
    iput-object v5, v0, Landroidx/leanback/widget/HorizontalGridView;->mTempBitmapLow:Landroid/graphics/Bitmap;

    .line 119
    :cond_6
    if-nez v3, :cond_7

    .line 121
    iput-object v5, v0, Landroidx/leanback/widget/HorizontalGridView;->mTempBitmapHigh:Landroid/graphics/Bitmap;

    .line 123
    :cond_7
    if-nez v2, :cond_8

    .line 125
    if-nez v3, :cond_8

    .line 127
    invoke-super/range {p0 .. p1}, Landroidx/recyclerview/widget/RecyclerView;->draw(Landroid/graphics/Canvas;)V

    .line 129
    return-void

    .line 132
    :cond_8
    iget-boolean v6, v0, Landroidx/leanback/widget/HorizontalGridView;->mFadingLowEdge:Z

    .line 133
    if-eqz v6, :cond_9

    .line 135
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    .line 137
    move-result v6

    .line 140
    iget v7, v0, Landroidx/leanback/widget/HorizontalGridView;->mLowFadeShaderOffset:I

    .line 141
    sub-int/2addr v6, v7

    .line 143
    iget v7, v0, Landroidx/leanback/widget/HorizontalGridView;->mLowFadeShaderLength:I

    .line 144
    sub-int/2addr v6, v7

    .line 146
    goto :goto_4

    .line 147
    :cond_9
    move v6, v4

    .line 148
    :goto_4
    iget-boolean v7, v0, Landroidx/leanback/widget/HorizontalGridView;->mFadingHighEdge:Z

    .line 149
    if-eqz v7, :cond_a

    .line 151
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWidth()I

    .line 153
    move-result v7

    .line 156
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    .line 157
    move-result v8

    .line 160
    sub-int/2addr v7, v8

    .line 161
    iget v8, v0, Landroidx/leanback/widget/HorizontalGridView;->mHighFadeShaderOffset:I

    .line 162
    add-int/2addr v7, v8

    .line 164
    iget v8, v0, Landroidx/leanback/widget/HorizontalGridView;->mHighFadeShaderLength:I

    .line 165
    add-int/2addr v7, v8

    .line 167
    goto :goto_5

    .line 168
    :cond_a
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWidth()I

    .line 169
    move-result v7

    .line 172
    :goto_5
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 173
    move-result v8

    .line 176
    iget-boolean v9, v0, Landroidx/leanback/widget/HorizontalGridView;->mFadingLowEdge:Z

    .line 177
    if-eqz v9, :cond_b

    .line 179
    iget v9, v0, Landroidx/leanback/widget/HorizontalGridView;->mLowFadeShaderLength:I

    .line 181
    goto :goto_6

    .line 183
    :cond_b
    move v9, v4

    .line 184
    :goto_6
    add-int/2addr v9, v6

    .line 185
    iget-boolean v10, v0, Landroidx/leanback/widget/HorizontalGridView;->mFadingHighEdge:Z

    .line 186
    if-eqz v10, :cond_c

    .line 188
    iget v10, v0, Landroidx/leanback/widget/HorizontalGridView;->mHighFadeShaderLength:I

    .line 190
    goto :goto_7

    .line 192
    :cond_c
    move v10, v4

    .line 193
    :goto_7
    sub-int v10, v7, v10

    .line 194
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getHeight()I

    .line 196
    move-result v11

    .line 199
    invoke-virtual {v1, v9, v4, v10, v11}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 200
    invoke-super/range {p0 .. p1}, Landroidx/recyclerview/widget/RecyclerView;->draw(Landroid/graphics/Canvas;)V

    .line 203
    invoke-virtual {v1, v8}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 206
    new-instance v8, Landroid/graphics/Canvas;

    .line 209
    invoke-direct {v8}, Landroid/graphics/Canvas;-><init>()V

    .line 211
    iget-object v9, v0, Landroidx/leanback/widget/HorizontalGridView;->mTempRect:Landroid/graphics/Rect;

    .line 214
    iput v4, v9, Landroid/graphics/Rect;->top:I

    .line 216
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getHeight()I

    .line 218
    move-result v10

    .line 221
    iput v10, v9, Landroid/graphics/Rect;->bottom:I

    .line 222
    const/4 v9, 0x0

    .line 224
    if-eqz v2, :cond_d

    .line 225
    iget v2, v0, Landroidx/leanback/widget/HorizontalGridView;->mLowFadeShaderLength:I

    .line 227
    if-lez v2, :cond_d

    .line 229
    invoke-direct/range {p0 .. p0}, Landroidx/leanback/widget/HorizontalGridView;->getTempBitmapLow()Landroid/graphics/Bitmap;

    .line 231
    move-result-object v2

    .line 234
    invoke-virtual {v2, v4}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 235
    invoke-virtual {v8, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 238
    invoke-virtual {v8}, Landroid/graphics/Canvas;->save()I

    .line 241
    move-result v10

    .line 244
    iget v11, v0, Landroidx/leanback/widget/HorizontalGridView;->mLowFadeShaderLength:I

    .line 245
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getHeight()I

    .line 247
    move-result v12

    .line 250
    invoke-virtual {v8, v4, v4, v11, v12}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 251
    neg-int v11, v6

    .line 254
    int-to-float v11, v11

    .line 255
    invoke-virtual {v8, v11, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 256
    invoke-super {v0, v8}, Landroidx/recyclerview/widget/RecyclerView;->draw(Landroid/graphics/Canvas;)V

    .line 259
    invoke-virtual {v8, v10}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 262
    iget-object v10, v0, Landroidx/leanback/widget/HorizontalGridView;->mTempPaint:Landroid/graphics/Paint;

    .line 265
    iget-object v12, v0, Landroidx/leanback/widget/HorizontalGridView;->mLowFadeShader:Landroid/graphics/LinearGradient;

    .line 267
    invoke-virtual {v10, v12}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 269
    const/4 v13, 0x0

    .line 272
    const/4 v14, 0x0

    .line 273
    iget v10, v0, Landroidx/leanback/widget/HorizontalGridView;->mLowFadeShaderLength:I

    .line 274
    int-to-float v15, v10

    .line 276
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getHeight()I

    .line 277
    move-result v10

    .line 280
    int-to-float v10, v10

    .line 281
    iget-object v12, v0, Landroidx/leanback/widget/HorizontalGridView;->mTempPaint:Landroid/graphics/Paint;

    .line 282
    move-object/from16 v17, v12

    .line 284
    move-object v12, v8

    .line 286
    move/from16 v16, v10

    .line 287
    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 289
    iget-object v10, v0, Landroidx/leanback/widget/HorizontalGridView;->mTempRect:Landroid/graphics/Rect;

    .line 292
    iput v4, v10, Landroid/graphics/Rect;->left:I

    .line 294
    iget v12, v0, Landroidx/leanback/widget/HorizontalGridView;->mLowFadeShaderLength:I

    .line 296
    iput v12, v10, Landroid/graphics/Rect;->right:I

    .line 298
    int-to-float v6, v6

    .line 300
    invoke-virtual {v1, v6, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 301
    iget-object v6, v0, Landroidx/leanback/widget/HorizontalGridView;->mTempRect:Landroid/graphics/Rect;

    .line 304
    invoke-virtual {v1, v2, v6, v6, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 306
    invoke-virtual {v1, v11, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 309
    :cond_d
    if-eqz v3, :cond_e

    .line 312
    iget v2, v0, Landroidx/leanback/widget/HorizontalGridView;->mHighFadeShaderLength:I

    .line 314
    if-lez v2, :cond_e

    .line 316
    invoke-direct/range {p0 .. p0}, Landroidx/leanback/widget/HorizontalGridView;->getTempBitmapHigh()Landroid/graphics/Bitmap;

    .line 318
    move-result-object v2

    .line 321
    invoke-virtual {v2, v4}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 322
    invoke-virtual {v8, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 325
    invoke-virtual {v8}, Landroid/graphics/Canvas;->save()I

    .line 328
    move-result v3

    .line 331
    iget v6, v0, Landroidx/leanback/widget/HorizontalGridView;->mHighFadeShaderLength:I

    .line 332
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getHeight()I

    .line 334
    move-result v10

    .line 337
    invoke-virtual {v8, v4, v4, v6, v10}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 338
    iget v6, v0, Landroidx/leanback/widget/HorizontalGridView;->mHighFadeShaderLength:I

    .line 341
    sub-int v6, v7, v6

    .line 343
    neg-int v6, v6

    .line 345
    int-to-float v6, v6

    .line 346
    invoke-virtual {v8, v6, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 347
    invoke-super {v0, v8}, Landroidx/recyclerview/widget/RecyclerView;->draw(Landroid/graphics/Canvas;)V

    .line 350
    invoke-virtual {v8, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 353
    iget-object v3, v0, Landroidx/leanback/widget/HorizontalGridView;->mTempPaint:Landroid/graphics/Paint;

    .line 356
    iget-object v6, v0, Landroidx/leanback/widget/HorizontalGridView;->mHighFadeShader:Landroid/graphics/LinearGradient;

    .line 358
    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 360
    const/4 v13, 0x0

    .line 363
    const/4 v14, 0x0

    .line 364
    iget v3, v0, Landroidx/leanback/widget/HorizontalGridView;->mHighFadeShaderLength:I

    .line 365
    int-to-float v15, v3

    .line 367
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getHeight()I

    .line 368
    move-result v3

    .line 371
    int-to-float v3, v3

    .line 372
    iget-object v6, v0, Landroidx/leanback/widget/HorizontalGridView;->mTempPaint:Landroid/graphics/Paint;

    .line 373
    move-object v12, v8

    .line 375
    move/from16 v16, v3

    .line 376
    move-object/from16 v17, v6

    .line 378
    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 380
    iget-object v3, v0, Landroidx/leanback/widget/HorizontalGridView;->mTempRect:Landroid/graphics/Rect;

    .line 383
    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 385
    iget v4, v0, Landroidx/leanback/widget/HorizontalGridView;->mHighFadeShaderLength:I

    .line 387
    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 389
    sub-int v3, v7, v4

    .line 391
    int-to-float v3, v3

    .line 393
    invoke-virtual {v1, v3, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 394
    iget-object v3, v0, Landroidx/leanback/widget/HorizontalGridView;->mTempRect:Landroid/graphics/Rect;

    .line 397
    invoke-virtual {v1, v2, v3, v3, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 399
    iget v0, v0, Landroidx/leanback/widget/HorizontalGridView;->mHighFadeShaderLength:I

    .line 402
    sub-int/2addr v7, v0

    .line 404
    neg-int v0, v7

    .line 405
    int-to-float v0, v0

    .line 406
    invoke-virtual {v1, v0, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 407
    :cond_e
    return-void
    .line 410
.end method

.method public final getFadingLeftEdge()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroidx/leanback/widget/HorizontalGridView;->mFadingLowEdge:Z

    .line 2
    return p0
    .line 4
.end method

.method public final getFadingLeftEdgeLength()I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/leanback/widget/HorizontalGridView;->mLowFadeShaderLength:I

    .line 2
    return p0
    .line 4
.end method

.method public final getFadingLeftEdgeOffset()I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/leanback/widget/HorizontalGridView;->mLowFadeShaderOffset:I

    .line 2
    return p0
    .line 4
.end method

.method public final getFadingRightEdge()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroidx/leanback/widget/HorizontalGridView;->mFadingHighEdge:Z

    .line 2
    return p0
    .line 4
.end method

.method public final getFadingRightEdgeLength()I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/leanback/widget/HorizontalGridView;->mHighFadeShaderLength:I

    .line 2
    return p0
    .line 4
.end method

.method public final getFadingRightEdgeOffset()I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/leanback/widget/HorizontalGridView;->mHighFadeShaderOffset:I

    .line 2
    return p0
    .line 4
.end method

.method public final setFadingLeftEdge(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/leanback/widget/HorizontalGridView;->mFadingLowEdge:Z

    .line 2
    if-eq v0, p1, :cond_1

    .line 4
    iput-boolean p1, p0, Landroidx/leanback/widget/HorizontalGridView;->mFadingLowEdge:Z

    .line 6
    if-nez p1, :cond_0

    .line 8
    const/4 p1, 0x0

    .line 10
    iput-object p1, p0, Landroidx/leanback/widget/HorizontalGridView;->mTempBitmapLow:Landroid/graphics/Bitmap;

    .line 11
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    .line 13
    invoke-virtual {p0}, Landroidx/leanback/widget/HorizontalGridView;->updateLayerType()V

    .line 16
    :cond_1
    return-void
    .line 19
.end method

.method public final setFadingLeftEdgeLength(I)V
    .locals 9

    .line 1
    iget v0, p0, Landroidx/leanback/widget/HorizontalGridView;->mLowFadeShaderLength:I

    .line 2
    if-eq v0, p1, :cond_1

    .line 4
    iput p1, p0, Landroidx/leanback/widget/HorizontalGridView;->mLowFadeShaderLength:I

    .line 6
    if-eqz p1, :cond_0

    .line 8
    new-instance p1, Landroid/graphics/LinearGradient;

    .line 10
    const/4 v2, 0x0

    .line 12
    const/4 v3, 0x0

    .line 13
    iget v0, p0, Landroidx/leanback/widget/HorizontalGridView;->mLowFadeShaderLength:I

    .line 14
    int-to-float v4, v0

    .line 16
    const/4 v5, 0x0

    .line 17
    const/4 v6, 0x0

    .line 18
    const/high16 v7, -0x1000000

    .line 19
    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 21
    move-object v1, p1

    .line 23
    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 24
    iput-object p1, p0, Landroidx/leanback/widget/HorizontalGridView;->mLowFadeShader:Landroid/graphics/LinearGradient;

    .line 27
    goto :goto_0

    .line 29
    :cond_0
    const/4 p1, 0x0

    .line 30
    iput-object p1, p0, Landroidx/leanback/widget/HorizontalGridView;->mLowFadeShader:Landroid/graphics/LinearGradient;

    .line 31
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    .line 33
    :cond_1
    return-void
    .line 36
.end method

.method public final setFadingLeftEdgeOffset(I)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/leanback/widget/HorizontalGridView;->mLowFadeShaderOffset:I

    .line 2
    if-eq v0, p1, :cond_0

    .line 4
    iput p1, p0, Landroidx/leanback/widget/HorizontalGridView;->mLowFadeShaderOffset:I

    .line 6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    .line 8
    :cond_0
    return-void
    .line 11
.end method

.method public final setFadingRightEdge(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/leanback/widget/HorizontalGridView;->mFadingHighEdge:Z

    .line 2
    if-eq v0, p1, :cond_1

    .line 4
    iput-boolean p1, p0, Landroidx/leanback/widget/HorizontalGridView;->mFadingHighEdge:Z

    .line 6
    if-nez p1, :cond_0

    .line 8
    const/4 p1, 0x0

    .line 10
    iput-object p1, p0, Landroidx/leanback/widget/HorizontalGridView;->mTempBitmapHigh:Landroid/graphics/Bitmap;

    .line 11
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    .line 13
    invoke-virtual {p0}, Landroidx/leanback/widget/HorizontalGridView;->updateLayerType()V

    .line 16
    :cond_1
    return-void
    .line 19
.end method

.method public final setFadingRightEdgeLength(I)V
    .locals 9

    .line 1
    iget v0, p0, Landroidx/leanback/widget/HorizontalGridView;->mHighFadeShaderLength:I

    .line 2
    if-eq v0, p1, :cond_1

    .line 4
    iput p1, p0, Landroidx/leanback/widget/HorizontalGridView;->mHighFadeShaderLength:I

    .line 6
    if-eqz p1, :cond_0

    .line 8
    new-instance p1, Landroid/graphics/LinearGradient;

    .line 10
    const/4 v2, 0x0

    .line 12
    const/4 v3, 0x0

    .line 13
    iget v0, p0, Landroidx/leanback/widget/HorizontalGridView;->mHighFadeShaderLength:I

    .line 14
    int-to-float v4, v0

    .line 16
    const/4 v5, 0x0

    .line 17
    const/high16 v6, -0x1000000

    .line 18
    const/4 v7, 0x0

    .line 20
    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 21
    move-object v1, p1

    .line 23
    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 24
    iput-object p1, p0, Landroidx/leanback/widget/HorizontalGridView;->mHighFadeShader:Landroid/graphics/LinearGradient;

    .line 27
    goto :goto_0

    .line 29
    :cond_0
    const/4 p1, 0x0

    .line 30
    iput-object p1, p0, Landroidx/leanback/widget/HorizontalGridView;->mHighFadeShader:Landroid/graphics/LinearGradient;

    .line 31
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    .line 33
    :cond_1
    return-void
    .line 36
.end method

.method public final setFadingRightEdgeOffset(I)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/leanback/widget/HorizontalGridView;->mHighFadeShaderOffset:I

    .line 2
    if-eq v0, p1, :cond_0

    .line 4
    iput p1, p0, Landroidx/leanback/widget/HorizontalGridView;->mHighFadeShaderOffset:I

    .line 6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    .line 8
    :cond_0
    return-void
    .line 11
.end method

.method public setNumRows(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/BaseGridView;->mLayoutManager:Landroidx/leanback/widget/GridLayoutManager;

    .line 2
    if-ltz p1, :cond_0

    .line 4
    iput p1, v0, Landroidx/leanback/widget/GridLayoutManager;->mNumRowsRequested:I

    .line 6
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    .line 8
    return-void

    .line 11
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 15
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 17
    throw p0
    .line 20
.end method

.method public setRowHeight(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/BaseGridView;->mLayoutManager:Landroidx/leanback/widget/GridLayoutManager;

    .line 2
    invoke-virtual {v0, p1}, Landroidx/leanback/widget/GridLayoutManager;->setRowHeight(I)V

    .line 4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    .line 7
    return-void
    .line 10
.end method

.method public final updateLayerType()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Landroidx/leanback/widget/HorizontalGridView;->mFadingLowEdge:Z

    .line 2
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    if-nez v0, :cond_1

    .line 6
    iget-boolean v0, p0, Landroidx/leanback/widget/HorizontalGridView;->mFadingHighEdge:Z

    .line 8
    if-eqz v0, :cond_0

    .line 10
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p0, v1, v2}, Landroid/view/ViewGroup;->setLayerType(ILandroid/graphics/Paint;)V

    .line 13
    const/4 v0, 0x1

    .line 16
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setWillNotDraw(Z)V

    .line 17
    goto :goto_1

    .line 20
    :cond_1
    :goto_0
    const/4 v0, 0x2

    .line 21
    invoke-virtual {p0, v0, v2}, Landroid/view/ViewGroup;->setLayerType(ILandroid/graphics/Paint;)V

    .line 22
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setWillNotDraw(Z)V

    .line 25
    :goto_1
    return-void
    .line 28
.end method
