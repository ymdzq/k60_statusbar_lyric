.class public Landroidx/appcompat/widget/AlertDialogLayout;
.super Landroidx/appcompat/widget/LinearLayoutCompat;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static resolveMinimumHeight(Landroid/view/View;)I
    .locals 3

    .line 1
    sget-object v0, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 2
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api16Impl;->getMinimumHeight(Landroid/view/View;)I

    .line 4
    move-result v0

    .line 7
    if-lez v0, :cond_0

    .line 8
    return v0

    .line 10
    :cond_0
    instance-of v0, p0, Landroid/view/ViewGroup;

    .line 11
    const/4 v1, 0x0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    check-cast p0, Landroid/view/ViewGroup;

    .line 16
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 18
    move-result v0

    .line 21
    const/4 v2, 0x1

    .line 22
    if-ne v0, v2, :cond_1

    .line 23
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 25
    move-result-object p0

    .line 28
    invoke-static {p0}, Landroidx/appcompat/widget/AlertDialogLayout;->resolveMinimumHeight(Landroid/view/View;)I

    .line 29
    move-result p0

    .line 32
    return p0

    .line 33
    :cond_1
    return v1
    .line 34
.end method


# virtual methods
.method public final onLayout(ZIIII)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    .line 2
    move-result p1

    .line 5
    sub-int/2addr p4, p2

    .line 6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    .line 7
    move-result p2

    .line 10
    sub-int p2, p4, p2

    .line 11
    sub-int/2addr p4, p1

    .line 13
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    .line 14
    move-result v0

    .line 17
    sub-int/2addr p4, v0

    .line 18
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    .line 19
    move-result v0

    .line 22
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 23
    move-result v1

    .line 26
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getGravity()I

    .line 27
    move-result v2

    .line 30
    and-int/lit8 v3, v2, 0x70

    .line 31
    const v4, 0x800007

    .line 33
    and-int/2addr v2, v4

    .line 36
    const/16 v4, 0x10

    .line 37
    if-eq v3, v4, :cond_1

    .line 39
    const/16 v4, 0x50

    .line 41
    if-eq v3, v4, :cond_0

    .line 43
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    .line 45
    move-result p3

    .line 48
    goto :goto_0

    .line 49
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    .line 50
    move-result v3

    .line 53
    add-int/2addr v3, p5

    .line 54
    sub-int/2addr v3, p3

    .line 55
    sub-int p3, v3, v0

    .line 56
    goto :goto_0

    .line 58
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    .line 59
    move-result v3

    .line 62
    sub-int/2addr p5, p3

    .line 63
    sub-int/2addr p5, v0

    .line 64
    div-int/lit8 p5, p5, 0x2

    .line 65
    add-int p3, p5, v3

    .line 67
    :goto_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getDividerDrawable()Landroid/graphics/drawable/Drawable;

    .line 69
    move-result-object p5

    .line 72
    const/4 v0, 0x0

    .line 73
    if-nez p5, :cond_2

    .line 74
    move p5, v0

    .line 76
    goto :goto_1

    .line 77
    :cond_2
    invoke-virtual {p5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 78
    move-result p5

    .line 81
    :goto_1
    if-ge v0, v1, :cond_8

    .line 82
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 84
    move-result-object v3

    .line 87
    if-eqz v3, :cond_7

    .line 88
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    .line 90
    move-result v4

    .line 93
    const/16 v5, 0x8

    .line 94
    if-eq v4, v5, :cond_7

    .line 96
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    .line 98
    move-result v4

    .line 101
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    .line 102
    move-result v5

    .line 105
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 106
    move-result-object v6

    .line 109
    check-cast v6, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 110
    iget v7, v6, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 112
    if-gez v7, :cond_3

    .line 114
    move v7, v2

    .line 116
    :cond_3
    sget-object v8, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 117
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api17Impl;->getLayoutDirection(Landroid/view/View;)I

    .line 119
    move-result v8

    .line 122
    invoke-static {v7, v8}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    .line 123
    move-result v7

    .line 126
    and-int/lit8 v7, v7, 0x7

    .line 127
    const/4 v8, 0x1

    .line 129
    if-eq v7, v8, :cond_5

    .line 130
    const/4 v8, 0x5

    .line 132
    if-eq v7, v8, :cond_4

    .line 133
    iget v7, v6, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 135
    add-int/2addr v7, p1

    .line 137
    goto :goto_3

    .line 138
    :cond_4
    sub-int v7, p2, v4

    .line 139
    iget v8, v6, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 141
    goto :goto_2

    .line 143
    :cond_5
    sub-int v7, p4, v4

    .line 144
    div-int/lit8 v7, v7, 0x2

    .line 146
    add-int/2addr v7, p1

    .line 148
    iget v8, v6, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 149
    add-int/2addr v7, v8

    .line 151
    iget v8, v6, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 152
    :goto_2
    sub-int/2addr v7, v8

    .line 154
    :goto_3
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    .line 155
    move-result v8

    .line 158
    if-eqz v8, :cond_6

    .line 159
    add-int/2addr p3, p5

    .line 161
    :cond_6
    iget v8, v6, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 162
    add-int/2addr p3, v8

    .line 164
    add-int/2addr v4, v7

    .line 165
    add-int v8, v5, p3

    .line 166
    invoke-virtual {v3, v7, p3, v4, v8}, Landroid/view/View;->layout(IIII)V

    .line 168
    iget v3, v6, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 171
    add-int/2addr v5, v3

    .line 173
    add-int/2addr v5, p3

    .line 174
    move p3, v5

    .line 175
    :cond_7
    add-int/lit8 v0, v0, 0x1

    .line 176
    goto :goto_1

    .line 178
    :cond_8
    return-void
    .line 179
.end method

.method public final onMeasure(II)V
    .locals 16

    .line 1
    move-object/from16 v6, p0

    .line 2
    move/from16 v7, p1

    .line 4
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 6
    move-result v8

    .line 9
    const/4 v0, 0x0

    .line 10
    const/4 v1, 0x0

    .line 11
    move-object v2, v0

    .line 12
    move-object v3, v2

    .line 13
    move v4, v1

    .line 14
    :goto_0
    const/16 v9, 0x8

    .line 15
    if-ge v4, v8, :cond_6

    .line 17
    invoke-virtual {v6, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 19
    move-result-object v5

    .line 22
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    .line 23
    move-result v10

    .line 26
    if-ne v10, v9, :cond_0

    .line 27
    goto :goto_1

    .line 29
    :cond_0
    invoke-virtual {v5}, Landroid/view/View;->getId()I

    .line 30
    move-result v9

    .line 33
    const v10, 0x7f0a09b2    # @id/topPanel

    .line 34
    if-ne v9, v10, :cond_1

    .line 37
    move-object v0, v5

    .line 39
    goto :goto_1

    .line 40
    :cond_1
    const v10, 0x7f0a01a6    # @id/buttonPanel

    .line 41
    if-ne v9, v10, :cond_2

    .line 44
    move-object v2, v5

    .line 46
    goto :goto_1

    .line 47
    :cond_2
    const v10, 0x7f0a0224    # @id/contentPanel

    .line 48
    if-eq v9, v10, :cond_3

    .line 51
    const v10, 0x7f0a0277    # @id/customPanel

    .line 53
    if-ne v9, v10, :cond_4

    .line 56
    :cond_3
    if-eqz v3, :cond_5

    .line 58
    :cond_4
    move/from16 v11, p2

    .line 60
    goto/16 :goto_8

    .line 62
    :cond_5
    move-object v3, v5

    .line 64
    :goto_1
    add-int/lit8 v4, v4, 0x1

    .line 65
    goto :goto_0

    .line 67
    :cond_6
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 68
    move-result v4

    .line 71
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 72
    move-result v5

    .line 75
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 76
    move-result v10

    .line 79
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    .line 80
    move-result v11

    .line 83
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    .line 84
    move-result v12

    .line 87
    add-int/2addr v12, v11

    .line 88
    if-eqz v0, :cond_7

    .line 89
    invoke-virtual {v0, v7, v1}, Landroid/view/View;->measure(II)V

    .line 91
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 94
    move-result v11

    .line 97
    add-int/2addr v12, v11

    .line 98
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredState()I

    .line 99
    move-result v0

    .line 102
    invoke-static {v1, v0}, Landroid/view/View;->combineMeasuredStates(II)I

    .line 103
    move-result v0

    .line 106
    goto :goto_2

    .line 107
    :cond_7
    move v0, v1

    .line 108
    :goto_2
    if-eqz v2, :cond_8

    .line 109
    invoke-virtual {v2, v7, v1}, Landroid/view/View;->measure(II)V

    .line 111
    invoke-static {v2}, Landroidx/appcompat/widget/AlertDialogLayout;->resolveMinimumHeight(Landroid/view/View;)I

    .line 114
    move-result v11

    .line 117
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    .line 118
    move-result v13

    .line 121
    sub-int/2addr v13, v11

    .line 122
    add-int/2addr v12, v11

    .line 123
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredState()I

    .line 124
    move-result v14

    .line 127
    invoke-static {v0, v14}, Landroid/view/View;->combineMeasuredStates(II)I

    .line 128
    move-result v0

    .line 131
    goto :goto_3

    .line 132
    :cond_8
    move v11, v1

    .line 133
    move v13, v11

    .line 134
    :goto_3
    if-eqz v3, :cond_a

    .line 135
    if-nez v4, :cond_9

    .line 137
    move v14, v1

    .line 139
    goto :goto_4

    .line 140
    :cond_9
    sub-int v14, v5, v12

    .line 141
    invoke-static {v1, v14}, Ljava/lang/Math;->max(II)I

    .line 143
    move-result v14

    .line 146
    invoke-static {v14, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 147
    move-result v14

    .line 150
    :goto_4
    invoke-virtual {v3, v7, v14}, Landroid/view/View;->measure(II)V

    .line 151
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    .line 154
    move-result v14

    .line 157
    add-int/2addr v12, v14

    .line 158
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredState()I

    .line 159
    move-result v15

    .line 162
    invoke-static {v0, v15}, Landroid/view/View;->combineMeasuredStates(II)I

    .line 163
    move-result v0

    .line 166
    goto :goto_5

    .line 167
    :cond_a
    move v14, v1

    .line 168
    :goto_5
    sub-int/2addr v5, v12

    .line 169
    const/high16 v15, 0x40000000    # 2.0f

    .line 170
    if-eqz v2, :cond_c

    .line 172
    sub-int/2addr v12, v11

    .line 174
    invoke-static {v5, v13}, Ljava/lang/Math;->min(II)I

    .line 175
    move-result v13

    .line 178
    if-lez v13, :cond_b

    .line 179
    sub-int/2addr v5, v13

    .line 181
    add-int/2addr v11, v13

    .line 182
    :cond_b
    invoke-static {v11, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 183
    move-result v11

    .line 186
    invoke-virtual {v2, v7, v11}, Landroid/view/View;->measure(II)V

    .line 187
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    .line 190
    move-result v11

    .line 193
    add-int/2addr v12, v11

    .line 194
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredState()I

    .line 195
    move-result v2

    .line 198
    invoke-static {v0, v2}, Landroid/view/View;->combineMeasuredStates(II)I

    .line 199
    move-result v0

    .line 202
    :cond_c
    if-eqz v3, :cond_d

    .line 203
    if-lez v5, :cond_d

    .line 205
    sub-int/2addr v12, v14

    .line 207
    add-int/2addr v14, v5

    .line 208
    invoke-static {v14, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 209
    move-result v2

    .line 212
    invoke-virtual {v3, v7, v2}, Landroid/view/View;->measure(II)V

    .line 213
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    .line 216
    move-result v2

    .line 219
    add-int/2addr v12, v2

    .line 220
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredState()I

    .line 221
    move-result v2

    .line 224
    invoke-static {v0, v2}, Landroid/view/View;->combineMeasuredStates(II)I

    .line 225
    move-result v0

    .line 228
    :cond_d
    move v2, v1

    .line 229
    move v3, v2

    .line 230
    :goto_6
    if-ge v2, v8, :cond_f

    .line 231
    invoke-virtual {v6, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 233
    move-result-object v4

    .line 236
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    .line 237
    move-result v5

    .line 240
    if-eq v5, v9, :cond_e

    .line 241
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    .line 243
    move-result v4

    .line 246
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    .line 247
    move-result v3

    .line 250
    :cond_e
    add-int/lit8 v2, v2, 0x1

    .line 251
    goto :goto_6

    .line 253
    :cond_f
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    .line 254
    move-result v2

    .line 257
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    .line 258
    move-result v4

    .line 261
    add-int/2addr v4, v2

    .line 262
    add-int/2addr v4, v3

    .line 263
    invoke-static {v4, v7, v0}, Landroid/view/View;->resolveSizeAndState(III)I

    .line 264
    move-result v0

    .line 267
    move/from16 v11, p2

    .line 268
    invoke-static {v12, v11, v1}, Landroid/view/View;->resolveSizeAndState(III)I

    .line 270
    move-result v2

    .line 273
    invoke-virtual {v6, v0, v2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    .line 274
    if-eq v10, v15, :cond_11

    .line 277
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    .line 279
    move-result v0

    .line 282
    invoke-static {v0, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 283
    move-result v10

    .line 286
    move v12, v1

    .line 287
    :goto_7
    if-ge v12, v8, :cond_11

    .line 288
    invoke-virtual {v6, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 290
    move-result-object v1

    .line 293
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 294
    move-result v0

    .line 297
    if-eq v0, v9, :cond_10

    .line 298
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 300
    move-result-object v0

    .line 303
    move-object v13, v0

    .line 304
    check-cast v13, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 305
    iget v0, v13, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 307
    const/4 v2, -0x1

    .line 309
    if-ne v0, v2, :cond_10

    .line 310
    iget v14, v13, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 312
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    .line 314
    move-result v0

    .line 317
    iput v0, v13, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 318
    const/4 v3, 0x0

    .line 320
    const/4 v5, 0x0

    .line 321
    move-object/from16 v0, p0

    .line 322
    move v2, v10

    .line 324
    move/from16 v4, p2

    .line 325
    invoke-virtual/range {v0 .. v5}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 327
    iput v14, v13, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 330
    :cond_10
    add-int/lit8 v12, v12, 0x1

    .line 332
    goto :goto_7

    .line 334
    :cond_11
    const/4 v1, 0x1

    .line 335
    :goto_8
    if-nez v1, :cond_12

    .line 336
    invoke-super/range {p0 .. p2}, Landroidx/appcompat/widget/LinearLayoutCompat;->onMeasure(II)V

    .line 338
    :cond_12
    return-void
    .line 341
.end method
