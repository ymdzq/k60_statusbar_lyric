.class public abstract Landroidx/leanback/widget/ItemAlignmentFacetHelper;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final sRect:Landroid/graphics/Rect;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    .line 2
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 4
    sput-object v0, Landroidx/leanback/widget/ItemAlignmentFacetHelper;->sRect:Landroid/graphics/Rect;

    .line 7
    return-void
    .line 9
.end method

.method public static getAlignmentPosition(Landroid/view/View;Landroidx/leanback/widget/ItemAlignment$Axis;I)I
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    move-result-object v0

    .line 5
    check-cast v0, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;

    .line 6
    iget v1, p1, Landroidx/leanback/widget/ItemAlignment$Axis;->mViewId:I

    .line 8
    if-eqz v1, :cond_0

    .line 10
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 12
    move-result-object v1

    .line 15
    if-nez v1, :cond_1

    .line 16
    :cond_0
    move-object v1, p0

    .line 18
    :cond_1
    iget v2, p1, Landroidx/leanback/widget/ItemAlignment$Axis;->mOffset:I

    .line 19
    sget-object v3, Landroidx/leanback/widget/ItemAlignmentFacetHelper;->sRect:Landroid/graphics/Rect;

    .line 21
    const/4 v4, 0x0

    .line 23
    const/high16 v5, -0x40800000    # -1.0f

    .line 24
    const/high16 v6, 0x42c80000    # 100.0f

    .line 26
    if-nez p2, :cond_c

    .line 28
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    .line 30
    move-result p2

    .line 33
    const/4 v7, 0x1

    .line 34
    if-ne p2, v7, :cond_7

    .line 35
    if-ne v1, p0, :cond_2

    .line 37
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 42
    move-result p2

    .line 45
    iget v7, v0, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->mLeftInset:I

    .line 46
    sub-int/2addr p2, v7

    .line 48
    iget v7, v0, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->mRightInset:I

    .line 49
    sub-int/2addr p2, v7

    .line 51
    goto :goto_0

    .line 52
    :cond_2
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 53
    move-result p2

    .line 56
    :goto_0
    sub-int/2addr p2, v2

    .line 57
    iget-boolean v2, p1, Landroidx/leanback/widget/ItemAlignment$Axis;->mOffsetWithPadding:Z

    .line 58
    if-eqz v2, :cond_4

    .line 60
    iget v2, p1, Landroidx/leanback/widget/ItemAlignment$Axis;->mOffsetPercent:F

    .line 62
    cmpl-float v4, v2, v4

    .line 64
    if-nez v4, :cond_3

    .line 66
    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    .line 68
    move-result v2

    .line 71
    sub-int/2addr p2, v2

    .line 72
    goto :goto_1

    .line 73
    :cond_3
    cmpl-float v2, v2, v6

    .line 74
    if-nez v2, :cond_4

    .line 76
    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    .line 78
    move-result v2

    .line 81
    add-int/2addr p2, v2

    .line 82
    :cond_4
    :goto_1
    iget v2, p1, Landroidx/leanback/widget/ItemAlignment$Axis;->mOffsetPercent:F

    .line 83
    cmpl-float v2, v2, v5

    .line 85
    if-eqz v2, :cond_6

    .line 87
    if-ne v1, p0, :cond_5

    .line 89
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 91
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 94
    move-result v2

    .line 97
    iget v4, v0, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->mLeftInset:I

    .line 98
    sub-int/2addr v2, v4

    .line 100
    iget v4, v0, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->mRightInset:I

    .line 101
    sub-int/2addr v2, v4

    .line 103
    goto :goto_2

    .line 104
    :cond_5
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 105
    move-result v2

    .line 108
    :goto_2
    int-to-float v2, v2

    .line 109
    iget p1, p1, Landroidx/leanback/widget/ItemAlignment$Axis;->mOffsetPercent:F

    .line 110
    mul-float/2addr v2, p1

    .line 112
    div-float/2addr v2, v6

    .line 113
    float-to-int p1, v2

    .line 114
    sub-int/2addr p2, p1

    .line 115
    :cond_6
    if-eq p0, v1, :cond_11

    .line 116
    iput p2, v3, Landroid/graphics/Rect;->right:I

    .line 118
    check-cast p0, Landroid/view/ViewGroup;

    .line 120
    invoke-virtual {p0, v1, v3}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 122
    iget p0, v3, Landroid/graphics/Rect;->right:I

    .line 125
    iget p1, v0, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->mRightInset:I

    .line 127
    add-int p2, p0, p1

    .line 129
    goto/16 :goto_8

    .line 131
    :cond_7
    iget-boolean p2, p1, Landroidx/leanback/widget/ItemAlignment$Axis;->mOffsetWithPadding:Z

    .line 133
    if-eqz p2, :cond_9

    .line 135
    iget p2, p1, Landroidx/leanback/widget/ItemAlignment$Axis;->mOffsetPercent:F

    .line 137
    cmpl-float v4, p2, v4

    .line 139
    if-nez v4, :cond_8

    .line 141
    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    .line 143
    move-result p2

    .line 146
    add-int/2addr v2, p2

    .line 147
    goto :goto_3

    .line 148
    :cond_8
    cmpl-float p2, p2, v6

    .line 149
    if-nez p2, :cond_9

    .line 151
    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    .line 153
    move-result p2

    .line 156
    sub-int/2addr v2, p2

    .line 157
    :cond_9
    :goto_3
    iget p2, p1, Landroidx/leanback/widget/ItemAlignment$Axis;->mOffsetPercent:F

    .line 158
    cmpl-float p2, p2, v5

    .line 160
    if-eqz p2, :cond_b

    .line 162
    if-ne v1, p0, :cond_a

    .line 164
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 166
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 169
    move-result p2

    .line 172
    iget v4, v0, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->mLeftInset:I

    .line 173
    sub-int/2addr p2, v4

    .line 175
    iget v4, v0, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->mRightInset:I

    .line 176
    sub-int/2addr p2, v4

    .line 178
    goto :goto_4

    .line 179
    :cond_a
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 180
    move-result p2

    .line 183
    :goto_4
    int-to-float p2, p2

    .line 184
    iget p1, p1, Landroidx/leanback/widget/ItemAlignment$Axis;->mOffsetPercent:F

    .line 185
    mul-float/2addr p2, p1

    .line 187
    div-float/2addr p2, v6

    .line 188
    float-to-int p1, p2

    .line 189
    add-int/2addr v2, p1

    .line 190
    :cond_b
    move p2, v2

    .line 191
    if-eq p0, v1, :cond_11

    .line 192
    iput p2, v3, Landroid/graphics/Rect;->left:I

    .line 194
    check-cast p0, Landroid/view/ViewGroup;

    .line 196
    invoke-virtual {p0, v1, v3}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 198
    iget p0, v3, Landroid/graphics/Rect;->left:I

    .line 201
    iget p1, v0, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->mLeftInset:I

    .line 203
    goto :goto_7

    .line 205
    :cond_c
    iget-boolean p2, p1, Landroidx/leanback/widget/ItemAlignment$Axis;->mOffsetWithPadding:Z

    .line 206
    if-eqz p2, :cond_e

    .line 208
    iget p2, p1, Landroidx/leanback/widget/ItemAlignment$Axis;->mOffsetPercent:F

    .line 210
    cmpl-float v4, p2, v4

    .line 212
    if-nez v4, :cond_d

    .line 214
    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    .line 216
    move-result p2

    .line 219
    add-int/2addr v2, p2

    .line 220
    goto :goto_5

    .line 221
    :cond_d
    cmpl-float p2, p2, v6

    .line 222
    if-nez p2, :cond_e

    .line 224
    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    .line 226
    move-result p2

    .line 229
    sub-int/2addr v2, p2

    .line 230
    :cond_e
    :goto_5
    iget p2, p1, Landroidx/leanback/widget/ItemAlignment$Axis;->mOffsetPercent:F

    .line 231
    cmpl-float p2, p2, v5

    .line 233
    if-eqz p2, :cond_10

    .line 235
    if-ne v1, p0, :cond_f

    .line 237
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 239
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 242
    move-result p2

    .line 245
    iget v4, v0, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->mTopInset:I

    .line 246
    sub-int/2addr p2, v4

    .line 248
    iget v4, v0, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->mBottomInset:I

    .line 249
    sub-int/2addr p2, v4

    .line 251
    goto :goto_6

    .line 252
    :cond_f
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 253
    move-result p2

    .line 256
    :goto_6
    int-to-float p2, p2

    .line 257
    iget p1, p1, Landroidx/leanback/widget/ItemAlignment$Axis;->mOffsetPercent:F

    .line 258
    mul-float/2addr p2, p1

    .line 260
    div-float/2addr p2, v6

    .line 261
    float-to-int p1, p2

    .line 262
    add-int/2addr v2, p1

    .line 263
    :cond_10
    move p2, v2

    .line 264
    if-eq p0, v1, :cond_11

    .line 265
    iput p2, v3, Landroid/graphics/Rect;->top:I

    .line 267
    check-cast p0, Landroid/view/ViewGroup;

    .line 269
    invoke-virtual {p0, v1, v3}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 271
    iget p0, v3, Landroid/graphics/Rect;->top:I

    .line 274
    iget p1, v0, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->mTopInset:I

    .line 276
    :goto_7
    sub-int p2, p0, p1

    .line 278
    :cond_11
    :goto_8
    return p2
    .line 280
.end method
