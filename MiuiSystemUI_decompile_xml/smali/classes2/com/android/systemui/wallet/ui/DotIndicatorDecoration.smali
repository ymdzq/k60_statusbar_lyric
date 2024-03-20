.class public final Lcom/android/systemui/wallet/ui/DotIndicatorDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public mCardCarousel:Lcom/android/systemui/wallet/ui/WalletCardCarousel;

.field public final mDotMargin:I

.field public final mPaint:Landroid/graphics/Paint;

.field public final mSelectedColor:I

.field public final mSelectedRadius:I

.field public final mUnselectedColor:I

.field public final mUnselectedRadius:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/Paint;

    .line 5
    const/4 v1, 0x1

    .line 7
    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 8
    iput-object v0, p0, Lcom/android/systemui/wallet/ui/DotIndicatorDecoration;->mPaint:Landroid/graphics/Paint;

    .line 11
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 13
    move-result-object v0

    .line 16
    const v1, 0x7f070191    # @dimen/card_carousel_dot_unselected_radius '2.0dp'

    .line 17
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 20
    move-result v0

    .line 23
    iput v0, p0, Lcom/android/systemui/wallet/ui/DotIndicatorDecoration;->mUnselectedRadius:I

    .line 24
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 26
    move-result-object v0

    .line 29
    const v1, 0x7f070190    # @dimen/card_carousel_dot_selected_radius '3.0dp'

    .line 30
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 33
    move-result v0

    .line 36
    iput v0, p0, Lcom/android/systemui/wallet/ui/DotIndicatorDecoration;->mSelectedRadius:I

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 39
    move-result-object v0

    .line 42
    const v1, 0x7f07018e    # @dimen/card_carousel_dot_margin '4.0dp'

    .line 43
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 46
    move-result v0

    .line 49
    iput v0, p0, Lcom/android/systemui/wallet/ui/DotIndicatorDecoration;->mDotMargin:I

    .line 50
    const v0, 0x7f060322    # @color/material_dynamic_neutral70 '@color/m3_ref_palette_dynamic_neutral70'

    .line 52
    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    .line 55
    move-result v0

    .line 58
    iput v0, p0, Lcom/android/systemui/wallet/ui/DotIndicatorDecoration;->mUnselectedColor:I

    .line 59
    const v0, 0x7f06031c    # @color/material_dynamic_neutral100 '@color/m3_ref_palette_dynamic_neutral100'

    .line 61
    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    .line 64
    move-result p1

    .line 67
    iput p1, p0, Lcom/android/systemui/wallet/ui/DotIndicatorDecoration;->mSelectedColor:I

    .line 68
    return-void
    .line 70
.end method


# virtual methods
.method public final getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 2
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 5
    move-result-object p0

    .line 8
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    .line 9
    move-result p0

    .line 12
    const/4 p3, 0x1

    .line 13
    if-le p0, p3, :cond_0

    .line 14
    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 16
    move-result-object p0

    .line 19
    const p2, 0x7f07018f    # @dimen/card_carousel_dot_offset '24.0dp'

    .line 20
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 23
    move-result p0

    .line 26
    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    .line 27
    :cond_0
    return-void
    .line 29
.end method

