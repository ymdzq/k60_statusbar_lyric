.class public Landroidx/constraintlayout/utils/widget/MockView;
.super Landroid/view/View;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public mDiagonalsColor:I

.field public mDrawDiagonals:Z

.field public mDrawLabel:Z

.field public mMargin:I

.field public final mPaintDiagonals:Landroid/graphics/Paint;

.field public final mPaintText:Landroid/graphics/Paint;

.field public final mPaintTextBackground:Landroid/graphics/Paint;

.field public mText:Ljava/lang/String;

.field public mTextBackgroundColor:I

.field public final mTextBounds:Landroid/graphics/Rect;

.field public mTextColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/MockView;->mPaintDiagonals:Landroid/graphics/Paint;

    .line 3
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/MockView;->mPaintText:Landroid/graphics/Paint;

    .line 4
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/MockView;->mPaintTextBackground:Landroid/graphics/Paint;

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Landroidx/constraintlayout/utils/widget/MockView;->mDrawDiagonals:Z

    .line 6
    iput-boolean v0, p0, Landroidx/constraintlayout/utils/widget/MockView;->mDrawLabel:Z

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/MockView;->mText:Ljava/lang/String;

    .line 8
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroidx/constraintlayout/utils/widget/MockView;->mTextBounds:Landroid/graphics/Rect;

    const/4 v1, 0x0

    const/16 v2, 0xff

    .line 9
    invoke-static {v2, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    iput v1, p0, Landroidx/constraintlayout/utils/widget/MockView;->mDiagonalsColor:I

    const/16 v1, 0xc8

    .line 10
    invoke-static {v2, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    iput v1, p0, Landroidx/constraintlayout/utils/widget/MockView;->mTextColor:I

    const/16 v1, 0x32

    .line 11
    invoke-static {v2, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    iput v1, p0, Landroidx/constraintlayout/utils/widget/MockView;->mTextBackgroundColor:I

    const/4 v1, 0x4

    .line 12
    iput v1, p0, Landroidx/constraintlayout/utils/widget/MockView;->mMargin:I

    .line 13
    invoke-virtual {p0, p1, v0}, Landroidx/constraintlayout/utils/widget/MockView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 14
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/MockView;->mPaintDiagonals:Landroid/graphics/Paint;

    .line 16
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/MockView;->mPaintText:Landroid/graphics/Paint;

    .line 17
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/MockView;->mPaintTextBackground:Landroid/graphics/Paint;

    const/4 v0, 0x1

    .line 18
    iput-boolean v0, p0, Landroidx/constraintlayout/utils/widget/MockView;->mDrawDiagonals:Z

    .line 19
    iput-boolean v0, p0, Landroidx/constraintlayout/utils/widget/MockView;->mDrawLabel:Z

    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/MockView;->mText:Ljava/lang/String;

    .line 21
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/MockView;->mTextBounds:Landroid/graphics/Rect;

    const/4 v0, 0x0

    const/16 v1, 0xff

    .line 22
    invoke-static {v1, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/utils/widget/MockView;->mDiagonalsColor:I

    const/16 v0, 0xc8

    .line 23
    invoke-static {v1, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/utils/widget/MockView;->mTextColor:I

    const/16 v0, 0x32

    .line 24
    invoke-static {v1, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/utils/widget/MockView;->mTextBackgroundColor:I

    const/4 v0, 0x4

    .line 25
    iput v0, p0, Landroidx/constraintlayout/utils/widget/MockView;->mMargin:I

    .line 26
    invoke-virtual {p0, p1, p2}, Landroidx/constraintlayout/utils/widget/MockView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 27
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    iput-object p3, p0, Landroidx/constraintlayout/utils/widget/MockView;->mPaintDiagonals:Landroid/graphics/Paint;

    .line 29
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    iput-object p3, p0, Landroidx/constraintlayout/utils/widget/MockView;->mPaintText:Landroid/graphics/Paint;

    .line 30
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    iput-object p3, p0, Landroidx/constraintlayout/utils/widget/MockView;->mPaintTextBackground:Landroid/graphics/Paint;

    const/4 p3, 0x1

    .line 31
    iput-boolean p3, p0, Landroidx/constraintlayout/utils/widget/MockView;->mDrawDiagonals:Z

    .line 32
    iput-boolean p3, p0, Landroidx/constraintlayout/utils/widget/MockView;->mDrawLabel:Z

    const/4 p3, 0x0

    .line 33
    iput-object p3, p0, Landroidx/constraintlayout/utils/widget/MockView;->mText:Ljava/lang/String;

    .line 34
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Landroidx/constraintlayout/utils/widget/MockView;->mTextBounds:Landroid/graphics/Rect;

    const/4 p3, 0x0

    const/16 v0, 0xff

    .line 35
    invoke-static {v0, p3, p3, p3}, Landroid/graphics/Color;->argb(IIII)I

    move-result p3

    iput p3, p0, Landroidx/constraintlayout/utils/widget/MockView;->mDiagonalsColor:I

    const/16 p3, 0xc8

    .line 36
    invoke-static {v0, p3, p3, p3}, Landroid/graphics/Color;->argb(IIII)I

    move-result p3

    iput p3, p0, Landroidx/constraintlayout/utils/widget/MockView;->mTextColor:I

    const/16 p3, 0x32

    .line 37
    invoke-static {v0, p3, p3, p3}, Landroid/graphics/Color;->argb(IIII)I

    move-result p3

    iput p3, p0, Landroidx/constraintlayout/utils/widget/MockView;->mTextBackgroundColor:I

    const/4 p3, 0x4

    .line 38
    iput p3, p0, Landroidx/constraintlayout/utils/widget/MockView;->mMargin:I

    .line 39
    invoke-virtual {p0, p1, p2}, Landroidx/constraintlayout/utils/widget/MockView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public final init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eqz p2, :cond_7

    .line 3
    sget-object v1, Landroidx/constraintlayout/widget/R$styleable;->MockView:[I

    .line 5
    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 7
    move-result-object p2

    .line 10
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->getIndexCount()I

    .line 11
    move-result v1

    .line 14
    const/4 v2, 0x0

    .line 15
    :goto_0
    if-ge v2, v1, :cond_6

    .line 16
    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    .line 18
    move-result v3

    .line 21
    if-ne v3, v0, :cond_0

    .line 22
    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 24
    move-result-object v3

    .line 27
    iput-object v3, p0, Landroidx/constraintlayout/utils/widget/MockView;->mText:Ljava/lang/String;

    .line 28
    goto :goto_1

    .line 30
    :cond_0
    const/4 v4, 0x4

    .line 31
    if-ne v3, v4, :cond_1

    .line 32
    iget-boolean v4, p0, Landroidx/constraintlayout/utils/widget/MockView;->mDrawDiagonals:Z

    .line 34
    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 36
    move-result v3

    .line 39
    iput-boolean v3, p0, Landroidx/constraintlayout/utils/widget/MockView;->mDrawDiagonals:Z

    .line 40
    goto :goto_1

    .line 42
    :cond_1
    if-nez v3, :cond_2

    .line 43
    iget v4, p0, Landroidx/constraintlayout/utils/widget/MockView;->mDiagonalsColor:I

    .line 45
    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 47
    move-result v3

    .line 50
    iput v3, p0, Landroidx/constraintlayout/utils/widget/MockView;->mDiagonalsColor:I

    .line 51
    goto :goto_1

    .line 53
    :cond_2
    const/4 v4, 0x2

    .line 54
    if-ne v3, v4, :cond_3

    .line 55
    iget v4, p0, Landroidx/constraintlayout/utils/widget/MockView;->mTextBackgroundColor:I

    .line 57
    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 59
    move-result v3

    .line 62
    iput v3, p0, Landroidx/constraintlayout/utils/widget/MockView;->mTextBackgroundColor:I

    .line 63
    goto :goto_1

    .line 65
    :cond_3
    const/4 v4, 0x3

    .line 66
    if-ne v3, v4, :cond_4

    .line 67
    iget v4, p0, Landroidx/constraintlayout/utils/widget/MockView;->mTextColor:I

    .line 69
    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 71
    move-result v3

    .line 74
    iput v3, p0, Landroidx/constraintlayout/utils/widget/MockView;->mTextColor:I

    .line 75
    goto :goto_1

    .line 77
    :cond_4
    const/4 v4, 0x5

    .line 78
    if-ne v3, v4, :cond_5

    .line 79
    iget-boolean v4, p0, Landroidx/constraintlayout/utils/widget/MockView;->mDrawLabel:Z

    .line 81
    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 83
    move-result v3

    .line 86
    iput-boolean v3, p0, Landroidx/constraintlayout/utils/widget/MockView;->mDrawLabel:Z

    .line 87
    :cond_5
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 89
    goto :goto_0

    .line 91
    :cond_6
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 92
    :cond_7
    iget-object p2, p0, Landroidx/constraintlayout/utils/widget/MockView;->mText:Ljava/lang/String;

    .line 95
    if-nez p2, :cond_8

    .line 97
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 99
    move-result-object p1

    .line 102
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    .line 103
    move-result p2

    .line 106
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    .line 107
    move-result-object p1

    .line 110
    iput-object p1, p0, Landroidx/constraintlayout/utils/widget/MockView;->mText:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    :catch_0
    :cond_8
    iget-object p1, p0, Landroidx/constraintlayout/utils/widget/MockView;->mPaintDiagonals:Landroid/graphics/Paint;

    .line 113
    iget p2, p0, Landroidx/constraintlayout/utils/widget/MockView;->mDiagonalsColor:I

    .line 115
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 117
    iget-object p1, p0, Landroidx/constraintlayout/utils/widget/MockView;->mPaintDiagonals:Landroid/graphics/Paint;

    .line 120
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 122
    iget-object p1, p0, Landroidx/constraintlayout/utils/widget/MockView;->mPaintText:Landroid/graphics/Paint;

    .line 125
    iget p2, p0, Landroidx/constraintlayout/utils/widget/MockView;->mTextColor:I

    .line 127
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 129
    iget-object p1, p0, Landroidx/constraintlayout/utils/widget/MockView;->mPaintText:Landroid/graphics/Paint;

    .line 132
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 134
    iget-object p1, p0, Landroidx/constraintlayout/utils/widget/MockView;->mPaintTextBackground:Landroid/graphics/Paint;

    .line 137
    iget p2, p0, Landroidx/constraintlayout/utils/widget/MockView;->mTextBackgroundColor:I

    .line 139
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 141
    iget p1, p0, Landroidx/constraintlayout/utils/widget/MockView;->mMargin:I

    .line 144
    int-to-float p1, p1

    .line 146
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 147
    move-result-object p2

    .line 150
    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 151
    move-result-object p2

    .line 154
    iget p2, p2, Landroid/util/DisplayMetrics;->xdpi:F

    .line 155
    const/high16 v0, 0x43200000    # 160.0f

    .line 157
    div-float/2addr p2, v0

    .line 159
    mul-float/2addr p2, p1

    .line 160
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    .line 161
    move-result p1

    .line 164
    iput p1, p0, Landroidx/constraintlayout/utils/widget/MockView;->mMargin:I

    .line 165
    return-void
    .line 167
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 5
    move-result v0

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 9
    move-result v1

    .line 12
    iget-boolean v2, p0, Landroidx/constraintlayout/utils/widget/MockView;->mDrawDiagonals:Z

    .line 13
    if-eqz v2, :cond_0

    .line 15
    add-int/lit8 v0, v0, -0x1

    .line 17
    add-int/lit8 v1, v1, -0x1

    .line 19
    const/4 v3, 0x0

    .line 21
    const/4 v4, 0x0

    .line 22
    int-to-float v11, v0

    .line 23
    int-to-float v12, v1

    .line 24
    iget-object v7, p0, Landroidx/constraintlayout/utils/widget/MockView;->mPaintDiagonals:Landroid/graphics/Paint;

    .line 25
    move-object v2, p1

    .line 27
    move v5, v11

    .line 28
    move v6, v12

    .line 29
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 30
    const/4 v6, 0x0

    .line 33
    const/4 v9, 0x0

    .line 34
    iget-object v10, p0, Landroidx/constraintlayout/utils/widget/MockView;->mPaintDiagonals:Landroid/graphics/Paint;

    .line 35
    move-object v5, p1

    .line 37
    move v7, v12

    .line 38
    move v8, v11

    .line 39
    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 40
    const/4 v7, 0x0

    .line 43
    iget-object v10, p0, Landroidx/constraintlayout/utils/widget/MockView;->mPaintDiagonals:Landroid/graphics/Paint;

    .line 44
    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 46
    iget-object v10, p0, Landroidx/constraintlayout/utils/widget/MockView;->mPaintDiagonals:Landroid/graphics/Paint;

    .line 49
    move v6, v11

    .line 51
    move v9, v12

    .line 52
    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 53
    const/4 v8, 0x0

    .line 56
    iget-object v10, p0, Landroidx/constraintlayout/utils/widget/MockView;->mPaintDiagonals:Landroid/graphics/Paint;

    .line 57
    move v7, v12

    .line 59
    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 60
    const/4 v6, 0x0

    .line 63
    const/4 v9, 0x0

    .line 64
    iget-object v10, p0, Landroidx/constraintlayout/utils/widget/MockView;->mPaintDiagonals:Landroid/graphics/Paint;

    .line 65
    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 67
    :cond_0
    iget-object v2, p0, Landroidx/constraintlayout/utils/widget/MockView;->mText:Ljava/lang/String;

    .line 70
    if-eqz v2, :cond_1

    .line 72
    iget-boolean v3, p0, Landroidx/constraintlayout/utils/widget/MockView;->mDrawLabel:Z

    .line 74
    if-eqz v3, :cond_1

    .line 76
    iget-object v3, p0, Landroidx/constraintlayout/utils/widget/MockView;->mPaintText:Landroid/graphics/Paint;

    .line 78
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 80
    move-result v4

    .line 83
    iget-object v5, p0, Landroidx/constraintlayout/utils/widget/MockView;->mTextBounds:Landroid/graphics/Rect;

    .line 84
    const/4 v6, 0x0

    .line 86
    invoke-virtual {v3, v2, v6, v4, v5}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 87
    iget-object v2, p0, Landroidx/constraintlayout/utils/widget/MockView;->mTextBounds:Landroid/graphics/Rect;

    .line 90
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    .line 92
    move-result v2

    .line 95
    sub-int/2addr v0, v2

    .line 96
    int-to-float v0, v0

    .line 97
    const/high16 v2, 0x40000000    # 2.0f

    .line 98
    div-float/2addr v0, v2

    .line 100
    iget-object v3, p0, Landroidx/constraintlayout/utils/widget/MockView;->mTextBounds:Landroid/graphics/Rect;

    .line 101
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    .line 103
    move-result v3

    .line 106
    sub-int/2addr v1, v3

    .line 107
    int-to-float v1, v1

    .line 108
    div-float/2addr v1, v2

    .line 109
    iget-object v2, p0, Landroidx/constraintlayout/utils/widget/MockView;->mTextBounds:Landroid/graphics/Rect;

    .line 110
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    .line 112
    move-result v2

    .line 115
    int-to-float v2, v2

    .line 116
    add-float/2addr v1, v2

    .line 117
    iget-object v2, p0, Landroidx/constraintlayout/utils/widget/MockView;->mTextBounds:Landroid/graphics/Rect;

    .line 118
    float-to-int v3, v0

    .line 120
    float-to-int v4, v1

    .line 121
    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 122
    iget-object v2, p0, Landroidx/constraintlayout/utils/widget/MockView;->mTextBounds:Landroid/graphics/Rect;

    .line 125
    iget v3, v2, Landroid/graphics/Rect;->left:I

    .line 127
    iget v4, p0, Landroidx/constraintlayout/utils/widget/MockView;->mMargin:I

    .line 129
    sub-int/2addr v3, v4

    .line 131
    iget v5, v2, Landroid/graphics/Rect;->top:I

    .line 132
    sub-int/2addr v5, v4

    .line 134
    iget v6, v2, Landroid/graphics/Rect;->right:I

    .line 135
    add-int/2addr v6, v4

    .line 137
    iget v7, v2, Landroid/graphics/Rect;->bottom:I

    .line 138
    add-int/2addr v7, v4

    .line 140
    invoke-virtual {v2, v3, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 141
    iget-object v2, p0, Landroidx/constraintlayout/utils/widget/MockView;->mTextBounds:Landroid/graphics/Rect;

    .line 144
    iget-object v3, p0, Landroidx/constraintlayout/utils/widget/MockView;->mPaintTextBackground:Landroid/graphics/Paint;

    .line 146
    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 148
    iget-object v2, p0, Landroidx/constraintlayout/utils/widget/MockView;->mText:Ljava/lang/String;

    .line 151
    iget-object p0, p0, Landroidx/constraintlayout/utils/widget/MockView;->mPaintText:Landroid/graphics/Paint;

    .line 153
    invoke-virtual {p1, v2, v0, v1, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 155
    :cond_1
    return-void
    .line 158
.end method
