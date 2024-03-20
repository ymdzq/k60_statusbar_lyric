.class public Lmiuix/visual/check/FlowLayout;
.super Landroid/view/ViewGroup;
.source "FlowLayout.java"


# instance fields
.field private itemSpacing:I

.field private lineSpacing:I

.field private mLineGravity:I

.field private singleLine:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, p1, v0}, Lmiuix/visual/check/FlowLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, p1, p2, v0}, Lmiuix/visual/check/FlowLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    .line 51
    iput-boolean p3, p0, Lmiuix/visual/check/FlowLayout;->singleLine:Z

    .line 52
    invoke-direct {p0, p1, p2}, Lmiuix/visual/check/FlowLayout;->loadFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 58
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p3, 0x0

    .line 59
    iput-boolean p3, p0, Lmiuix/visual/check/FlowLayout;->singleLine:Z

    .line 60
    invoke-direct {p0, p1, p2}, Lmiuix/visual/check/FlowLayout;->loadFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private static getMeasuredDimension(III)I
    .locals 1

    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_1

    const/high16 v0, 0x40000000    # 2.0f

    if-eq p1, v0, :cond_0

    return p2

    :cond_0
    return p0

    .line 191
    :cond_1
    invoke-static {p2, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method private loadFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v0, Lmiuix/visualcheck/R$styleable;->FlowLayout:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 66
    sget p2, Lmiuix/visualcheck/R$styleable;->FlowLayout_lineSpacing:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lmiuix/visual/check/FlowLayout;->lineSpacing:I

    .line 67
    sget p2, Lmiuix/visualcheck/R$styleable;->FlowLayout_itemSpacing:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lmiuix/visual/check/FlowLayout;->itemSpacing:I

    .line 68
    sget p2, Lmiuix/visualcheck/R$styleable;->FlowLayout_lineGravity:I

    const/4 v0, 0x4

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lmiuix/visual/check/FlowLayout;->mLineGravity:I

    .line 69
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private offsetView(ZIIIILandroid/view/View;)V
    .locals 3

    .line 290
    iget v0, p0, Lmiuix/visual/check/FlowLayout;->mLineGravity:I

    const/4 v1, 0x4

    const/4 v2, 0x2

    if-ne v0, v1, :cond_0

    .line 292
    iget p0, p0, Lmiuix/visual/check/FlowLayout;->itemSpacing:I

    sub-int/2addr p5, p0

    sub-int/2addr p3, p2

    sub-int/2addr p3, p5

    .line 294
    div-int/2addr p3, v2

    goto :goto_0

    :cond_0
    if-ne v0, v2, :cond_2

    .line 297
    iget p0, p0, Lmiuix/visual/check/FlowLayout;->itemSpacing:I

    add-int p3, p4, p0

    :goto_0
    if-eqz p1, :cond_1

    neg-int p3, p3

    .line 303
    :cond_1
    invoke-virtual {p6, p3}, Landroid/view/View;->offsetLeftAndRight(I)V

    return-void

    .line 301
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unexpected line gravity: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lmiuix/visual/check/FlowLayout;->mLineGravity:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 24

    move-object/from16 v7, p0

    .line 199
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 204
    :cond_0
    invoke-static/range {p0 .. p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    const/4 v9, 0x1

    if-ne v0, v9, :cond_1

    move v10, v9

    goto :goto_0

    :cond_1
    const/4 v10, 0x0

    :goto_0
    if-eqz v10, :cond_2

    .line 205
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v0

    goto :goto_1

    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v0

    :goto_1
    move v11, v0

    if-eqz v10, :cond_3

    .line 206
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v0

    goto :goto_2

    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v0

    :goto_2
    move v12, v0

    .line 208
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v0

    .line 216
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v13

    sub-int v14, v13, v12

    move v15, v0

    move v1, v11

    move/from16 v16, v14

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/16 v17, 0x0

    .line 221
    :goto_3
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v6, v4, :cond_b

    .line 222
    invoke-virtual {v7, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 224
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v8, 0x8

    if-ne v4, v8, :cond_4

    move/from16 v19, v9

    move/from16 p4, v11

    move v11, v6

    goto/16 :goto_9

    .line 228
    :cond_4
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 231
    instance-of v8, v4, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v8, :cond_5

    .line 232
    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 233
    invoke-static {v4}, Landroidx/core/view/MarginLayoutParamsCompat;->getMarginStart(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v8

    .line 234
    invoke-static {v4}, Landroidx/core/view/MarginLayoutParamsCompat;->getMarginEnd(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v4

    move/from16 v18, v8

    move v8, v4

    goto :goto_4

    :cond_5
    const/4 v8, 0x0

    const/16 v18, 0x0

    :goto_4
    add-int v4, v1, v18

    .line 237
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v19

    add-int v4, v4, v19

    .line 239
    iget-boolean v9, v7, Lmiuix/visual/check/FlowLayout;->singleLine:Z

    if-nez v9, :cond_6

    if-le v4, v14, :cond_6

    .line 243
    iget v0, v7, Lmiuix/visual/check/FlowLayout;->lineSpacing:I

    add-int/2addr v0, v15

    move v9, v0

    move v4, v6

    move/from16 v19, v11

    goto :goto_5

    :cond_6
    move v9, v0

    move/from16 v19, v1

    move v4, v2

    :goto_5
    add-int v0, v19, v18

    .line 248
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, v0

    .line 249
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, v9

    if-eqz v10, :cond_7

    sub-int v0, v13, v1

    sub-int v1, v13, v19

    sub-int v1, v1, v18

    .line 251
    invoke-virtual {v5, v0, v9, v1, v2}, Landroid/view/View;->layout(IIII)V

    goto :goto_6

    .line 253
    :cond_7
    invoke-virtual {v5, v0, v9, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 257
    :goto_6
    iget v0, v7, Lmiuix/visual/check/FlowLayout;->mLineGravity:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_8

    if-ne v4, v6, :cond_8

    if-eqz v4, :cond_8

    :goto_7
    if-ge v3, v4, :cond_8

    .line 260
    invoke-virtual {v7, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, p0

    move v1, v10

    move/from16 p3, v9

    move v9, v2

    move v2, v12

    move/from16 v21, v3

    move v3, v13

    move/from16 v22, v4

    move/from16 v4, v16

    move-object/from16 v23, v5

    move/from16 v5, v17

    move/from16 p4, v11

    move v11, v6

    move-object/from16 v6, v20

    invoke-direct/range {v0 .. v6}, Lmiuix/visual/check/FlowLayout;->offsetView(ZIIIILandroid/view/View;)V

    add-int/lit8 v3, v21, 0x1

    move v2, v9

    move v6, v11

    move/from16 v4, v22

    move-object/from16 v5, v23

    move/from16 v9, p3

    move/from16 v11, p4

    goto :goto_7

    :cond_8
    move/from16 v22, v4

    move-object/from16 v23, v5

    move/from16 p3, v9

    move/from16 p4, v11

    move v9, v2

    move v11, v6

    add-int v18, v18, v8

    .line 267
    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int v18, v18, v0

    iget v0, v7, Lmiuix/visual/check/FlowLayout;->itemSpacing:I

    add-int v18, v18, v0

    add-int v8, v19, v18

    sub-int v16, v14, v8

    .line 272
    iget v0, v7, Lmiuix/visual/check/FlowLayout;->mLineGravity:I

    const/4 v6, 0x1

    if-eq v0, v6, :cond_9

    .line 273
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    sub-int/2addr v0, v6

    if-ne v11, v0, :cond_9

    move/from16 v5, v22

    :goto_8
    if-gt v5, v11, :cond_9

    .line 275
    invoke-virtual {v7, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    move-object/from16 v0, p0

    move v1, v10

    move v2, v12

    move v3, v13

    move/from16 v4, v16

    move/from16 v18, v5

    move v5, v8

    move/from16 v19, v6

    move-object/from16 v6, v17

    invoke-direct/range {v0 .. v6}, Lmiuix/visual/check/FlowLayout;->offsetView(ZIIIILandroid/view/View;)V

    add-int/lit8 v5, v18, 0x1

    move/from16 v6, v19

    goto :goto_8

    :cond_9
    move/from16 v19, v6

    if-ge v15, v9, :cond_a

    move v15, v9

    :cond_a
    move/from16 v0, p3

    move v1, v8

    move/from16 v17, v1

    move/from16 v2, v22

    move v3, v2

    :goto_9
    add-int/lit8 v6, v11, 0x1

    move/from16 v11, p4

    move/from16 v9, v19

    goto/16 :goto_3

    :cond_b
    return-void
.end method

.method protected onMeasure(II)V
    .locals 20

    move-object/from16 v0, p0

    .line 102
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 103
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 105
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 106
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    const/high16 v5, -0x80000000

    if-eq v2, v5, :cond_1

    const/high16 v5, 0x40000000    # 2.0f

    if-ne v2, v5, :cond_0

    goto :goto_0

    :cond_0
    const v5, 0x7fffffff

    goto :goto_1

    :cond_1
    :goto_0
    move v5, v1

    .line 113
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v6

    .line 114
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v7

    .line 120
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v8

    sub-int/2addr v5, v8

    move v9, v7

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 121
    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v12

    if-ge v10, v12, :cond_8

    .line 122
    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 124
    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v13

    const/16 v14, 0x8

    if-ne v13, v14, :cond_2

    move/from16 v14, p2

    move/from16 v19, v5

    const/16 v16, 0x0

    goto :goto_5

    :cond_2
    move/from16 v13, p1

    move/from16 v14, p2

    .line 127
    invoke-virtual {v0, v12, v13, v14}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    .line 129
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    .line 132
    instance-of v8, v15, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v8, :cond_3

    .line 133
    check-cast v15, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 134
    iget v8, v15, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    const/16 v16, 0x0

    add-int/lit8 v8, v8, 0x0

    .line 135
    iget v15, v15, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/lit8 v15, v15, 0x0

    goto :goto_3

    :cond_3
    const/16 v16, 0x0

    move/from16 v8, v16

    move v15, v8

    :goto_3
    add-int v17, v6, v8

    .line 138
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v18

    move/from16 v19, v6

    add-int v6, v17, v18

    if-le v6, v5, :cond_4

    .line 143
    iget-boolean v6, v0, Lmiuix/visual/check/FlowLayout;->singleLine:Z

    if-nez v6, :cond_4

    .line 144
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v6

    .line 147
    iget v9, v0, Lmiuix/visual/check/FlowLayout;->lineSpacing:I

    add-int/2addr v9, v7

    goto :goto_4

    :cond_4
    move/from16 v6, v19

    :goto_4
    add-int v17, v6, v8

    .line 150
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v18

    move/from16 v19, v5

    add-int v5, v17, v18

    .line 151
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v17

    add-int v13, v9, v17

    if-le v5, v11, :cond_5

    move v11, v5

    :cond_5
    add-int/2addr v8, v15

    .line 158
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v8, v5

    iget v5, v0, Lmiuix/visual/check/FlowLayout;->itemSpacing:I

    add-int/2addr v8, v5

    add-int/2addr v6, v8

    .line 163
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne v10, v5, :cond_6

    add-int/2addr v11, v15

    :cond_6
    if-ge v7, v13, :cond_7

    move v7, v13

    :cond_7
    :goto_5
    add-int/lit8 v10, v10, 0x1

    move/from16 v5, v19

    goto/16 :goto_2

    .line 174
    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v5

    add-int/2addr v11, v5

    .line 177
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v5

    add-int/2addr v7, v5

    .line 179
    invoke-static {v1, v2, v11}, Lmiuix/visual/check/FlowLayout;->getMeasuredDimension(III)I

    move-result v1

    .line 182
    invoke-static {v3, v4, v7}, Lmiuix/visual/check/FlowLayout;->getMeasuredDimension(III)I

    move-result v2

    .line 183
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    return-void
.end method
