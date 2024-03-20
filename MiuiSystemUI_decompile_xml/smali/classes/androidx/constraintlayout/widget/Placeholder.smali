.class public Landroidx/constraintlayout/widget/Placeholder;
.super Landroid/view/View;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public mContent:Landroid/view/View;

.field public mContentId:I

.field public mEmptyVisibility:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Landroidx/constraintlayout/widget/Placeholder;->mContentId:I

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Landroidx/constraintlayout/widget/Placeholder;->mContent:Landroid/view/View;

    const/4 v0, 0x4

    .line 4
    iput v0, p0, Landroidx/constraintlayout/widget/Placeholder;->mEmptyVisibility:I

    .line 5
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/Placeholder;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    .line 7
    iput p1, p0, Landroidx/constraintlayout/widget/Placeholder;->mContentId:I

    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Landroidx/constraintlayout/widget/Placeholder;->mContent:Landroid/view/View;

    const/4 p1, 0x4

    .line 9
    iput p1, p0, Landroidx/constraintlayout/widget/Placeholder;->mEmptyVisibility:I

    .line 10
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/widget/Placeholder;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 11
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, -0x1

    .line 12
    iput p1, p0, Landroidx/constraintlayout/widget/Placeholder;->mContentId:I

    const/4 p1, 0x0

    .line 13
    iput-object p1, p0, Landroidx/constraintlayout/widget/Placeholder;->mContent:Landroid/view/View;

    const/4 p1, 0x4

    .line 14
    iput p1, p0, Landroidx/constraintlayout/widget/Placeholder;->mEmptyVisibility:I

    .line 15
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/widget/Placeholder;->init(Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public getContent()Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/constraintlayout/widget/Placeholder;->mContent:Landroid/view/View;

    .line 2
    return-object p0
    .line 4
.end method

.method public getEmptyVisibility()I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/constraintlayout/widget/Placeholder;->mEmptyVisibility:I

    .line 2
    return p0
    .line 4
.end method

.method public final init(Landroid/util/AttributeSet;)V
    .locals 4

    .line 1
    iget v0, p0, Landroidx/constraintlayout/widget/Placeholder;->mEmptyVisibility:I

    .line 2
    invoke-super {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 4
    const/4 v0, -0x1

    .line 7
    iput v0, p0, Landroidx/constraintlayout/widget/Placeholder;->mContentId:I

    .line 8
    if-eqz p1, :cond_3

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 12
    move-result-object v0

    .line 15
    sget-object v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_placeholder:[I

    .line 16
    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 18
    move-result-object p1

    .line 21
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    .line 22
    move-result v0

    .line 25
    const/4 v1, 0x0

    .line 26
    :goto_0
    if-ge v1, v0, :cond_2

    .line 27
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    .line 29
    move-result v2

    .line 32
    if-nez v2, :cond_0

    .line 33
    iget v3, p0, Landroidx/constraintlayout/widget/Placeholder;->mContentId:I

    .line 35
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 37
    move-result v2

    .line 40
    iput v2, p0, Landroidx/constraintlayout/widget/Placeholder;->mContentId:I

    .line 41
    goto :goto_1

    .line 43
    :cond_0
    const/4 v3, 0x1

    .line 44
    if-ne v2, v3, :cond_1

    .line 45
    iget v3, p0, Landroidx/constraintlayout/widget/Placeholder;->mEmptyVisibility:I

    .line 47
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 49
    move-result v2

    .line 52
    iput v2, p0, Landroidx/constraintlayout/widget/Placeholder;->mEmptyVisibility:I

    .line 53
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 55
    goto :goto_0

    .line 57
    :cond_2
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 58
    :cond_3
    return-void
    .line 61
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    .line 2
    move-result p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    const/16 p0, 0xdf

    .line 8
    invoke-virtual {p1, p0, p0, p0}, Landroid/graphics/Canvas;->drawRGB(III)V

    .line 10
    new-instance p0, Landroid/graphics/Paint;

    .line 13
    invoke-direct {p0}, Landroid/graphics/Paint;-><init>()V

    .line 15
    const/16 v0, 0xff

    .line 18
    const/16 v1, 0xd2

    .line 20
    invoke-virtual {p0, v0, v1, v1, v1}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 22
    sget-object v0, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    .line 25
    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 27
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 30
    const/4 v1, 0x0

    .line 32
    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    .line 33
    move-result-object v0

    .line 36
    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 37
    new-instance v0, Landroid/graphics/Rect;

    .line 40
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 42
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    .line 45
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 48
    move-result v2

    .line 51
    int-to-float v2, v2

    .line 52
    invoke-virtual {p0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 53
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 56
    move-result v2

    .line 59
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 60
    move-result v3

    .line 63
    sget-object v4, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    .line 64
    invoke-virtual {p0, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 66
    const/4 v4, 0x1

    .line 69
    const-string v5, "?"

    .line 70
    invoke-virtual {p0, v5, v1, v4, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 72
    int-to-float v1, v3

    .line 75
    const/high16 v3, 0x40000000    # 2.0f

    .line 76
    div-float/2addr v1, v3

    .line 78
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 79
    move-result v4

    .line 82
    int-to-float v4, v4

    .line 83
    div-float/2addr v4, v3

    .line 84
    sub-float/2addr v1, v4

    .line 85
    iget v4, v0, Landroid/graphics/Rect;->left:I

    .line 86
    int-to-float v4, v4

    .line 88
    sub-float/2addr v1, v4

    .line 89
    int-to-float v2, v2

    .line 90
    div-float/2addr v2, v3

    .line 91
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 92
    move-result v4

    .line 95
    int-to-float v4, v4

    .line 96
    div-float/2addr v4, v3

    .line 97
    add-float/2addr v4, v2

    .line 98
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 99
    int-to-float v0, v0

    .line 101
    sub-float/2addr v4, v0

    .line 102
    invoke-virtual {p1, v5, v1, v4, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 103
    :cond_0
    return-void
    .line 106
.end method

.method public setContentId(I)V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/constraintlayout/widget/Placeholder;->mContentId:I

    .line 2
    if-ne v0, p1, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/widget/Placeholder;->mContent:Landroid/view/View;

    .line 7
    if-eqz v0, :cond_1

    .line 9
    const/4 v1, 0x0

    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    iget-object v0, p0, Landroidx/constraintlayout/widget/Placeholder;->mContent:Landroid/view/View;

    .line 15
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 17
    move-result-object v0

    .line 20
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 21
    iput-boolean v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->mIsInPlaceholder:Z

    .line 23
    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Landroidx/constraintlayout/widget/Placeholder;->mContent:Landroid/view/View;

    .line 26
    :cond_1
    iput p1, p0, Landroidx/constraintlayout/widget/Placeholder;->mContentId:I

    .line 28
    const/4 v0, -0x1

    .line 30
    if-eq p1, v0, :cond_2

    .line 31
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 33
    move-result-object p0

    .line 36
    check-cast p0, Landroid/view/View;

    .line 37
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 39
    move-result-object p0

    .line 42
    if-eqz p0, :cond_2

    .line 43
    const/16 p1, 0x8

    .line 45
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 47
    :cond_2
    return-void
    .line 50
.end method

.method public setEmptyVisibility(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/constraintlayout/widget/Placeholder;->mEmptyVisibility:I

    .line 2
    return-void
    .line 4
.end method