.method public final onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 4
    move-object/from16 v2, p2

    .line 6
    check-cast v2, Lcom/android/systemui/wallet/ui/WalletCardCarousel;

    .line 8
    iput-object v2, v0, Lcom/android/systemui/wallet/ui/DotIndicatorDecoration;->mCardCarousel:Lcom/android/systemui/wallet/ui/WalletCardCarousel;

    .line 10
    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 12
    move-result-object v2

    .line 15
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    .line 16
    move-result v2

    .line 19
    const/4 v3, 0x1

    .line 20
    if-gt v2, v3, :cond_0

    .line 21
    return-void

    .line 23
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 24
    invoke-virtual/range {p2 .. p2}, Landroid/view/ViewGroup;->getWidth()I

    .line 27
    move-result v4

    .line 30
    int-to-float v4, v4

    .line 31
    const/high16 v5, 0x40c00000    # 6.0f

    .line 32
    div-float/2addr v4, v5

    .line 34
    iget-object v5, v0, Lcom/android/systemui/wallet/ui/DotIndicatorDecoration;->mCardCarousel:Lcom/android/systemui/wallet/ui/WalletCardCarousel;

    .line 35
    iget v5, v5, Lcom/android/systemui/wallet/ui/WalletCardCarousel;->mEdgeToCenterDistance:F

    .line 37
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    .line 39
    move-result v5

    .line 42
    invoke-static {v5, v4}, Ljava/lang/Math;->min(FF)F

    .line 43
    move-result v5

    .line 46
    div-float/2addr v5, v4

    .line 47
    const/high16 v4, 0x3f800000    # 1.0f

    .line 48
    sub-float/2addr v4, v5

    .line 50
    add-int/lit8 v5, v2, -0x1

    .line 51
    iget v6, v0, Lcom/android/systemui/wallet/ui/DotIndicatorDecoration;->mDotMargin:I

    .line 53
    mul-int/2addr v5, v6

    .line 55
    iget v7, v0, Lcom/android/systemui/wallet/ui/DotIndicatorDecoration;->mUnselectedRadius:I

    .line 56
    mul-int/lit8 v8, v7, 0x2

    .line 58
    add-int/lit8 v9, v2, -0x2

    .line 60
    mul-int/2addr v9, v8

    .line 62
    add-int/2addr v9, v5

    .line 63
    iget v5, v0, Lcom/android/systemui/wallet/ui/DotIndicatorDecoration;->mSelectedRadius:I

    .line 64
    mul-int/lit8 v10, v5, 0x2

    .line 66
    add-int/2addr v10, v9

    .line 68
    int-to-float v9, v10

    .line 69
    invoke-virtual/range {p2 .. p2}, Landroid/view/ViewGroup;->getWidth()I

    .line 70
    move-result v10

    .line 73
    int-to-float v10, v10

    .line 74
    sub-float/2addr v10, v9

    .line 75
    const/high16 v9, 0x40000000    # 2.0f

    .line 76
    div-float/2addr v10, v9

    .line 78
    invoke-virtual/range {p2 .. p2}, Landroid/view/ViewGroup;->getHeight()I

    .line 79
    move-result v11

    .line 82
    sub-int/2addr v11, v6

    .line 83
    int-to-float v11, v11

    .line 84
    invoke-virtual {v1, v10, v11}, Landroid/graphics/Canvas;->translate(FF)V

    .line 85
    const/4 v11, 0x0

    .line 88
    :goto_0
    if-ge v11, v2, :cond_e

    .line 89
    iget-object v12, v0, Lcom/android/systemui/wallet/ui/DotIndicatorDecoration;->mCardCarousel:Lcom/android/systemui/wallet/ui/WalletCardCarousel;

    .line 91
    if-nez v12, :cond_1

    .line 93
    goto :goto_1

    .line 95
    :cond_1
    invoke-virtual {v12}, Landroid/view/ViewGroup;->getLayoutDirection()I

    .line 96
    move-result v12

    .line 99
    if-nez v12, :cond_2

    .line 100
    :goto_1
    move v12, v3

    .line 102
    goto :goto_2

    .line 103
    :cond_2
    const/4 v12, 0x0

    .line 104
    :goto_2
    if-eqz v12, :cond_3

    .line 105
    move v12, v11

    .line 107
    goto :goto_3

    .line 108
    :cond_3
    sub-int v12, v2, v11

    .line 109
    sub-int/2addr v12, v3

    .line 111
    :goto_3
    iget-object v13, v0, Lcom/android/systemui/wallet/ui/DotIndicatorDecoration;->mCardCarousel:Lcom/android/systemui/wallet/ui/WalletCardCarousel;

    .line 112
    iget v14, v13, Lcom/android/systemui/wallet/ui/WalletCardCarousel;->mCenteredAdapterPosition:I

    .line 114
    if-ne v14, v12, :cond_4

    .line 116
    move v14, v3

    .line 118
    goto :goto_4

    .line 119
    :cond_4
    const/4 v14, 0x0

    .line 120
    :goto_4
    iget-object v15, v0, Lcom/android/systemui/wallet/ui/DotIndicatorDecoration;->mPaint:Landroid/graphics/Paint;

    .line 121
    iget v10, v0, Lcom/android/systemui/wallet/ui/DotIndicatorDecoration;->mSelectedColor:I

    .line 123
    iget v3, v0, Lcom/android/systemui/wallet/ui/DotIndicatorDecoration;->mUnselectedColor:I

    .line 125
    move/from16 v16, v2

    .line 127
    const/4 v2, 0x0

    .line 129
    if-eqz v14, :cond_5

    .line 130
    div-float v12, v4, v9

    .line 132
    invoke-static {v12, v10, v3}, Landroidx/core/graphics/ColorUtils;->blendARGB(FII)I

    .line 134
    move-result v3

    .line 137
    const/16 v10, 0xff

    .line 138
    invoke-static {v3, v10}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    .line 140
    move-result v3

    .line 143
    invoke-virtual {v15, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 144
    invoke-static {v5, v7, v12}, Landroid/util/MathUtils;->lerp(IIF)F

    .line 147
    move-result v3

    .line 150
    invoke-virtual {v1, v3, v2, v3, v15}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 151
    mul-float/2addr v3, v9

    .line 154
    invoke-virtual {v1, v3, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 155
    goto/16 :goto_9

    .line 158
    :cond_5
    if-nez v13, :cond_6

    .line 160
    goto :goto_5

    .line 162
    :cond_6
    invoke-virtual {v13}, Landroid/view/ViewGroup;->getLayoutDirection()I

    .line 163
    move-result v13

    .line 166
    if-nez v13, :cond_7

    .line 167
    :goto_5
    const/4 v13, 0x1

    .line 169
    goto :goto_6

    .line 170
    :cond_7
    const/4 v13, 0x0

    .line 171
    :goto_6
    if-eqz v13, :cond_9

    .line 172
    iget-object v13, v0, Lcom/android/systemui/wallet/ui/DotIndicatorDecoration;->mCardCarousel:Lcom/android/systemui/wallet/ui/WalletCardCarousel;

    .line 174
    iget v14, v13, Lcom/android/systemui/wallet/ui/WalletCardCarousel;->mCenteredAdapterPosition:I

    .line 176
    add-int/lit8 v9, v14, 0x1

    .line 178
    if-ne v9, v12, :cond_8

    .line 180
    iget v9, v13, Lcom/android/systemui/wallet/ui/WalletCardCarousel;->mEdgeToCenterDistance:F

    .line 182
    cmpl-float v9, v9, v2

    .line 184
    if-gez v9, :cond_b

    .line 186
    :cond_8
    add-int/lit8 v14, v14, -0x1

    .line 188
    if-ne v14, v12, :cond_c

    .line 190
    iget v9, v13, Lcom/android/systemui/wallet/ui/WalletCardCarousel;->mEdgeToCenterDistance:F

    .line 192
    cmpg-float v9, v9, v2

    .line 194
    if-gez v9, :cond_c

    .line 196
    goto :goto_7

    .line 198
    :cond_9
    iget-object v9, v0, Lcom/android/systemui/wallet/ui/DotIndicatorDecoration;->mCardCarousel:Lcom/android/systemui/wallet/ui/WalletCardCarousel;

    .line 199
    iget v13, v9, Lcom/android/systemui/wallet/ui/WalletCardCarousel;->mCenteredAdapterPosition:I

    .line 201
    add-int/lit8 v14, v13, -0x1

    .line 203
    if-ne v14, v12, :cond_a

    .line 205
    iget v14, v9, Lcom/android/systemui/wallet/ui/WalletCardCarousel;->mEdgeToCenterDistance:F

    .line 207
    cmpl-float v14, v14, v2

    .line 209
    if-gez v14, :cond_b

    .line 211
    :cond_a
    add-int/lit8 v13, v13, 0x1

    .line 213
    if-ne v13, v12, :cond_c

    .line 215
    iget v9, v9, Lcom/android/systemui/wallet/ui/WalletCardCarousel;->mEdgeToCenterDistance:F

    .line 217
    cmpg-float v9, v9, v2

    .line 219
    if-gez v9, :cond_c

    .line 221
    :cond_b
    :goto_7
    const/4 v9, 0x1

    .line 223
    goto :goto_8

    .line 224
    :cond_c
    const/4 v9, 0x0

    .line 225
    :goto_8
    if-eqz v9, :cond_d

    .line 226
    const/high16 v9, 0x40000000    # 2.0f

    .line 228
    div-float v12, v4, v9

    .line 230
    invoke-static {v12, v3, v10}, Landroidx/core/graphics/ColorUtils;->blendARGB(FII)I

    .line 232
    move-result v3

    .line 235
    const/16 v13, 0xff

    .line 236
    invoke-static {v3, v13}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    .line 238
    move-result v3

    .line 241
    invoke-virtual {v15, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 242
    invoke-static {v7, v10, v12}, Landroid/util/MathUtils;->lerp(IIF)F

    .line 245
    move-result v3

    .line 248
    invoke-virtual {v1, v3, v2, v3, v15}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 249
    mul-float/2addr v3, v9

    .line 252
    invoke-virtual {v1, v3, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 253
    goto :goto_9

    .line 256
    :cond_d
    const/high16 v9, 0x40000000    # 2.0f

    .line 257
    invoke-virtual {v15, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 259
    int-to-float v3, v7

    .line 262
    invoke-virtual {v1, v3, v2, v3, v15}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 263
    int-to-float v3, v8

    .line 266
    invoke-virtual {v1, v3, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 267
    :goto_9
    int-to-float v3, v6

    .line 270
    invoke-virtual {v1, v3, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 271
    add-int/lit8 v11, v11, 0x1

    .line 274
    move/from16 v2, v16

    .line 276
    const/4 v3, 0x1

    .line 278
    goto/16 :goto_0

    .line 279
    :cond_e
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 281
    const/4 v1, 0x0

    .line 284
    iput-object v1, v0, Lcom/android/systemui/wallet/ui/DotIndicatorDecoration;->mCardCarousel:Lcom/android/systemui/wallet/ui/WalletCardCarousel;

    .line 285
    return-void
    .line 287
.end method
