.class public Landroidx/appcompat/widget/LinearLayoutCompat;
.super Landroid/view/ViewGroup;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public mBaselineAligned:Z

.field public mBaselineAlignedChildIndex:I

.field public mBaselineChildTop:I

.field public mDivider:Landroid/graphics/drawable/Drawable;

.field public mDividerHeight:I

.field public mDividerPadding:I

.field public mDividerWidth:I

.field public mGravity:I

.field public mMaxAscent:[I

.field public mMaxDescent:[I

.field public mOrientation:I

.field public mShowDividers:I

.field public mTotalLength:I

.field public mUseLargestChild:Z

.field public mWeightSum:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Landroidx/appcompat/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineAligned:Z

    const/4 v1, -0x1

    .line 5
    iput v1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    const/4 v2, 0x0

    .line 6
    iput v2, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineChildTop:I

    const v3, 0x800033

    .line 7
    iput v3, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mGravity:I

    .line 8
    sget-object v6, Landroidx/appcompat/R$styleable;->LinearLayoutCompat:[I

    .line 9
    invoke-virtual {p1, p2, v6, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    const/4 v10, 0x0

    .line 10
    sget-object v4, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    move-object v4, p0

    move-object v5, p1

    move-object v7, p2

    move-object v8, v3

    move v9, p3

    .line 11
    invoke-static/range {v4 .. v10}, Landroidx/core/view/ViewCompat$Api29Impl;->saveAttributeDataForStyleable(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 12
    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    if-ltz p2, :cond_0

    .line 13
    invoke-virtual {p0, p2}, Landroidx/appcompat/widget/LinearLayoutCompat;->setOrientation(I)V

    .line 14
    :cond_0
    invoke-virtual {v3, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    if-ltz p2, :cond_1

    .line 15
    invoke-virtual {p0, p2}, Landroidx/appcompat/widget/LinearLayoutCompat;->setGravity(I)V

    :cond_1
    const/4 p2, 0x2

    .line 16
    invoke-virtual {v3, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    if-nez p2, :cond_2

    .line 17
    invoke-virtual {p0, p2}, Landroidx/appcompat/widget/LinearLayoutCompat;->setBaselineAligned(Z)V

    :cond_2
    const/4 p2, 0x4

    const/high16 p3, -0x40800000    # -1.0f

    .line 18
    invoke-virtual {v3, p2, p3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    .line 19
    iput p2, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mWeightSum:F

    const/4 p2, 0x3

    .line 20
    invoke-virtual {v3, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    .line 21
    iput p2, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    const/4 p2, 0x7

    .line 22
    invoke-virtual {v3, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    .line 23
    iput-boolean p2, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mUseLargestChild:Z

    const/4 p2, 0x5

    .line 24
    invoke-virtual {v3, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 25
    invoke-virtual {v3, p2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    if-eqz p3, :cond_3

    .line 26
    invoke-static {p3, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    .line 27
    :cond_3
    invoke-virtual {v3, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 28
    :goto_0
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/LinearLayoutCompat;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 p1, 0x8

    .line 29
    invoke-virtual {v3, p1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    .line 30
    iput p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mShowDividers:I

    const/4 p1, 0x6

    .line 31
    invoke-virtual {v3, p1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    .line 32
    iput p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerPadding:I

    .line 33
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    .line 1
    instance-of p0, p1, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 2
    return p0
    .line 4
.end method

.method final drawHorizontalDivider(Landroid/graphics/Canvas;I)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    .line 4
    move-result v1

    .line 7
    iget v2, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerPadding:I

    .line 8
    add-int/2addr v1, v2

    .line 10
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    .line 11
    move-result v2

    .line 14
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    .line 15
    move-result v3

    .line 18
    sub-int/2addr v2, v3

    .line 19
    iget v3, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerPadding:I

    .line 20
    sub-int/2addr v2, v3

    .line 22
    iget v3, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerHeight:I

    .line 23
    add-int/2addr v3, p2

    .line 25
    invoke-virtual {v0, v1, p2, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 26
    iget-object p0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 29
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 31
    return-void
    .line 34
.end method

.method final drawVerticalDivider(Landroid/graphics/Canvas;I)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    .line 4
    move-result v1

    .line 7
    iget v2, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerPadding:I

    .line 8
    add-int/2addr v1, v2

    .line 10
    iget v2, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerWidth:I

    .line 11
    add-int/2addr v2, p2

    .line 13
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    .line 14
    move-result v3

    .line 17
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    .line 18
    move-result v4

    .line 21
    sub-int/2addr v3, v4

    .line 22
    iget v4, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerPadding:I

    .line 23
    sub-int/2addr v3, v4

    .line 25
    invoke-virtual {v0, p2, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 26
    iget-object p0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 29
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 31
    return-void
    .line 34
.end method

.method public bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->generateDefaultLayoutParams()Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public generateDefaultLayoutParams()Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .locals 2

    .line 2
    iget p0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mOrientation:I

    const/4 v0, -0x2

    if-nez p0, :cond_0

    .line 3
    new-instance p0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    invoke-direct {p0, v0, v0}, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;-><init>(II)V

    return-object p0

    :cond_0
    const/4 v1, 0x1

    if-ne p0, v1, :cond_1

    .line 4
    new-instance p0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {p0, v1, v0}, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;-><init>(II)V

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/LinearLayoutCompat;->generateLayoutParams(Landroid/util/AttributeSet;)Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/LinearLayoutCompat;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .locals 1

    .line 3
    new-instance v0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .locals 0

    .line 4
    instance-of p0, p1, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    if-eqz p0, :cond_0

    .line 5
    new-instance p0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    check-cast p1, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    invoke-direct {p0, p1}, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object p0

    .line 6
    :cond_0
    instance-of p0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p0, :cond_1

    .line 7
    new-instance p0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {p0, p1}, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object p0

    .line 8
    :cond_1
    new-instance p0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    invoke-direct {p0, p1}, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p0
.end method

.method public getBaseline()I
    .locals 5

    .line 1
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    .line 2
    if-gez v0, :cond_0

    .line 4
    invoke-super {p0}, Landroid/view/ViewGroup;->getBaseline()I

    .line 6
    move-result p0

    .line 9
    return p0

    .line 10
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 11
    move-result v0

    .line 14
    iget v1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    .line 15
    if-le v0, v1, :cond_6

    .line 17
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 19
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Landroid/view/View;->getBaseline()I

    .line 23
    move-result v1

    .line 26
    const/4 v2, -0x1

    .line 27
    if-ne v1, v2, :cond_2

    .line 28
    iget p0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    .line 30
    if-nez p0, :cond_1

    .line 32
    return v2

    .line 34
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    .line 35
    const-string v0, "mBaselineAlignedChildIndex of LinearLayout points to a View that doesn\'t know how to get its baseline."

    .line 37
    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 39
    throw p0

    .line 42
    :cond_2
    iget v2, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineChildTop:I

    .line 43
    iget v3, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mOrientation:I

    .line 45
    const/4 v4, 0x1

    .line 47
    if-ne v3, v4, :cond_5

    .line 48
    iget v3, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mGravity:I

    .line 50
    and-int/lit8 v3, v3, 0x70

    .line 52
    const/16 v4, 0x30

    .line 54
    if-eq v3, v4, :cond_5

    .line 56
    const/16 v4, 0x10

    .line 58
    if-eq v3, v4, :cond_4

    .line 60
    const/16 v4, 0x50

    .line 62
    if-eq v3, v4, :cond_3

    .line 64
    goto :goto_0

    .line 66
    :cond_3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getBottom()I

    .line 67
    move-result v2

    .line 70
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getTop()I

    .line 71
    move-result v3

    .line 74
    sub-int/2addr v2, v3

    .line 75
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    .line 76
    move-result v3

    .line 79
    sub-int/2addr v2, v3

    .line 80
    iget p0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 81
    sub-int/2addr v2, p0

    .line 83
    goto :goto_0

    .line 84
    :cond_4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getBottom()I

    .line 85
    move-result v3

    .line 88
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getTop()I

    .line 89
    move-result v4

    .line 92
    sub-int/2addr v3, v4

    .line 93
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    .line 94
    move-result v4

    .line 97
    sub-int/2addr v3, v4

    .line 98
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    .line 99
    move-result v4

    .line 102
    sub-int/2addr v3, v4

    .line 103
    iget p0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 104
    sub-int/2addr v3, p0

    .line 106
    div-int/lit8 v3, v3, 0x2

    .line 107
    add-int/2addr v2, v3

    .line 109
    :cond_5
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 110
    move-result-object p0

    .line 113
    check-cast p0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 114
    iget p0, p0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 116
    add-int/2addr v2, p0

    .line 118
    add-int/2addr v2, v1

    .line 119
    return v2

    .line 120
    :cond_6
    new-instance p0, Ljava/lang/RuntimeException;

    .line 121
    const-string v0, "mBaselineAlignedChildIndex of LinearLayout set to an index that is out of bounds."

    .line 123
    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 125
    throw p0
    .line 128
.end method

.method public getBaselineAlignedChildIndex()I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    .line 2
    return p0
    .line 4
.end method

.method public getDividerDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 2
    return-object p0
    .line 4
.end method

.method public getDividerPadding()I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerPadding:I

    .line 2
    return p0
    .line 4
.end method

.method public getDividerWidth()I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerWidth:I

    .line 2
    return p0
    .line 4
.end method

.method public getGravity()I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mGravity:I

    .line 2
    return p0
    .line 4
.end method

.method public getOrientation()I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mOrientation:I

    .line 2
    return p0
    .line 4
.end method

.method public getShowDividers()I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mShowDividers:I

    .line 2
    return p0
    .line 4
.end method

.method getVirtualChildCount()I
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    move-result p0

    .line 5
    return p0
    .line 6
.end method

.method public getWeightSum()F
    .locals 0

    .line 1
    iget p0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mWeightSum:F

    .line 2
    return p0
    .line 4
.end method

.method public final hasDividerBeforeChildAt(I)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-nez p1, :cond_1

    .line 4
    iget p0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mShowDividers:I

    .line 6
    and-int/2addr p0, v1

    .line 8
    if-eqz p0, :cond_0

    .line 9
    move v0, v1

    .line 11
    :cond_0
    return v0

    .line 12
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 13
    move-result v2

    .line 16
    if-ne p1, v2, :cond_3

    .line 17
    iget p0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mShowDividers:I

    .line 19
    and-int/lit8 p0, p0, 0x4

    .line 21
    if-eqz p0, :cond_2

    .line 23
    move v0, v1

    .line 25
    :cond_2
    return v0

    .line 26
    :cond_3
    iget v2, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mShowDividers:I

    .line 27
    and-int/lit8 v2, v2, 0x2

    .line 29
    if-eqz v2, :cond_5

    .line 31
    sub-int/2addr p1, v1

    .line 33
    :goto_0
    if-ltz p1, :cond_5

    .line 34
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 36
    move-result-object v2

    .line 39
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    .line 40
    move-result v2

    .line 43
    const/16 v3, 0x8

    .line 44
    if-eq v2, v3, :cond_4

    .line 46
    move v0, v1

    .line 48
    goto :goto_1

    .line 49
    :cond_4
    add-int/lit8 p1, p1, -0x1

    .line 50
    goto :goto_0

    .line 52
    :cond_5
    :goto_1
    return v0
    .line 53
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 2
    if-nez v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mOrientation:I

    .line 7
    const/16 v1, 0x8

    .line 9
    const/4 v2, 0x0

    .line 11
    const/4 v3, 0x1

    .line 12
    if-ne v0, v3, :cond_4

    .line 13
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildCount()I

    .line 15
    move-result v0

    .line 18
    :goto_0
    if-ge v2, v0, :cond_2

    .line 19
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 21
    move-result-object v3

    .line 24
    if-eqz v3, :cond_1

    .line 25
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    .line 27
    move-result v4

    .line 30
    if-eq v4, v1, :cond_1

    .line 31
    invoke-virtual {p0, v2}, Landroidx/appcompat/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    .line 33
    move-result v4

    .line 36
    if-eqz v4, :cond_1

    .line 37
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 39
    move-result-object v4

    .line 42
    check-cast v4, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 43
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    .line 45
    move-result v3

    .line 48
    iget v4, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 49
    sub-int/2addr v3, v4

    .line 51
    iget v4, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerHeight:I

    .line 52
    sub-int/2addr v3, v4

    .line 54
    invoke-virtual {p0, p1, v3}, Landroidx/appcompat/widget/LinearLayoutCompat;->drawHorizontalDivider(Landroid/graphics/Canvas;I)V

    .line 55
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 58
    goto :goto_0

    .line 60
    :cond_2
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    .line 61
    move-result v1

    .line 64
    if-eqz v1, :cond_b

    .line 65
    add-int/lit8 v0, v0, -0x1

    .line 67
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 69
    move-result-object v0

    .line 72
    if-nez v0, :cond_3

    .line 73
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    .line 75
    move-result v0

    .line 78
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    .line 79
    move-result v1

    .line 82
    sub-int/2addr v0, v1

    .line 83
    iget v1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerHeight:I

    .line 84
    sub-int/2addr v0, v1

    .line 86
    goto :goto_1

    .line 87
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 88
    move-result-object v1

    .line 91
    check-cast v1, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 92
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    .line 94
    move-result v0

    .line 97
    iget v1, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 98
    add-int/2addr v0, v1

    .line 100
    :goto_1
    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/widget/LinearLayoutCompat;->drawHorizontalDivider(Landroid/graphics/Canvas;I)V

    .line 101
    goto/16 :goto_6

    .line 104
    :cond_4
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildCount()I

    .line 106
    move-result v0

    .line 109
    invoke-static {p0}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    .line 110
    move-result v3

    .line 113
    :goto_2
    if-ge v2, v0, :cond_7

    .line 114
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 116
    move-result-object v4

    .line 119
    if-eqz v4, :cond_6

    .line 120
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    .line 122
    move-result v5

    .line 125
    if-eq v5, v1, :cond_6

    .line 126
    invoke-virtual {p0, v2}, Landroidx/appcompat/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    .line 128
    move-result v5

    .line 131
    if-eqz v5, :cond_6

    .line 132
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 134
    move-result-object v5

    .line 137
    check-cast v5, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 138
    if-eqz v3, :cond_5

    .line 140
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    .line 142
    move-result v4

    .line 145
    iget v5, v5, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 146
    add-int/2addr v4, v5

    .line 148
    goto :goto_3

    .line 149
    :cond_5
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    .line 150
    move-result v4

    .line 153
    iget v5, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 154
    sub-int/2addr v4, v5

    .line 156
    iget v5, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerWidth:I

    .line 157
    sub-int/2addr v4, v5

    .line 159
    :goto_3
    invoke-virtual {p0, p1, v4}, Landroidx/appcompat/widget/LinearLayoutCompat;->drawVerticalDivider(Landroid/graphics/Canvas;I)V

    .line 160
    :cond_6
    add-int/lit8 v2, v2, 0x1

    .line 163
    goto :goto_2

    .line 165
    :cond_7
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    .line 166
    move-result v1

    .line 169
    if-eqz v1, :cond_b

    .line 170
    add-int/lit8 v0, v0, -0x1

    .line 172
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 174
    move-result-object v0

    .line 177
    if-nez v0, :cond_9

    .line 178
    if-eqz v3, :cond_8

    .line 180
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    .line 182
    move-result v0

    .line 185
    goto :goto_5

    .line 186
    :cond_8
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    .line 187
    move-result v0

    .line 190
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    .line 191
    move-result v1

    .line 194
    sub-int/2addr v0, v1

    .line 195
    iget v1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerWidth:I

    .line 196
    goto :goto_4

    .line 198
    :cond_9
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 199
    move-result-object v1

    .line 202
    check-cast v1, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 203
    if-eqz v3, :cond_a

    .line 205
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    .line 207
    move-result v0

    .line 210
    iget v1, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 211
    sub-int/2addr v0, v1

    .line 213
    iget v1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerWidth:I

    .line 214
    :goto_4
    sub-int/2addr v0, v1

    .line 216
    goto :goto_5

    .line 217
    :cond_a
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    .line 218
    move-result v0

    .line 221
    iget v1, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 222
    add-int/2addr v0, v1

    .line 224
    :goto_5
    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/widget/LinearLayoutCompat;->drawVerticalDivider(Landroid/graphics/Canvas;I)V

    .line 225
    :cond_b
    :goto_6
    return-void
    .line 228
.end method

.method public final onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2
    const-string p0, "androidx.appcompat.widget.LinearLayoutCompat"

    .line 5
    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 7
    return-void
    .line 10
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2
    const-string p0, "androidx.appcompat.widget.LinearLayoutCompat"

    .line 5
    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 7
    return-void
    .line 10
.end method

.method public onLayout(ZIIII)V
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    iget v1, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mOrientation:I

    .line 4
    const/16 v2, 0x50

    .line 6
    const/16 v3, 0x10

    .line 8
    const/16 v4, 0x8

    .line 10
    const/4 v5, 0x5

    .line 12
    const v6, 0x800007

    .line 13
    const/4 v7, 0x2

    .line 16
    const/4 v9, 0x1

    .line 17
    if-ne v1, v9, :cond_8

    .line 18
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    .line 20
    move-result v1

    .line 23
    sub-int v10, p4, p2

    .line 24
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    .line 26
    move-result v11

    .line 29
    sub-int v11, v10, v11

    .line 30
    sub-int/2addr v10, v1

    .line 32
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    .line 33
    move-result v12

    .line 36
    sub-int/2addr v10, v12

    .line 37
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildCount()I

    .line 38
    move-result v12

    .line 41
    iget v13, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mGravity:I

    .line 42
    and-int/lit8 v14, v13, 0x70

    .line 44
    and-int/2addr v6, v13

    .line 46
    if-eq v14, v3, :cond_1

    .line 47
    if-eq v14, v2, :cond_0

    .line 49
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    .line 51
    move-result v2

    .line 54
    goto :goto_0

    .line 55
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    .line 56
    move-result v2

    .line 59
    add-int v2, v2, p5

    .line 60
    sub-int v2, v2, p3

    .line 62
    iget v3, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 64
    sub-int/2addr v2, v3

    .line 66
    goto :goto_0

    .line 67
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    .line 68
    move-result v2

    .line 71
    sub-int v3, p5, p3

    .line 72
    iget v13, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 74
    sub-int/2addr v3, v13

    .line 76
    div-int/2addr v3, v7

    .line 77
    add-int/2addr v2, v3

    .line 78
    :goto_0
    const/4 v3, 0x0

    .line 79
    :goto_1
    if-ge v3, v12, :cond_16

    .line 80
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 82
    move-result-object v13

    .line 85
    if-nez v13, :cond_2

    .line 86
    add-int/lit8 v2, v2, 0x0

    .line 88
    goto :goto_4

    .line 90
    :cond_2
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    .line 91
    move-result v14

    .line 94
    if-eq v14, v4, :cond_7

    .line 95
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    .line 97
    move-result v14

    .line 100
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    .line 101
    move-result v15

    .line 104
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 105
    move-result-object v16

    .line 108
    move-object/from16 v4, v16

    .line 109
    check-cast v4, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 111
    iget v8, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 113
    if-gez v8, :cond_3

    .line 115
    move v8, v6

    .line 117
    :cond_3
    sget-object v17, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 118
    invoke-static/range {p0 .. p0}, Landroidx/core/view/ViewCompat$Api17Impl;->getLayoutDirection(Landroid/view/View;)I

    .line 120
    move-result v7

    .line 123
    invoke-static {v8, v7}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    .line 124
    move-result v7

    .line 127
    and-int/lit8 v7, v7, 0x7

    .line 128
    if-eq v7, v9, :cond_5

    .line 130
    if-eq v7, v5, :cond_4

    .line 132
    iget v7, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 134
    add-int/2addr v7, v1

    .line 136
    goto :goto_3

    .line 137
    :cond_4
    sub-int v7, v11, v14

    .line 138
    iget v8, v4, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 140
    goto :goto_2

    .line 142
    :cond_5
    sub-int v7, v10, v14

    .line 143
    const/4 v8, 0x2

    .line 145
    div-int/2addr v7, v8

    .line 146
    add-int/2addr v7, v1

    .line 147
    iget v8, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 148
    add-int/2addr v7, v8

    .line 150
    iget v8, v4, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 151
    :goto_2
    sub-int/2addr v7, v8

    .line 153
    :goto_3
    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    .line 154
    move-result v8

    .line 157
    if-eqz v8, :cond_6

    .line 158
    iget v8, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerHeight:I

    .line 160
    add-int/2addr v2, v8

    .line 162
    :cond_6
    iget v8, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 163
    add-int/2addr v2, v8

    .line 165
    add-int/lit8 v8, v2, 0x0

    .line 166
    add-int/2addr v14, v7

    .line 168
    add-int v5, v15, v8

    .line 169
    invoke-virtual {v13, v7, v8, v14, v5}, Landroid/view/View;->layout(IIII)V

    .line 171
    iget v4, v4, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 174
    add-int/2addr v15, v4

    .line 176
    const/4 v4, 0x0

    .line 177
    add-int/2addr v15, v4

    .line 178
    add-int/2addr v15, v2

    .line 179
    add-int/lit8 v3, v3, 0x0

    .line 180
    move v2, v15

    .line 182
    :cond_7
    :goto_4
    add-int/2addr v3, v9

    .line 183
    const/16 v4, 0x8

    .line 184
    const/4 v5, 0x5

    .line 186
    const/4 v7, 0x2

    .line 187
    goto :goto_1

    .line 188
    :cond_8
    invoke-static/range {p0 .. p0}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    .line 189
    move-result v1

    .line 192
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    .line 193
    move-result v4

    .line 196
    sub-int v5, p5, p3

    .line 197
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    .line 199
    move-result v7

    .line 202
    sub-int v7, v5, v7

    .line 203
    sub-int/2addr v5, v4

    .line 205
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    .line 206
    move-result v8

    .line 209
    sub-int/2addr v5, v8

    .line 210
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildCount()I

    .line 211
    move-result v8

    .line 214
    iget v10, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mGravity:I

    .line 215
    and-int/2addr v6, v10

    .line 217
    and-int/lit8 v10, v10, 0x70

    .line 218
    iget-boolean v11, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineAligned:Z

    .line 220
    iget-object v12, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mMaxAscent:[I

    .line 222
    iget-object v13, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mMaxDescent:[I

    .line 224
    sget-object v14, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 226
    invoke-static/range {p0 .. p0}, Landroidx/core/view/ViewCompat$Api17Impl;->getLayoutDirection(Landroid/view/View;)I

    .line 228
    move-result v14

    .line 231
    invoke-static {v6, v14}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    .line 232
    move-result v6

    .line 235
    if-eq v6, v9, :cond_a

    .line 236
    const/4 v14, 0x5

    .line 238
    if-eq v6, v14, :cond_9

    .line 239
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    .line 241
    move-result v6

    .line 244
    goto :goto_5

    .line 245
    :cond_9
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    .line 246
    move-result v6

    .line 249
    add-int v6, v6, p4

    .line 250
    sub-int v6, v6, p2

    .line 252
    iget v14, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 254
    sub-int/2addr v6, v14

    .line 256
    goto :goto_5

    .line 257
    :cond_a
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    .line 258
    move-result v6

    .line 261
    sub-int v14, p4, p2

    .line 262
    iget v15, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 264
    sub-int/2addr v14, v15

    .line 266
    const/4 v15, 0x2

    .line 267
    div-int/2addr v14, v15

    .line 268
    add-int/2addr v6, v14

    .line 269
    :goto_5
    if-eqz v1, :cond_b

    .line 270
    add-int/lit8 v1, v8, -0x1

    .line 272
    const/4 v15, -0x1

    .line 274
    goto :goto_6

    .line 275
    :cond_b
    move v15, v9

    .line 276
    const/4 v1, 0x0

    .line 277
    :goto_6
    move/from16 v18, v6

    .line 278
    const/4 v6, 0x0

    .line 280
    :goto_7
    if-ge v6, v8, :cond_16

    .line 281
    mul-int v19, v15, v6

    .line 283
    add-int v9, v19, v1

    .line 285
    invoke-virtual {v0, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 287
    move-result-object v2

    .line 290
    if-nez v2, :cond_d

    .line 291
    add-int/lit8 v18, v18, 0x0

    .line 293
    :cond_c
    move/from16 p3, v1

    .line 295
    move/from16 p5, v8

    .line 297
    move/from16 v22, v10

    .line 299
    const/4 v1, 0x0

    .line 301
    :goto_8
    const/4 v2, 0x1

    .line 302
    goto/16 :goto_b

    .line 303
    :cond_d
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    .line 305
    move-result v3

    .line 308
    const/16 v14, 0x8

    .line 309
    if-eq v3, v14, :cond_c

    .line 311
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    .line 313
    move-result v3

    .line 316
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    .line 317
    move-result v21

    .line 320
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 321
    move-result-object v22

    .line 324
    move-object/from16 v14, v22

    .line 325
    check-cast v14, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 327
    if-eqz v11, :cond_e

    .line 329
    move/from16 p3, v1

    .line 331
    iget v1, v14, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 333
    move/from16 p5, v8

    .line 335
    const/4 v8, -0x1

    .line 337
    if-eq v1, v8, :cond_f

    .line 338
    invoke-virtual {v2}, Landroid/view/View;->getBaseline()I

    .line 340
    move-result v8

    .line 343
    goto :goto_9

    .line 344
    :cond_e
    move/from16 p3, v1

    .line 345
    move/from16 p5, v8

    .line 347
    :cond_f
    const/4 v8, -0x1

    .line 349
    :goto_9
    iget v1, v14, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 350
    if-gez v1, :cond_10

    .line 352
    move v1, v10

    .line 354
    :cond_10
    and-int/lit8 v1, v1, 0x70

    .line 355
    move/from16 v22, v10

    .line 357
    const/16 v10, 0x10

    .line 359
    if-eq v1, v10, :cond_13

    .line 361
    const/16 v10, 0x30

    .line 363
    if-eq v1, v10, :cond_12

    .line 365
    const/16 v10, 0x50

    .line 367
    if-eq v1, v10, :cond_11

    .line 369
    move v1, v4

    .line 371
    const/4 v10, -0x1

    .line 372
    goto :goto_a

    .line 373
    :cond_11
    sub-int v1, v7, v21

    .line 374
    iget v10, v14, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 376
    sub-int/2addr v1, v10

    .line 378
    const/4 v10, -0x1

    .line 379
    if-eq v8, v10, :cond_14

    .line 380
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    .line 382
    move-result v23

    .line 385
    sub-int v23, v23, v8

    .line 386
    const/4 v8, 0x2

    .line 388
    aget v24, v13, v8

    .line 389
    sub-int v24, v24, v23

    .line 391
    sub-int v1, v1, v24

    .line 393
    goto :goto_a

    .line 395
    :cond_12
    const/4 v10, -0x1

    .line 396
    iget v1, v14, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 397
    add-int/2addr v1, v4

    .line 399
    if-eq v8, v10, :cond_14

    .line 400
    const/16 v20, 0x1

    .line 402
    aget v23, v12, v20

    .line 404
    sub-int v23, v23, v8

    .line 406
    add-int v1, v23, v1

    .line 408
    goto :goto_a

    .line 410
    :cond_13
    const/4 v10, -0x1

    .line 411
    sub-int v1, v5, v21

    .line 412
    const/4 v8, 0x2

    .line 414
    div-int/2addr v1, v8

    .line 415
    add-int/2addr v1, v4

    .line 416
    iget v8, v14, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 417
    add-int/2addr v1, v8

    .line 419
    iget v8, v14, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 420
    sub-int/2addr v1, v8

    .line 422
    :cond_14
    :goto_a
    invoke-virtual {v0, v9}, Landroidx/appcompat/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    .line 423
    move-result v8

    .line 426
    if-eqz v8, :cond_15

    .line 427
    iget v8, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerWidth:I

    .line 429
    add-int v18, v18, v8

    .line 431
    :cond_15
    iget v8, v14, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 433
    add-int v18, v18, v8

    .line 435
    add-int/lit8 v8, v18, 0x0

    .line 437
    add-int v9, v3, v8

    .line 439
    add-int v10, v21, v1

    .line 441
    invoke-virtual {v2, v8, v1, v9, v10}, Landroid/view/View;->layout(IIII)V

    .line 443
    iget v1, v14, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 446
    add-int/2addr v3, v1

    .line 448
    const/4 v1, 0x0

    .line 449
    add-int/2addr v3, v1

    .line 450
    add-int v18, v3, v18

    .line 451
    add-int/lit8 v6, v6, 0x0

    .line 453
    goto/16 :goto_8

    .line 455
    :goto_b
    add-int/2addr v6, v2

    .line 457
    move/from16 v1, p3

    .line 458
    move/from16 v8, p5

    .line 460
    move v9, v2

    .line 462
    move/from16 v10, v22

    .line 463
    const/16 v2, 0x50

    .line 465
    const/16 v3, 0x10

    .line 467
    goto/16 :goto_7

    .line 469
    :cond_16
    return-void
    .line 471
.end method

.method public onMeasure(II)V
    .locals 38

    .line 1
    move-object/from16 v6, p0

    .line 2
    move/from16 v7, p1

    .line 4
    move/from16 v8, p2

    .line 6
    iget v0, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mOrientation:I

    .line 8
    const/4 v10, -0x2

    .line 10
    const/high16 v11, -0x80000000

    .line 11
    const/16 v12, 0x8

    .line 13
    const/high16 v14, 0x40000000    # 2.0f

    .line 15
    const/4 v15, 0x0

    .line 17
    const/4 v5, 0x0

    .line 18
    const/4 v4, 0x1

    .line 19
    if-ne v0, v4, :cond_29

    .line 20
    iput v5, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 22
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildCount()I

    .line 24
    move-result v3

    .line 27
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 28
    move-result v2

    .line 31
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 32
    move-result v1

    .line 35
    iget v0, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    .line 36
    iget-boolean v9, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mUseLargestChild:Z

    .line 38
    move/from16 v24, v4

    .line 40
    move v13, v5

    .line 42
    move/from16 v17, v13

    .line 43
    move/from16 v18, v17

    .line 45
    move/from16 v19, v18

    .line 47
    move/from16 v20, v19

    .line 49
    move/from16 v21, v20

    .line 51
    move/from16 v23, v21

    .line 53
    move/from16 v25, v23

    .line 55
    move/from16 v22, v15

    .line 57
    :goto_0
    if-ge v13, v3, :cond_10

    .line 59
    invoke-virtual {v6, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 61
    move-result-object v26

    .line 64
    if-nez v26, :cond_0

    .line 65
    iget v4, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 67
    add-int/2addr v4, v5

    .line 69
    iput v4, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 70
    goto :goto_1

    .line 72
    :cond_0
    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getVisibility()I

    .line 73
    move-result v4

    .line 76
    if-ne v4, v12, :cond_1

    .line 77
    add-int/lit8 v13, v13, 0x0

    .line 79
    :goto_1
    move v10, v0

    .line 81
    move/from16 v29, v1

    .line 82
    move v0, v2

    .line 84
    move/from16 v31, v3

    .line 85
    move/from16 v12, v18

    .line 87
    const/16 v27, 0x1

    .line 89
    goto/16 :goto_c

    .line 91
    :cond_1
    invoke-virtual {v6, v13}, Landroidx/appcompat/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    .line 93
    move-result v4

    .line 96
    if-eqz v4, :cond_2

    .line 97
    iget v4, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 99
    iget v5, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerHeight:I

    .line 101
    add-int/2addr v4, v5

    .line 103
    iput v4, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 104
    :cond_2
    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 106
    move-result-object v4

    .line 109
    move-object v5, v4

    .line 110
    check-cast v5, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 111
    iget v4, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 113
    add-float v22, v22, v4

    .line 115
    if-ne v1, v14, :cond_3

    .line 117
    iget v12, v5, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 119
    if-nez v12, :cond_3

    .line 121
    cmpl-float v12, v4, v15

    .line 123
    if-lez v12, :cond_3

    .line 125
    iget v4, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 127
    iget v12, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 129
    add-int/2addr v12, v4

    .line 131
    iget v14, v5, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 132
    add-int/2addr v12, v14

    .line 134
    invoke-static {v4, v12}, Ljava/lang/Math;->max(II)I

    .line 135
    move-result v4

    .line 138
    iput v4, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 139
    move v10, v0

    .line 141
    move/from16 v29, v1

    .line 142
    move/from16 v30, v2

    .line 144
    move/from16 v31, v3

    .line 146
    move-object v15, v5

    .line 148
    const/4 v4, 0x1

    .line 149
    const/16 v27, 0x1

    .line 150
    goto :goto_5

    .line 152
    :cond_3
    iget v12, v5, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 153
    if-nez v12, :cond_4

    .line 155
    cmpl-float v4, v4, v15

    .line 157
    if-lez v4, :cond_4

    .line 159
    iput v10, v5, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 161
    const/4 v12, 0x0

    .line 163
    goto :goto_2

    .line 164
    :cond_4
    move v12, v11

    .line 165
    :goto_2
    const/4 v4, 0x0

    .line 166
    cmpl-float v14, v22, v15

    .line 167
    if-nez v14, :cond_5

    .line 169
    iget v14, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 171
    goto :goto_3

    .line 173
    :cond_5
    const/4 v14, 0x0

    .line 174
    :goto_3
    move v10, v0

    .line 175
    move-object/from16 v0, p0

    .line 176
    move/from16 v29, v1

    .line 178
    move-object/from16 v1, v26

    .line 180
    move/from16 v30, v2

    .line 182
    move/from16 v2, p1

    .line 184
    move/from16 v31, v3

    .line 186
    move v3, v4

    .line 188
    const/16 v27, 0x1

    .line 189
    move/from16 v4, p2

    .line 191
    move-object v15, v5

    .line 193
    move v5, v14

    .line 194
    invoke-virtual/range {v0 .. v5}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 195
    if-eq v12, v11, :cond_6

    .line 198
    iput v12, v15, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 200
    :cond_6
    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getMeasuredHeight()I

    .line 202
    move-result v0

    .line 205
    iget v1, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 206
    add-int v2, v1, v0

    .line 208
    iget v3, v15, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 210
    add-int/2addr v2, v3

    .line 212
    iget v3, v15, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 213
    add-int/2addr v2, v3

    .line 215
    const/4 v3, 0x0

    .line 216
    add-int/2addr v2, v3

    .line 217
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 218
    move-result v1

    .line 221
    iput v1, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 222
    if-eqz v9, :cond_7

    .line 224
    move/from16 v5, v19

    .line 226
    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    .line 228
    move-result v19

    .line 231
    goto :goto_4

    .line 232
    :cond_7
    move/from16 v5, v19

    .line 233
    :goto_4
    move/from16 v4, v23

    .line 235
    :goto_5
    if-ltz v10, :cond_8

    .line 237
    add-int/lit8 v0, v13, 0x1

    .line 239
    if-ne v10, v0, :cond_8

    .line 241
    iget v0, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 243
    iput v0, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineChildTop:I

    .line 245
    :cond_8
    if-ge v13, v10, :cond_a

    .line 247
    iget v0, v15, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 249
    const/4 v1, 0x0

    .line 251
    cmpl-float v0, v0, v1

    .line 252
    if-gtz v0, :cond_9

    .line 254
    goto :goto_6

    .line 256
    :cond_9
    new-instance v0, Ljava/lang/RuntimeException;

    .line 257
    const-string v1, "A child of LinearLayout with index less than mBaselineAlignedChildIndex has weight > 0, which won\'t work.  Either remove the weight, or don\'t set mBaselineAlignedChildIndex."

    .line 259
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 261
    throw v0

    .line 264
    :cond_a
    :goto_6
    move/from16 v0, v30

    .line 265
    const/high16 v1, 0x40000000    # 2.0f

    .line 267
    if-eq v0, v1, :cond_b

    .line 269
    iget v1, v15, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 271
    const/4 v2, -0x1

    .line 273
    if-ne v1, v2, :cond_b

    .line 274
    move/from16 v5, v27

    .line 276
    move/from16 v25, v5

    .line 278
    goto :goto_7

    .line 280
    :cond_b
    const/4 v5, 0x0

    .line 281
    :goto_7
    iget v1, v15, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 282
    iget v2, v15, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 284
    add-int/2addr v1, v2

    .line 286
    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getMeasuredWidth()I

    .line 287
    move-result v2

    .line 290
    add-int/2addr v2, v1

    .line 291
    move/from16 v3, v21

    .line 292
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    .line 294
    move-result v3

    .line 297
    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getMeasuredState()I

    .line 298
    move-result v12

    .line 301
    move/from16 v14, v18

    .line 302
    invoke-static {v14, v12}, Landroid/view/View;->combineMeasuredStates(II)I

    .line 304
    move-result v12

    .line 307
    if-eqz v24, :cond_c

    .line 308
    iget v14, v15, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 310
    const/4 v11, -0x1

    .line 312
    if-ne v14, v11, :cond_c

    .line 313
    move/from16 v11, v27

    .line 315
    goto :goto_8

    .line 317
    :cond_c
    const/4 v11, 0x0

    .line 318
    :goto_8
    iget v14, v15, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 319
    const/4 v15, 0x0

    .line 321
    cmpl-float v14, v14, v15

    .line 322
    if-lez v14, :cond_e

    .line 324
    if-eqz v5, :cond_d

    .line 326
    goto :goto_9

    .line 328
    :cond_d
    move v1, v2

    .line 329
    :goto_9
    move/from16 v15, v20

    .line 330
    invoke-static {v15, v1}, Ljava/lang/Math;->max(II)I

    .line 332
    move-result v20

    .line 335
    goto :goto_b

    .line 336
    :cond_e
    move/from16 v15, v20

    .line 337
    if-eqz v5, :cond_f

    .line 339
    goto :goto_a

    .line 341
    :cond_f
    move v1, v2

    .line 342
    :goto_a
    move/from16 v2, v17

    .line 343
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    .line 345
    move-result v17

    .line 348
    move/from16 v20, v15

    .line 349
    :goto_b
    add-int/lit8 v13, v13, 0x0

    .line 351
    move/from16 v21, v3

    .line 353
    move/from16 v23, v4

    .line 355
    move/from16 v24, v11

    .line 357
    :goto_c
    add-int/lit8 v13, v13, 0x1

    .line 359
    move v2, v0

    .line 361
    move v0, v10

    .line 362
    move/from16 v18, v12

    .line 363
    move/from16 v4, v27

    .line 365
    move/from16 v1, v29

    .line 367
    move/from16 v3, v31

    .line 369
    const/4 v5, 0x0

    .line 371
    const/4 v10, -0x2

    .line 372
    const/high16 v11, -0x80000000

    .line 373
    const/16 v12, 0x8

    .line 375
    const/high16 v14, 0x40000000    # 2.0f

    .line 377
    const/4 v15, 0x0

    .line 379
    goto/16 :goto_0

    .line 380
    :cond_10
    move/from16 v29, v1

    .line 382
    move v0, v2

    .line 384
    move/from16 v31, v3

    .line 385
    move/from16 v27, v4

    .line 387
    move/from16 v2, v17

    .line 389
    move/from16 v14, v18

    .line 391
    move/from16 v5, v19

    .line 393
    move/from16 v15, v20

    .line 395
    move/from16 v3, v21

    .line 397
    iget v1, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 399
    move/from16 v10, v31

    .line 401
    if-lez v1, :cond_11

    .line 403
    invoke-virtual {v6, v10}, Landroidx/appcompat/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    .line 405
    move-result v1

    .line 408
    if-eqz v1, :cond_11

    .line 409
    iget v1, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 411
    iget v4, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerHeight:I

    .line 413
    add-int/2addr v1, v4

    .line 415
    iput v1, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 416
    :cond_11
    move/from16 v1, v29

    .line 418
    if-eqz v9, :cond_15

    .line 420
    const/high16 v4, -0x80000000

    .line 422
    if-eq v1, v4, :cond_12

    .line 424
    if-nez v1, :cond_15

    .line 426
    :cond_12
    const/4 v4, 0x0

    .line 428
    iput v4, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 429
    move v11, v4

    .line 431
    :goto_d
    if-ge v11, v10, :cond_15

    .line 432
    invoke-virtual {v6, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 434
    move-result-object v12

    .line 437
    if-nez v12, :cond_13

    .line 438
    iget v12, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 440
    add-int/2addr v12, v4

    .line 442
    iput v12, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 443
    goto :goto_e

    .line 445
    :cond_13
    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    .line 446
    move-result v4

    .line 449
    const/16 v13, 0x8

    .line 450
    if-ne v4, v13, :cond_14

    .line 452
    add-int/lit8 v11, v11, 0x0

    .line 454
    goto :goto_e

    .line 456
    :cond_14
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 457
    move-result-object v4

    .line 460
    check-cast v4, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 461
    iget v12, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 463
    add-int v19, v12, v5

    .line 465
    iget v13, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 467
    add-int v19, v19, v13

    .line 469
    iget v4, v4, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 471
    add-int v19, v19, v4

    .line 473
    const/4 v4, 0x0

    .line 475
    add-int/lit8 v13, v19, 0x0

    .line 476
    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    .line 478
    move-result v4

    .line 481
    iput v4, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 482
    :goto_e
    add-int/lit8 v11, v11, 0x1

    .line 484
    const/4 v4, 0x0

    .line 486
    goto :goto_d

    .line 487
    :cond_15
    iget v4, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 488
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    .line 490
    move-result v11

    .line 493
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    .line 494
    move-result v12

    .line 497
    add-int/2addr v12, v11

    .line 498
    add-int/2addr v12, v4

    .line 499
    iput v12, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 500
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getSuggestedMinimumHeight()I

    .line 502
    move-result v4

    .line 505
    invoke-static {v12, v4}, Ljava/lang/Math;->max(II)I

    .line 506
    move-result v4

    .line 509
    const/4 v11, 0x0

    .line 510
    invoke-static {v4, v8, v11}, Landroid/view/View;->resolveSizeAndState(III)I

    .line 511
    move-result v4

    .line 514
    const v11, 0xffffff

    .line 515
    and-int/2addr v11, v4

    .line 518
    iget v12, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 519
    sub-int/2addr v11, v12

    .line 521
    if-nez v23, :cond_1a

    .line 522
    if-eqz v11, :cond_16

    .line 524
    const/4 v12, 0x0

    .line 526
    cmpl-float v13, v22, v12

    .line 527
    if-lez v13, :cond_16

    .line 529
    goto :goto_12

    .line 531
    :cond_16
    invoke-static {v2, v15}, Ljava/lang/Math;->max(II)I

    .line 532
    move-result v2

    .line 535
    if-eqz v9, :cond_19

    .line 536
    const/high16 v9, 0x40000000    # 2.0f

    .line 538
    if-eq v1, v9, :cond_19

    .line 540
    const/4 v1, 0x0

    .line 542
    :goto_f
    if-ge v1, v10, :cond_19

    .line 543
    invoke-virtual {v6, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 545
    move-result-object v9

    .line 548
    if-eqz v9, :cond_18

    .line 549
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    .line 551
    move-result v11

    .line 554
    const/16 v12, 0x8

    .line 555
    if-ne v11, v12, :cond_17

    .line 557
    goto :goto_10

    .line 559
    :cond_17
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 560
    move-result-object v11

    .line 563
    check-cast v11, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 564
    iget v11, v11, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 566
    const/4 v12, 0x0

    .line 568
    cmpl-float v11, v11, v12

    .line 569
    if-lez v11, :cond_18

    .line 571
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    .line 573
    move-result v11

    .line 576
    const/high16 v12, 0x40000000    # 2.0f

    .line 577
    invoke-static {v11, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 579
    move-result v11

    .line 582
    invoke-static {v5, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 583
    move-result v13

    .line 586
    invoke-virtual {v9, v11, v13}, Landroid/view/View;->measure(II)V

    .line 587
    :cond_18
    :goto_10
    add-int/lit8 v1, v1, 0x1

    .line 590
    goto :goto_f

    .line 592
    :cond_19
    :goto_11
    move/from16 v21, v3

    .line 593
    goto/16 :goto_1b

    .line 595
    :cond_1a
    :goto_12
    iget v5, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mWeightSum:F

    .line 597
    const/4 v9, 0x0

    .line 599
    cmpl-float v12, v5, v9

    .line 600
    if-lez v12, :cond_1b

    .line 602
    move/from16 v22, v5

    .line 604
    :cond_1b
    const/4 v5, 0x0

    .line 606
    iput v5, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 607
    const/4 v5, 0x0

    .line 609
    :goto_13
    if-ge v5, v10, :cond_26

    .line 610
    invoke-virtual {v6, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 612
    move-result-object v9

    .line 615
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    .line 616
    move-result v12

    .line 619
    const/16 v13, 0x8

    .line 620
    if-ne v12, v13, :cond_1c

    .line 622
    move/from16 v29, v1

    .line 624
    goto/16 :goto_1a

    .line 626
    :cond_1c
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 628
    move-result-object v12

    .line 631
    check-cast v12, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 632
    iget v13, v12, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 634
    const/4 v15, 0x0

    .line 636
    cmpl-float v16, v13, v15

    .line 637
    if-lez v16, :cond_21

    .line 639
    int-to-float v15, v11

    .line 641
    mul-float/2addr v15, v13

    .line 642
    div-float v15, v15, v22

    .line 643
    float-to-int v15, v15

    .line 645
    sub-float v22, v22, v13

    .line 646
    sub-int/2addr v11, v15

    .line 648
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    .line 649
    move-result v13

    .line 652
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    .line 653
    move-result v16

    .line 656
    add-int v16, v16, v13

    .line 657
    iget v13, v12, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 659
    add-int v16, v16, v13

    .line 661
    iget v13, v12, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 663
    add-int v13, v16, v13

    .line 665
    move/from16 v16, v11

    .line 667
    iget v11, v12, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 669
    invoke-static {v7, v13, v11}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 671
    move-result v11

    .line 674
    iget v13, v12, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 675
    if-nez v13, :cond_1f

    .line 677
    const/high16 v13, 0x40000000    # 2.0f

    .line 679
    if-eq v1, v13, :cond_1d

    .line 681
    goto :goto_15

    .line 683
    :cond_1d
    if-lez v15, :cond_1e

    .line 684
    goto :goto_14

    .line 686
    :cond_1e
    const/4 v15, 0x0

    .line 687
    :goto_14
    invoke-static {v15, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 688
    move-result v15

    .line 691
    invoke-virtual {v9, v11, v15}, Landroid/view/View;->measure(II)V

    .line 692
    goto :goto_16

    .line 695
    :cond_1f
    const/high16 v13, 0x40000000    # 2.0f

    .line 696
    :goto_15
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    .line 698
    move-result v17

    .line 701
    add-int v15, v17, v15

    .line 702
    if-gez v15, :cond_20

    .line 704
    const/4 v15, 0x0

    .line 706
    :cond_20
    invoke-static {v15, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 707
    move-result v15

    .line 710
    invoke-virtual {v9, v11, v15}, Landroid/view/View;->measure(II)V

    .line 711
    :goto_16
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredState()I

    .line 714
    move-result v11

    .line 717
    and-int/lit16 v11, v11, -0x100

    .line 718
    invoke-static {v14, v11}, Landroid/view/View;->combineMeasuredStates(II)I

    .line 720
    move-result v14

    .line 723
    move/from16 v11, v16

    .line 724
    :cond_21
    iget v13, v12, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 726
    iget v15, v12, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 728
    add-int/2addr v13, v15

    .line 730
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    .line 731
    move-result v15

    .line 734
    add-int/2addr v15, v13

    .line 735
    invoke-static {v3, v15}, Ljava/lang/Math;->max(II)I

    .line 736
    move-result v3

    .line 739
    move/from16 v29, v1

    .line 740
    const/high16 v1, 0x40000000    # 2.0f

    .line 742
    if-eq v0, v1, :cond_22

    .line 744
    iget v1, v12, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 746
    move/from16 v16, v3

    .line 748
    const/4 v3, -0x1

    .line 750
    if-ne v1, v3, :cond_23

    .line 751
    move/from16 v1, v27

    .line 753
    goto :goto_17

    .line 755
    :cond_22
    move/from16 v16, v3

    .line 756
    const/4 v3, -0x1

    .line 758
    :cond_23
    const/4 v1, 0x0

    .line 759
    :goto_17
    if-eqz v1, :cond_24

    .line 760
    goto :goto_18

    .line 762
    :cond_24
    move v13, v15

    .line 763
    :goto_18
    invoke-static {v2, v13}, Ljava/lang/Math;->max(II)I

    .line 764
    move-result v1

    .line 767
    if-eqz v24, :cond_25

    .line 768
    iget v2, v12, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 770
    if-ne v2, v3, :cond_25

    .line 772
    move/from16 v2, v27

    .line 774
    goto :goto_19

    .line 776
    :cond_25
    const/4 v2, 0x0

    .line 777
    :goto_19
    iget v3, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 778
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    .line 780
    move-result v9

    .line 783
    add-int/2addr v9, v3

    .line 784
    iget v13, v12, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 785
    add-int/2addr v9, v13

    .line 787
    iget v12, v12, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 788
    add-int/2addr v9, v12

    .line 790
    const/4 v12, 0x0

    .line 791
    add-int/2addr v9, v12

    .line 792
    invoke-static {v3, v9}, Ljava/lang/Math;->max(II)I

    .line 793
    move-result v3

    .line 796
    iput v3, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 797
    move/from16 v24, v2

    .line 799
    move/from16 v3, v16

    .line 801
    move v2, v1

    .line 803
    :goto_1a
    add-int/lit8 v5, v5, 0x1

    .line 804
    move/from16 v1, v29

    .line 806
    goto/16 :goto_13

    .line 808
    :cond_26
    iget v1, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 810
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    .line 812
    move-result v5

    .line 815
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    .line 816
    move-result v9

    .line 819
    add-int/2addr v9, v5

    .line 820
    add-int/2addr v9, v1

    .line 821
    iput v9, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 822
    goto/16 :goto_11

    .line 824
    :goto_1b
    if-nez v24, :cond_27

    .line 826
    const/high16 v1, 0x40000000    # 2.0f

    .line 828
    if-eq v0, v1, :cond_27

    .line 830
    goto :goto_1c

    .line 832
    :cond_27
    move/from16 v2, v21

    .line 833
    :goto_1c
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    .line 835
    move-result v0

    .line 838
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    .line 839
    move-result v1

    .line 842
    add-int/2addr v1, v0

    .line 843
    add-int/2addr v1, v2

    .line 844
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getSuggestedMinimumWidth()I

    .line 845
    move-result v0

    .line 848
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 849
    move-result v0

    .line 852
    invoke-static {v0, v7, v14}, Landroid/view/View;->resolveSizeAndState(III)I

    .line 853
    move-result v0

    .line 856
    invoke-virtual {v6, v0, v4}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    .line 857
    if-eqz v25, :cond_63

    .line 860
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    .line 862
    move-result v0

    .line 865
    const/high16 v1, 0x40000000    # 2.0f

    .line 866
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 868
    move-result v7

    .line 871
    const/4 v9, 0x0

    .line 872
    :goto_1d
    if-ge v9, v10, :cond_63

    .line 873
    invoke-virtual {v6, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 875
    move-result-object v1

    .line 878
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 879
    move-result v0

    .line 882
    const/16 v2, 0x8

    .line 883
    if-eq v0, v2, :cond_28

    .line 885
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 887
    move-result-object v0

    .line 890
    move-object v11, v0

    .line 891
    check-cast v11, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 892
    iget v0, v11, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 894
    const/4 v2, -0x1

    .line 896
    if-ne v0, v2, :cond_28

    .line 897
    iget v12, v11, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 899
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    .line 901
    move-result v0

    .line 904
    iput v0, v11, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 905
    const/4 v3, 0x0

    .line 907
    const/4 v5, 0x0

    .line 908
    move-object/from16 v0, p0

    .line 909
    move v2, v7

    .line 911
    move/from16 v4, p2

    .line 912
    invoke-virtual/range {v0 .. v5}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 914
    iput v12, v11, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 917
    :cond_28
    add-int/lit8 v9, v9, 0x1

    .line 919
    goto :goto_1d

    .line 921
    :cond_29
    move/from16 v27, v4

    .line 922
    move v0, v5

    .line 924
    iput v0, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 925
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildCount()I

    .line 927
    move-result v9

    .line 930
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 931
    move-result v10

    .line 934
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 935
    move-result v11

    .line 938
    iget-object v0, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mMaxAscent:[I

    .line 939
    const/4 v12, 0x4

    .line 941
    if-eqz v0, :cond_2a

    .line 942
    iget-object v0, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mMaxDescent:[I

    .line 944
    if-nez v0, :cond_2b

    .line 946
    :cond_2a
    new-array v0, v12, [I

    .line 948
    iput-object v0, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mMaxAscent:[I

    .line 950
    new-array v0, v12, [I

    .line 952
    iput-object v0, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mMaxDescent:[I

    .line 954
    :cond_2b
    iget-object v13, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mMaxAscent:[I

    .line 956
    iget-object v14, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mMaxDescent:[I

    .line 958
    const/4 v15, 0x3

    .line 960
    const/4 v0, -0x1

    .line 961
    aput v0, v13, v15

    .line 962
    const/16 v17, 0x2

    .line 964
    aput v0, v13, v17

    .line 966
    aput v0, v13, v27

    .line 968
    const/4 v1, 0x0

    .line 970
    aput v0, v13, v1

    .line 971
    aput v0, v14, v15

    .line 973
    aput v0, v14, v17

    .line 975
    aput v0, v14, v27

    .line 977
    aput v0, v14, v1

    .line 979
    iget-boolean v5, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineAligned:Z

    .line 981
    iget-boolean v4, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mUseLargestChild:Z

    .line 983
    const/high16 v0, 0x40000000    # 2.0f

    .line 985
    if-ne v10, v0, :cond_2c

    .line 987
    move/from16 v19, v27

    .line 989
    goto :goto_1e

    .line 991
    :cond_2c
    const/16 v19, 0x0

    .line 992
    :goto_1e
    move/from16 v20, v27

    .line 994
    const/4 v0, 0x0

    .line 996
    const/4 v1, 0x0

    .line 997
    const/4 v2, 0x0

    .line 998
    const/4 v3, 0x0

    .line 999
    const/4 v12, 0x0

    .line 1000
    const/4 v15, 0x0

    .line 1001
    const/16 v22, 0x0

    .line 1002
    const/16 v23, 0x0

    .line 1004
    const/16 v32, 0x0

    .line 1006
    :goto_1f
    if-ge v3, v9, :cond_40

    .line 1008
    invoke-virtual {v6, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 1010
    move-result-object v8

    .line 1013
    if-nez v8, :cond_2d

    .line 1014
    iget v8, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1016
    const/16 v25, 0x0

    .line 1018
    add-int/lit8 v8, v8, 0x0

    .line 1020
    iput v8, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1022
    move/from16 v25, v0

    .line 1024
    move/from16 v26, v2

    .line 1026
    goto :goto_20

    .line 1028
    :cond_2d
    move/from16 v25, v0

    .line 1029
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    .line 1031
    move-result v0

    .line 1034
    move/from16 v26, v2

    .line 1035
    const/16 v2, 0x8

    .line 1037
    if-ne v0, v2, :cond_2e

    .line 1039
    add-int/lit8 v3, v3, 0x0

    .line 1041
    :goto_20
    move/from16 v30, v5

    .line 1043
    move/from16 v0, v25

    .line 1045
    move/from16 v2, v26

    .line 1047
    move/from16 v26, v4

    .line 1049
    goto/16 :goto_2c

    .line 1051
    :cond_2e
    invoke-virtual {v6, v3}, Landroidx/appcompat/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    .line 1053
    move-result v0

    .line 1056
    if-eqz v0, :cond_2f

    .line 1057
    iget v0, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1059
    iget v2, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerWidth:I

    .line 1061
    add-int/2addr v0, v2

    .line 1063
    iput v0, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1064
    :cond_2f
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 1066
    move-result-object v0

    .line 1069
    move-object v2, v0

    .line 1070
    check-cast v2, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 1071
    iget v0, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1073
    add-float v29, v1, v0

    .line 1075
    const/high16 v1, 0x40000000    # 2.0f

    .line 1077
    if-ne v10, v1, :cond_32

    .line 1079
    iget v1, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1081
    if-nez v1, :cond_32

    .line 1083
    const/4 v1, 0x0

    .line 1085
    cmpl-float v30, v0, v1

    .line 1086
    if-lez v30, :cond_32

    .line 1088
    if-eqz v19, :cond_30

    .line 1090
    iget v0, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1092
    iget v1, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1094
    move/from16 v30, v3

    .line 1096
    iget v3, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 1098
    add-int/2addr v1, v3

    .line 1100
    add-int/2addr v1, v0

    .line 1101
    iput v1, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1102
    goto :goto_21

    .line 1104
    :cond_30
    move/from16 v30, v3

    .line 1105
    iget v0, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1107
    iget v1, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1109
    add-int/2addr v1, v0

    .line 1111
    iget v3, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 1112
    add-int/2addr v1, v3

    .line 1114
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 1115
    move-result v0

    .line 1118
    iput v0, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1119
    :goto_21
    if-eqz v5, :cond_31

    .line 1121
    const/4 v0, 0x0

    .line 1123
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 1124
    move-result v1

    .line 1127
    invoke-virtual {v8, v1, v1}, Landroid/view/View;->measure(II)V

    .line 1128
    move-object v1, v2

    .line 1131
    move/from16 v34, v25

    .line 1132
    move/from16 v35, v26

    .line 1134
    move/from16 v25, v30

    .line 1136
    move/from16 v26, v4

    .line 1138
    move/from16 v30, v5

    .line 1140
    goto/16 :goto_26

    .line 1142
    :cond_31
    move-object v1, v2

    .line 1144
    move/from16 v34, v25

    .line 1145
    move/from16 v35, v26

    .line 1147
    move/from16 v25, v30

    .line 1149
    const/high16 v0, 0x40000000    # 2.0f

    .line 1151
    move/from16 v26, v4

    .line 1153
    move/from16 v30, v5

    .line 1155
    move/from16 v4, v27

    .line 1157
    goto/16 :goto_27

    .line 1159
    :cond_32
    move/from16 v30, v3

    .line 1161
    iget v1, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1163
    if-nez v1, :cond_33

    .line 1165
    const/4 v1, 0x0

    .line 1167
    cmpl-float v0, v0, v1

    .line 1168
    if-lez v0, :cond_34

    .line 1170
    const/4 v0, -0x2

    .line 1172
    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1173
    const/4 v3, 0x0

    .line 1175
    goto :goto_22

    .line 1176
    :cond_33
    const/4 v1, 0x0

    .line 1177
    :cond_34
    const/high16 v3, -0x80000000

    .line 1178
    :goto_22
    cmpl-float v0, v29, v1

    .line 1180
    if-nez v0, :cond_35

    .line 1182
    iget v0, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1184
    move/from16 v31, v0

    .line 1186
    goto :goto_23

    .line 1188
    :cond_35
    const/16 v31, 0x0

    .line 1189
    :goto_23
    const/16 v33, 0x0

    .line 1191
    move/from16 v1, v25

    .line 1193
    move-object/from16 v0, p0

    .line 1195
    move/from16 v34, v1

    .line 1197
    move-object v1, v8

    .line 1199
    move-object/from16 v36, v2

    .line 1200
    move/from16 v35, v26

    .line 1202
    move/from16 v2, p1

    .line 1204
    move/from16 v37, v3

    .line 1206
    move/from16 v25, v30

    .line 1208
    move/from16 v3, v31

    .line 1210
    move/from16 v26, v4

    .line 1212
    move/from16 v4, p2

    .line 1214
    move/from16 v30, v5

    .line 1216
    move/from16 v5, v33

    .line 1218
    invoke-virtual/range {v0 .. v5}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 1220
    move/from16 v0, v37

    .line 1223
    const/high16 v1, -0x80000000

    .line 1225
    if-eq v0, v1, :cond_36

    .line 1227
    move-object/from16 v1, v36

    .line 1229
    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1231
    goto :goto_24

    .line 1233
    :cond_36
    move-object/from16 v1, v36

    .line 1234
    :goto_24
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    .line 1236
    move-result v0

    .line 1239
    if-eqz v19, :cond_37

    .line 1240
    iget v2, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1242
    iget v3, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1244
    add-int/2addr v3, v0

    .line 1246
    iget v4, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 1247
    add-int/2addr v3, v4

    .line 1249
    const/4 v4, 0x0

    .line 1250
    add-int/2addr v3, v4

    .line 1251
    add-int/2addr v3, v2

    .line 1252
    iput v3, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1253
    goto :goto_25

    .line 1255
    :cond_37
    const/4 v4, 0x0

    .line 1256
    iget v2, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1257
    add-int v3, v2, v0

    .line 1259
    iget v5, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1261
    add-int/2addr v3, v5

    .line 1263
    iget v5, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 1264
    add-int/2addr v3, v5

    .line 1266
    add-int/2addr v3, v4

    .line 1267
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    .line 1268
    move-result v2

    .line 1271
    iput v2, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1272
    :goto_25
    if-eqz v26, :cond_38

    .line 1274
    invoke-static {v0, v12}, Ljava/lang/Math;->max(II)I

    .line 1276
    move-result v12

    .line 1279
    :cond_38
    :goto_26
    move/from16 v4, v22

    .line 1280
    const/high16 v0, 0x40000000    # 2.0f

    .line 1282
    :goto_27
    if-eq v11, v0, :cond_39

    .line 1284
    iget v0, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 1286
    const/4 v2, -0x1

    .line 1288
    if-ne v0, v2, :cond_39

    .line 1289
    move/from16 v5, v27

    .line 1291
    move/from16 v23, v5

    .line 1293
    goto :goto_28

    .line 1295
    :cond_39
    const/4 v5, 0x0

    .line 1296
    :goto_28
    iget v0, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1297
    iget v2, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 1299
    add-int/2addr v0, v2

    .line 1301
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    .line 1302
    move-result v2

    .line 1305
    add-int/2addr v2, v0

    .line 1306
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredState()I

    .line 1307
    move-result v3

    .line 1310
    invoke-static {v15, v3}, Landroid/view/View;->combineMeasuredStates(II)I

    .line 1311
    move-result v3

    .line 1314
    if-eqz v30, :cond_3b

    .line 1315
    invoke-virtual {v8}, Landroid/view/View;->getBaseline()I

    .line 1317
    move-result v8

    .line 1320
    const/4 v15, -0x1

    .line 1321
    if-eq v8, v15, :cond_3b

    .line 1322
    iget v15, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 1324
    if-gez v15, :cond_3a

    .line 1326
    iget v15, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mGravity:I

    .line 1328
    :cond_3a
    and-int/lit8 v15, v15, 0x70

    .line 1330
    const/16 v22, 0x4

    .line 1332
    shr-int/lit8 v15, v15, 0x4

    .line 1334
    const/16 v22, -0x2

    .line 1336
    and-int/lit8 v15, v15, -0x2

    .line 1338
    shr-int/lit8 v15, v15, 0x1

    .line 1340
    move/from16 v22, v0

    .line 1342
    aget v0, v13, v15

    .line 1344
    invoke-static {v0, v8}, Ljava/lang/Math;->max(II)I

    .line 1346
    move-result v0

    .line 1349
    aput v0, v13, v15

    .line 1350
    aget v0, v14, v15

    .line 1352
    sub-int v8, v2, v8

    .line 1354
    invoke-static {v0, v8}, Ljava/lang/Math;->max(II)I

    .line 1356
    move-result v0

    .line 1359
    aput v0, v14, v15

    .line 1360
    goto :goto_29

    .line 1362
    :cond_3b
    move/from16 v22, v0

    .line 1363
    :goto_29
    move/from16 v0, v32

    .line 1365
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    .line 1367
    move-result v0

    .line 1370
    if-eqz v20, :cond_3c

    .line 1371
    iget v8, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 1373
    const/4 v15, -0x1

    .line 1375
    if-ne v8, v15, :cond_3c

    .line 1376
    move/from16 v8, v27

    .line 1378
    goto :goto_2a

    .line 1380
    :cond_3c
    const/4 v8, 0x0

    .line 1381
    :goto_2a
    iget v1, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1382
    const/4 v15, 0x0

    .line 1384
    cmpl-float v1, v1, v15

    .line 1385
    if-lez v1, :cond_3e

    .line 1387
    if-eqz v5, :cond_3d

    .line 1389
    move/from16 v2, v22

    .line 1391
    :cond_3d
    move/from16 v1, v35

    .line 1393
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 1395
    move-result v2

    .line 1398
    move v1, v2

    .line 1399
    move/from16 v2, v34

    .line 1400
    goto :goto_2b

    .line 1402
    :cond_3e
    move/from16 v1, v35

    .line 1403
    if-eqz v5, :cond_3f

    .line 1405
    move/from16 v2, v22

    .line 1407
    :cond_3f
    move/from16 v5, v34

    .line 1409
    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    .line 1411
    move-result v2

    .line 1414
    :goto_2b
    add-int/lit8 v5, v25, 0x0

    .line 1415
    move/from16 v32, v0

    .line 1417
    move v0, v2

    .line 1419
    move v15, v3

    .line 1420
    move/from16 v22, v4

    .line 1421
    move v3, v5

    .line 1423
    move/from16 v20, v8

    .line 1424
    move v2, v1

    .line 1426
    move/from16 v1, v29

    .line 1427
    :goto_2c
    add-int/lit8 v3, v3, 0x1

    .line 1429
    move/from16 v8, p2

    .line 1431
    move/from16 v4, v26

    .line 1433
    move/from16 v5, v30

    .line 1435
    goto/16 :goto_1f

    .line 1437
    :cond_40
    move/from16 v26, v4

    .line 1439
    move/from16 v30, v5

    .line 1441
    move v5, v0

    .line 1443
    move/from16 v0, v32

    .line 1444
    iget v3, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1446
    if-lez v3, :cond_41

    .line 1448
    invoke-virtual {v6, v9}, Landroidx/appcompat/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    .line 1450
    move-result v3

    .line 1453
    if-eqz v3, :cond_41

    .line 1454
    iget v3, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1456
    iget v4, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerWidth:I

    .line 1458
    add-int/2addr v3, v4

    .line 1460
    iput v3, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1461
    :cond_41
    aget v3, v13, v27

    .line 1463
    const/4 v4, -0x1

    .line 1465
    move/from16 v25, v15

    .line 1466
    if-ne v3, v4, :cond_43

    .line 1468
    const/4 v8, 0x0

    .line 1470
    aget v15, v13, v8

    .line 1471
    if-ne v15, v4, :cond_43

    .line 1473
    aget v8, v13, v17

    .line 1475
    if-ne v8, v4, :cond_43

    .line 1477
    const/4 v8, 0x3

    .line 1479
    aget v15, v13, v8

    .line 1480
    if-eq v15, v4, :cond_42

    .line 1482
    goto :goto_2d

    .line 1484
    :cond_42
    move/from16 v32, v0

    .line 1485
    move/from16 v29, v11

    .line 1487
    goto :goto_2e

    .line 1489
    :cond_43
    const/4 v8, 0x3

    .line 1490
    :goto_2d
    aget v4, v13, v8

    .line 1491
    const/4 v15, 0x0

    .line 1493
    aget v8, v13, v15

    .line 1494
    aget v15, v13, v17

    .line 1496
    invoke-static {v3, v15}, Ljava/lang/Math;->max(II)I

    .line 1498
    move-result v3

    .line 1501
    invoke-static {v8, v3}, Ljava/lang/Math;->max(II)I

    .line 1502
    move-result v3

    .line 1505
    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    .line 1506
    move-result v3

    .line 1509
    const/4 v4, 0x3

    .line 1510
    aget v8, v14, v4

    .line 1511
    const/4 v4, 0x0

    .line 1513
    aget v15, v14, v4

    .line 1514
    aget v4, v14, v27

    .line 1516
    move/from16 v29, v11

    .line 1518
    aget v11, v14, v17

    .line 1520
    invoke-static {v4, v11}, Ljava/lang/Math;->max(II)I

    .line 1522
    move-result v4

    .line 1525
    invoke-static {v15, v4}, Ljava/lang/Math;->max(II)I

    .line 1526
    move-result v4

    .line 1529
    invoke-static {v8, v4}, Ljava/lang/Math;->max(II)I

    .line 1530
    move-result v4

    .line 1533
    add-int/2addr v4, v3

    .line 1534
    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    .line 1535
    move-result v32

    .line 1538
    :goto_2e
    if-eqz v26, :cond_48

    .line 1539
    const/high16 v0, -0x80000000

    .line 1541
    if-eq v10, v0, :cond_44

    .line 1543
    if-nez v10, :cond_48

    .line 1545
    :cond_44
    const/4 v0, 0x0

    .line 1547
    iput v0, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1548
    move v3, v0

    .line 1550
    :goto_2f
    if-ge v3, v9, :cond_48

    .line 1551
    invoke-virtual {v6, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 1553
    move-result-object v4

    .line 1556
    if-nez v4, :cond_45

    .line 1557
    iget v4, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1559
    add-int/2addr v4, v0

    .line 1561
    iput v4, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1562
    goto :goto_30

    .line 1564
    :cond_45
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    .line 1565
    move-result v0

    .line 1568
    const/16 v8, 0x8

    .line 1569
    if-ne v0, v8, :cond_46

    .line 1571
    add-int/lit8 v3, v3, 0x0

    .line 1573
    goto :goto_30

    .line 1575
    :cond_46
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 1576
    move-result-object v0

    .line 1579
    check-cast v0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 1580
    if-eqz v19, :cond_47

    .line 1582
    iget v4, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1584
    iget v8, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1586
    add-int/2addr v8, v12

    .line 1588
    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 1589
    add-int/2addr v8, v0

    .line 1591
    const/4 v11, 0x0

    .line 1592
    add-int/2addr v8, v11

    .line 1593
    add-int/2addr v8, v4

    .line 1594
    iput v8, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1595
    goto :goto_30

    .line 1597
    :cond_47
    const/4 v11, 0x0

    .line 1598
    iget v4, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1599
    add-int v8, v4, v12

    .line 1601
    iget v15, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1603
    add-int/2addr v8, v15

    .line 1605
    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 1606
    add-int/2addr v8, v0

    .line 1608
    add-int/2addr v8, v11

    .line 1609
    invoke-static {v4, v8}, Ljava/lang/Math;->max(II)I

    .line 1610
    move-result v0

    .line 1613
    iput v0, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1614
    :goto_30
    add-int/lit8 v3, v3, 0x1

    .line 1616
    const/4 v0, 0x0

    .line 1618
    goto :goto_2f

    .line 1619
    :cond_48
    iget v0, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1620
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    .line 1622
    move-result v3

    .line 1625
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    .line 1626
    move-result v4

    .line 1629
    add-int/2addr v4, v3

    .line 1630
    add-int/2addr v4, v0

    .line 1631
    iput v4, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1632
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getSuggestedMinimumWidth()I

    .line 1634
    move-result v0

    .line 1637
    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    .line 1638
    move-result v0

    .line 1641
    const/4 v3, 0x0

    .line 1642
    invoke-static {v0, v7, v3}, Landroid/view/View;->resolveSizeAndState(III)I

    .line 1643
    move-result v0

    .line 1646
    const v3, 0xffffff

    .line 1647
    and-int/2addr v3, v0

    .line 1650
    iget v4, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1651
    sub-int/2addr v3, v4

    .line 1653
    if-nez v22, :cond_4d

    .line 1654
    if-eqz v3, :cond_49

    .line 1656
    const/4 v8, 0x0

    .line 1658
    cmpl-float v11, v1, v8

    .line 1659
    if-lez v11, :cond_49

    .line 1661
    goto :goto_33

    .line 1663
    :cond_49
    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    .line 1664
    move-result v1

    .line 1667
    if-eqz v26, :cond_4c

    .line 1668
    const/high16 v2, 0x40000000    # 2.0f

    .line 1670
    if-eq v10, v2, :cond_4c

    .line 1672
    const/4 v5, 0x0

    .line 1674
    :goto_31
    if-ge v5, v9, :cond_4c

    .line 1675
    invoke-virtual {v6, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 1677
    move-result-object v2

    .line 1680
    if-eqz v2, :cond_4b

    .line 1681
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    .line 1683
    move-result v3

    .line 1686
    const/16 v8, 0x8

    .line 1687
    if-ne v3, v8, :cond_4a

    .line 1689
    goto :goto_32

    .line 1691
    :cond_4a
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 1692
    move-result-object v3

    .line 1695
    check-cast v3, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 1696
    iget v3, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1698
    const/4 v8, 0x0

    .line 1700
    cmpl-float v3, v3, v8

    .line 1701
    if-lez v3, :cond_4b

    .line 1703
    const/high16 v3, 0x40000000    # 2.0f

    .line 1705
    invoke-static {v12, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 1707
    move-result v8

    .line 1710
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    .line 1711
    move-result v10

    .line 1714
    invoke-static {v10, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 1715
    move-result v10

    .line 1718
    invoke-virtual {v2, v8, v10}, Landroid/view/View;->measure(II)V

    .line 1719
    :cond_4b
    :goto_32
    add-int/lit8 v5, v5, 0x1

    .line 1722
    goto :goto_31

    .line 1724
    :cond_4c
    move/from16 v3, p2

    .line 1725
    move/from16 v15, v25

    .line 1727
    move/from16 v12, v29

    .line 1729
    const/4 v8, 0x0

    .line 1731
    goto/16 :goto_42

    .line 1732
    :cond_4d
    :goto_33
    iget v2, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mWeightSum:F

    .line 1734
    const/4 v8, 0x0

    .line 1736
    cmpl-float v11, v2, v8

    .line 1737
    if-lez v11, :cond_4e

    .line 1739
    move v1, v2

    .line 1741
    :cond_4e
    const/4 v2, -0x1

    .line 1742
    const/4 v8, 0x3

    .line 1743
    aput v2, v13, v8

    .line 1744
    aput v2, v13, v17

    .line 1746
    aput v2, v13, v27

    .line 1748
    const/4 v11, 0x0

    .line 1750
    aput v2, v13, v11

    .line 1751
    aput v2, v14, v8

    .line 1753
    aput v2, v14, v17

    .line 1755
    aput v2, v14, v27

    .line 1757
    aput v2, v14, v11

    .line 1759
    iput v11, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1761
    move/from16 v15, v25

    .line 1763
    const/4 v2, -0x1

    .line 1765
    const/4 v8, 0x0

    .line 1766
    :goto_34
    if-ge v8, v9, :cond_5d

    .line 1767
    invoke-virtual {v6, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 1769
    move-result-object v11

    .line 1772
    if-eqz v11, :cond_5c

    .line 1773
    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    .line 1775
    move-result v12

    .line 1778
    const/16 v4, 0x8

    .line 1779
    if-ne v12, v4, :cond_4f

    .line 1781
    goto/16 :goto_3e

    .line 1783
    :cond_4f
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 1785
    move-result-object v4

    .line 1788
    check-cast v4, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 1789
    iget v12, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1791
    const/16 v18, 0x0

    .line 1793
    cmpl-float v22, v12, v18

    .line 1795
    if-lez v22, :cond_54

    .line 1797
    int-to-float v7, v3

    .line 1799
    mul-float/2addr v7, v12

    .line 1800
    div-float/2addr v7, v1

    .line 1801
    float-to-int v7, v7

    .line 1802
    sub-float/2addr v1, v12

    .line 1803
    sub-int/2addr v3, v7

    .line 1804
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    .line 1805
    move-result v12

    .line 1808
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    .line 1809
    move-result v22

    .line 1812
    add-int v22, v22, v12

    .line 1813
    iget v12, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1815
    add-int v22, v22, v12

    .line 1817
    iget v12, v4, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 1819
    add-int v12, v22, v12

    .line 1821
    move/from16 v22, v1

    .line 1823
    iget v1, v4, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 1825
    move/from16 v25, v3

    .line 1827
    move/from16 v3, p2

    .line 1829
    invoke-static {v3, v12, v1}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 1831
    move-result v1

    .line 1834
    iget v12, v4, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1835
    if-nez v12, :cond_52

    .line 1837
    const/high16 v12, 0x40000000    # 2.0f

    .line 1839
    if-eq v10, v12, :cond_50

    .line 1841
    goto :goto_36

    .line 1843
    :cond_50
    if-lez v7, :cond_51

    .line 1844
    goto :goto_35

    .line 1846
    :cond_51
    const/4 v7, 0x0

    .line 1847
    :goto_35
    invoke-static {v7, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 1848
    move-result v7

    .line 1851
    invoke-virtual {v11, v7, v1}, Landroid/view/View;->measure(II)V

    .line 1852
    goto :goto_37

    .line 1855
    :cond_52
    const/high16 v12, 0x40000000    # 2.0f

    .line 1856
    :goto_36
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    .line 1858
    move-result v26

    .line 1861
    add-int v7, v26, v7

    .line 1862
    if-gez v7, :cond_53

    .line 1864
    const/4 v7, 0x0

    .line 1866
    :cond_53
    invoke-static {v7, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 1867
    move-result v7

    .line 1870
    invoke-virtual {v11, v7, v1}, Landroid/view/View;->measure(II)V

    .line 1871
    :goto_37
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredState()I

    .line 1874
    move-result v1

    .line 1877
    const/high16 v7, -0x1000000

    .line 1878
    and-int/2addr v1, v7

    .line 1880
    invoke-static {v15, v1}, Landroid/view/View;->combineMeasuredStates(II)I

    .line 1881
    move-result v15

    .line 1884
    move/from16 v1, v22

    .line 1885
    move/from16 v7, v25

    .line 1887
    goto :goto_38

    .line 1889
    :cond_54
    move v7, v3

    .line 1890
    move/from16 v3, p2

    .line 1891
    :goto_38
    if-eqz v19, :cond_55

    .line 1893
    iget v12, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1895
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    .line 1897
    move-result v22

    .line 1900
    move/from16 v25, v1

    .line 1901
    iget v1, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1903
    add-int v22, v22, v1

    .line 1905
    iget v1, v4, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 1907
    add-int v22, v22, v1

    .line 1909
    const/4 v1, 0x0

    .line 1911
    add-int/lit8 v22, v22, 0x0

    .line 1912
    add-int v12, v22, v12

    .line 1914
    iput v12, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1916
    move/from16 v26, v7

    .line 1918
    goto :goto_39

    .line 1920
    :cond_55
    move/from16 v25, v1

    .line 1921
    const/4 v1, 0x0

    .line 1923
    iget v12, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1924
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    .line 1926
    move-result v22

    .line 1929
    add-int v22, v22, v12

    .line 1930
    iget v1, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1932
    add-int v22, v22, v1

    .line 1934
    iget v1, v4, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 1936
    add-int v22, v22, v1

    .line 1938
    move/from16 v26, v7

    .line 1940
    const/4 v1, 0x0

    .line 1942
    add-int/lit8 v7, v22, 0x0

    .line 1943
    invoke-static {v12, v7}, Ljava/lang/Math;->max(II)I

    .line 1945
    move-result v1

    .line 1948
    iput v1, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1949
    :goto_39
    move/from16 v12, v29

    .line 1951
    const/high16 v1, 0x40000000    # 2.0f

    .line 1953
    if-eq v12, v1, :cond_56

    .line 1955
    iget v1, v4, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 1957
    const/4 v7, -0x1

    .line 1959
    if-ne v1, v7, :cond_56

    .line 1960
    move/from16 v1, v27

    .line 1962
    goto :goto_3a

    .line 1964
    :cond_56
    const/4 v1, 0x0

    .line 1965
    :goto_3a
    iget v7, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1966
    move/from16 v22, v10

    .line 1968
    iget v10, v4, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 1970
    add-int/2addr v7, v10

    .line 1972
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    .line 1973
    move-result v10

    .line 1976
    add-int/2addr v10, v7

    .line 1977
    invoke-static {v2, v10}, Ljava/lang/Math;->max(II)I

    .line 1978
    move-result v2

    .line 1981
    if-eqz v1, :cond_57

    .line 1982
    goto :goto_3b

    .line 1984
    :cond_57
    move v7, v10

    .line 1985
    :goto_3b
    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    .line 1986
    move-result v1

    .line 1989
    if-eqz v20, :cond_58

    .line 1990
    iget v5, v4, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 1992
    const/4 v7, -0x1

    .line 1994
    if-ne v5, v7, :cond_59

    .line 1995
    move/from16 v5, v27

    .line 1997
    goto :goto_3c

    .line 1999
    :cond_58
    const/4 v7, -0x1

    .line 2000
    :cond_59
    const/4 v5, 0x0

    .line 2001
    :goto_3c
    if-eqz v30, :cond_5b

    .line 2002
    invoke-virtual {v11}, Landroid/view/View;->getBaseline()I

    .line 2004
    move-result v11

    .line 2007
    if-eq v11, v7, :cond_5b

    .line 2008
    iget v4, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 2010
    if-gez v4, :cond_5a

    .line 2012
    iget v4, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mGravity:I

    .line 2014
    :cond_5a
    and-int/lit8 v4, v4, 0x70

    .line 2016
    const/16 v24, 0x4

    .line 2018
    shr-int/lit8 v4, v4, 0x4

    .line 2020
    const/16 v28, -0x2

    .line 2022
    and-int/lit8 v4, v4, -0x2

    .line 2024
    shr-int/lit8 v4, v4, 0x1

    .line 2026
    aget v7, v13, v4

    .line 2028
    invoke-static {v7, v11}, Ljava/lang/Math;->max(II)I

    .line 2030
    move-result v7

    .line 2033
    aput v7, v13, v4

    .line 2034
    aget v7, v14, v4

    .line 2036
    sub-int/2addr v10, v11

    .line 2038
    invoke-static {v7, v10}, Ljava/lang/Math;->max(II)I

    .line 2039
    move-result v7

    .line 2042
    aput v7, v14, v4

    .line 2043
    goto :goto_3d

    .line 2045
    :cond_5b
    const/16 v24, 0x4

    .line 2046
    const/16 v28, -0x2

    .line 2048
    :goto_3d
    move/from16 v20, v5

    .line 2050
    move/from16 v7, v26

    .line 2052
    move v5, v1

    .line 2054
    move/from16 v1, v25

    .line 2055
    goto :goto_3f

    .line 2057
    :cond_5c
    :goto_3e
    move v7, v3

    .line 2058
    move/from16 v22, v10

    .line 2059
    move/from16 v12, v29

    .line 2061
    const/16 v18, 0x0

    .line 2063
    const/16 v24, 0x4

    .line 2065
    const/16 v28, -0x2

    .line 2067
    move/from16 v3, p2

    .line 2069
    :goto_3f
    add-int/lit8 v8, v8, 0x1

    .line 2071
    move v3, v7

    .line 2073
    move/from16 v29, v12

    .line 2074
    move/from16 v10, v22

    .line 2076
    move/from16 v7, p1

    .line 2078
    goto/16 :goto_34

    .line 2080
    :cond_5d
    move/from16 v3, p2

    .line 2082
    move/from16 v12, v29

    .line 2084
    iget v1, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 2086
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    .line 2088
    move-result v4

    .line 2091
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    .line 2092
    move-result v7

    .line 2095
    add-int/2addr v7, v4

    .line 2096
    add-int/2addr v7, v1

    .line 2097
    iput v7, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 2098
    aget v1, v13, v27

    .line 2100
    const/4 v4, -0x1

    .line 2102
    if-ne v1, v4, :cond_5f

    .line 2103
    const/4 v7, 0x0

    .line 2105
    aget v8, v13, v7

    .line 2106
    if-ne v8, v4, :cond_5f

    .line 2108
    aget v7, v13, v17

    .line 2110
    if-ne v7, v4, :cond_5f

    .line 2112
    const/4 v7, 0x3

    .line 2114
    aget v8, v13, v7

    .line 2115
    if-eq v8, v4, :cond_5e

    .line 2117
    goto :goto_40

    .line 2119
    :cond_5e
    move/from16 v32, v2

    .line 2120
    const/4 v8, 0x0

    .line 2122
    goto :goto_41

    .line 2123
    :cond_5f
    const/4 v7, 0x3

    .line 2124
    :goto_40
    aget v4, v13, v7

    .line 2125
    const/4 v8, 0x0

    .line 2127
    aget v10, v13, v8

    .line 2128
    aget v11, v13, v17

    .line 2130
    invoke-static {v1, v11}, Ljava/lang/Math;->max(II)I

    .line 2132
    move-result v1

    .line 2135
    invoke-static {v10, v1}, Ljava/lang/Math;->max(II)I

    .line 2136
    move-result v1

    .line 2139
    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    .line 2140
    move-result v1

    .line 2143
    aget v4, v14, v7

    .line 2144
    aget v7, v14, v8

    .line 2146
    aget v10, v14, v27

    .line 2148
    aget v11, v14, v17

    .line 2150
    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    .line 2152
    move-result v10

    .line 2155
    invoke-static {v7, v10}, Ljava/lang/Math;->max(II)I

    .line 2156
    move-result v7

    .line 2159
    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    .line 2160
    move-result v4

    .line 2163
    add-int/2addr v4, v1

    .line 2164
    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    .line 2165
    move-result v1

    .line 2168
    move/from16 v32, v1

    .line 2169
    :goto_41
    move v1, v5

    .line 2171
    :goto_42
    if-nez v20, :cond_60

    .line 2172
    const/high16 v2, 0x40000000    # 2.0f

    .line 2174
    if-eq v12, v2, :cond_60

    .line 2176
    goto :goto_43

    .line 2178
    :cond_60
    move/from16 v1, v32

    .line 2179
    :goto_43
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    .line 2181
    move-result v2

    .line 2184
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    .line 2185
    move-result v4

    .line 2188
    add-int/2addr v4, v2

    .line 2189
    add-int/2addr v4, v1

    .line 2190
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getSuggestedMinimumHeight()I

    .line 2191
    move-result v1

    .line 2194
    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    .line 2195
    move-result v1

    .line 2198
    const/high16 v2, -0x1000000

    .line 2199
    and-int/2addr v2, v15

    .line 2201
    or-int/2addr v0, v2

    .line 2202
    shl-int/lit8 v2, v15, 0x10

    .line 2203
    invoke-static {v1, v3, v2}, Landroid/view/View;->resolveSizeAndState(III)I

    .line 2205
    move-result v1

    .line 2208
    invoke-virtual {v6, v0, v1}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    .line 2209
    if-eqz v23, :cond_63

    .line 2212
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    .line 2214
    move-result v0

    .line 2217
    const/high16 v1, 0x40000000    # 2.0f

    .line 2218
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 2220
    move-result v7

    .line 2223
    :goto_44
    if-ge v8, v9, :cond_63

    .line 2224
    invoke-virtual {v6, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 2226
    move-result-object v1

    .line 2229
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 2230
    move-result v0

    .line 2233
    const/16 v10, 0x8

    .line 2234
    if-eq v0, v10, :cond_61

    .line 2236
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2238
    move-result-object v0

    .line 2241
    move-object v11, v0

    .line 2242
    check-cast v11, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 2243
    iget v0, v11, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 2245
    const/4 v12, -0x1

    .line 2247
    if-ne v0, v12, :cond_62

    .line 2248
    iget v13, v11, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 2250
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    .line 2252
    move-result v0

    .line 2255
    iput v0, v11, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 2256
    const/4 v3, 0x0

    .line 2258
    const/4 v5, 0x0

    .line 2259
    move-object/from16 v0, p0

    .line 2260
    move/from16 v2, p1

    .line 2262
    move v4, v7

    .line 2264
    invoke-virtual/range {v0 .. v5}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 2265
    iput v13, v11, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 2268
    goto :goto_45

    .line 2270
    :cond_61
    const/4 v12, -0x1

    .line 2271
    :cond_62
    :goto_45
    add-int/lit8 v8, v8, 0x1

    .line 2272
    goto :goto_44

    .line 2274
    :cond_63
    return-void
    .line 2275
.end method

.method public setBaselineAligned(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineAligned:Z

    .line 2
    return-void
    .line 4
.end method

.method public setBaselineAlignedChildIndex(I)V
    .locals 2

    .line 1
    if-ltz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 4
    move-result v0

    .line 7
    if-ge p1, v0, :cond_0

    .line 8
    iput p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    .line 10
    return-void

    .line 12
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    const-string v1, "base aligned child index out of range (0, "

    .line 17
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 22
    move-result p0

    .line 25
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    const-string p0, ")"

    .line 29
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    move-result-object p0

    .line 37
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 38
    throw p1
    .line 41
.end method

.method public setDividerDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 2
    if-ne p1, v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    iput-object p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 7
    const/4 v0, 0x0

    .line 9
    if-eqz p1, :cond_1

    .line 10
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 12
    move-result v1

    .line 15
    iput v1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerWidth:I

    .line 16
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 18
    move-result v1

    .line 21
    iput v1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerHeight:I

    .line 22
    goto :goto_0

    .line 24
    :cond_1
    iput v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerWidth:I

    .line 25
    iput v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerHeight:I

    .line 27
    :goto_0
    if-nez p1, :cond_2

    .line 29
    const/4 v0, 0x1

    .line 31
    :cond_2
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setWillNotDraw(Z)V

    .line 32
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 35
    return-void
    .line 38
.end method

.method public setDividerPadding(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerPadding:I

    .line 2
    return-void
    .line 4
.end method

.method public setGravity(I)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mGravity:I

    .line 2
    if-eq v0, p1, :cond_2

    .line 4
    const v0, 0x800007

    .line 6
    and-int/2addr v0, p1

    .line 9
    if-nez v0, :cond_0

    .line 10
    const v0, 0x800003

    .line 12
    or-int/2addr p1, v0

    .line 15
    :cond_0
    and-int/lit8 v0, p1, 0x70

    .line 16
    if-nez v0, :cond_1

    .line 18
    or-int/lit8 p1, p1, 0x30

    .line 20
    :cond_1
    iput p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mGravity:I

    .line 22
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 24
    :cond_2
    return-void
    .line 27
.end method

.method public setHorizontalGravity(I)V
    .locals 2

    .line 1
    const v0, 0x800007

    .line 2
    and-int/2addr p1, v0

    .line 5
    iget v1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mGravity:I

    .line 6
    and-int/2addr v0, v1

    .line 8
    if-eq v0, p1, :cond_0

    .line 9
    const v0, -0x800008

    .line 11
    and-int/2addr v0, v1

    .line 14
    or-int/2addr p1, v0

    .line 15
    iput p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mGravity:I

    .line 16
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 18
    :cond_0
    return-void
    .line 21
.end method

.method public setMeasureWithLargestChildEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mUseLargestChild:Z

    .line 2
    return-void
    .line 4
.end method

.method public setOrientation(I)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mOrientation:I

    .line 2
    if-eq v0, p1, :cond_0

    .line 4
    iput p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mOrientation:I

    .line 6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 8
    :cond_0
    return-void
    .line 11
.end method

.method public setShowDividers(I)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mShowDividers:I

    .line 2
    if-eq p1, v0, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 6
    :cond_0
    iput p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mShowDividers:I

    .line 9
    return-void
    .line 11
.end method

.method public setVerticalGravity(I)V
    .locals 2

    .line 1
    and-int/lit8 p1, p1, 0x70

    .line 2
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mGravity:I

    .line 4
    and-int/lit8 v1, v0, 0x70

    .line 6
    if-eq v1, p1, :cond_0

    .line 8
    and-int/lit8 v0, v0, -0x71

    .line 10
    or-int/2addr p1, v0

    .line 12
    iput p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mGravity:I

    .line 13
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 15
    :cond_0
    return-void
    .line 18
.end method

.method public setWeightSum(F)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    .line 3
    move-result p1

    .line 6
    iput p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mWeightSum:F

    .line 7
    return-void
    .line 9
.end method

.method public final shouldDelayChildPressedState()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method
