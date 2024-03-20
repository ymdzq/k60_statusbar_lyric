.class public Lmiuix/internal/widget/RoundFrameLayout;
.super Landroid/widget/FrameLayout;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public mAreaRegion:Landroid/graphics/Region;

.field public mBorderColor:I

.field public mBorderWidth:F

.field public mClipOutPath:Landroid/graphics/Path;

.field public mClipPath:Landroid/graphics/Path;

.field public mLayer:Landroid/graphics/RectF;

.field public mPaint:Landroid/graphics/Paint;

.field public mRadii:[F

.field public mRadius:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lmiuix/internal/widget/RoundFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lmiuix/internal/widget/RoundFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070aef    # @dimen/miuix_appcompat_immersion_menu_background_radius '16.0dp'

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lmiuix/internal/widget/RoundFrameLayout;->mRadius:F

    const/16 p2, 0x8

    new-array p2, p2, [F

    const/4 p3, 0x0

    aput p1, p2, p3

    const/4 p3, 0x1

    aput p1, p2, p3

    const/4 v0, 0x2

    aput p1, p2, v0

    const/4 v0, 0x3

    aput p1, p2, v0

    const/4 v0, 0x4

    aput p1, p2, v0

    const/4 v0, 0x5

    aput p1, p2, v0

    const/4 v0, 0x6

    aput p1, p2, v0

    const/4 v0, 0x7

    aput p1, p2, v0

    .line 5
    iput-object p2, p0, Lmiuix/internal/widget/RoundFrameLayout;->mRadii:[F

    .line 6
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lmiuix/internal/widget/RoundFrameLayout;->mLayer:Landroid/graphics/RectF;

    .line 7
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lmiuix/internal/widget/RoundFrameLayout;->mClipPath:Landroid/graphics/Path;

    .line 8
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lmiuix/internal/widget/RoundFrameLayout;->mClipOutPath:Landroid/graphics/Path;

    .line 9
    new-instance p1, Landroid/graphics/Region;

    invoke-direct {p1}, Landroid/graphics/Region;-><init>()V

    iput-object p1, p0, Lmiuix/internal/widget/RoundFrameLayout;->mAreaRegion:Landroid/graphics/Region;

    .line 10
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lmiuix/internal/widget/RoundFrameLayout;->mPaint:Landroid/graphics/Paint;

    const/4 p2, -0x1

    .line 11
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 12
    iget-object p0, p0, Lmiuix/internal/widget/RoundFrameLayout;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method


# virtual methods
.method public final dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lmiuix/internal/widget/RoundFrameLayout;->mRadii:[F

    .line 2
    if-nez v0, :cond_0

    .line 4
    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lmiuix/internal/widget/RoundFrameLayout;->mClipPath:Landroid/graphics/Path;

    .line 7
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 9
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 12
    iget-object v0, p0, Lmiuix/internal/widget/RoundFrameLayout;->mRadii:[F

    .line 15
    if-eqz v0, :cond_2

    .line 17
    iget v0, p0, Lmiuix/internal/widget/RoundFrameLayout;->mBorderWidth:F

    .line 19
    const/4 v1, 0x0

    .line 21
    cmpl-float v0, v0, v1

    .line 22
    if-eqz v0, :cond_2

    .line 24
    iget v0, p0, Lmiuix/internal/widget/RoundFrameLayout;->mBorderColor:I

    .line 26
    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    .line 28
    move-result v0

    .line 31
    if-nez v0, :cond_1

    .line 32
    goto :goto_1

    .line 34
    :cond_1
    iget-object v0, p0, Lmiuix/internal/widget/RoundFrameLayout;->mLayer:Landroid/graphics/RectF;

    .line 35
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    .line 37
    move-result v0

    .line 40
    float-to-int v0, v0

    .line 41
    iget-object v1, p0, Lmiuix/internal/widget/RoundFrameLayout;->mLayer:Landroid/graphics/RectF;

    .line 42
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    .line 44
    move-result v1

    .line 47
    float-to-int v1, v1

    .line 48
    new-instance v2, Landroid/graphics/RectF;

    .line 49
    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    .line 51
    iget v3, p0, Lmiuix/internal/widget/RoundFrameLayout;->mBorderWidth:F

    .line 54
    const/high16 v4, 0x40000000    # 2.0f

    .line 56
    div-float/2addr v3, v4

    .line 58
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 59
    move-result v5

    .line 62
    int-to-float v5, v5

    .line 63
    add-float/2addr v5, v3

    .line 64
    iput v5, v2, Landroid/graphics/RectF;->left:F

    .line 65
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 67
    move-result v5

    .line 70
    int-to-float v5, v5

    .line 71
    add-float/2addr v5, v3

    .line 72
    iput v5, v2, Landroid/graphics/RectF;->top:F

    .line 73
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 75
    move-result v5

    .line 78
    sub-int/2addr v0, v5

    .line 79
    int-to-float v0, v0

    .line 80
    sub-float/2addr v0, v3

    .line 81
    iput v0, v2, Landroid/graphics/RectF;->right:F

    .line 82
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 84
    move-result v0

    .line 87
    sub-int/2addr v1, v0

    .line 88
    int-to-float v0, v1

    .line 89
    sub-float/2addr v0, v3

    .line 90
    iput v0, v2, Landroid/graphics/RectF;->bottom:F

    .line 91
    iget-object v0, p0, Lmiuix/internal/widget/RoundFrameLayout;->mPaint:Landroid/graphics/Paint;

    .line 93
    invoke-virtual {v0}, Landroid/graphics/Paint;->reset()V

    .line 95
    iget-object v0, p0, Lmiuix/internal/widget/RoundFrameLayout;->mPaint:Landroid/graphics/Paint;

    .line 98
    const/4 v1, 0x1

    .line 100
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 101
    iget-object v0, p0, Lmiuix/internal/widget/RoundFrameLayout;->mPaint:Landroid/graphics/Paint;

    .line 104
    iget v1, p0, Lmiuix/internal/widget/RoundFrameLayout;->mBorderColor:I

    .line 106
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 108
    iget-object v0, p0, Lmiuix/internal/widget/RoundFrameLayout;->mPaint:Landroid/graphics/Paint;

    .line 111
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 113
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 115
    iget-object v0, p0, Lmiuix/internal/widget/RoundFrameLayout;->mPaint:Landroid/graphics/Paint;

    .line 118
    iget v1, p0, Lmiuix/internal/widget/RoundFrameLayout;->mBorderWidth:F

    .line 120
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 122
    iget v0, p0, Lmiuix/internal/widget/RoundFrameLayout;->mRadius:F

    .line 125
    mul-float/2addr v3, v4

    .line 127
    sub-float/2addr v0, v3

    .line 128
    iget-object p0, p0, Lmiuix/internal/widget/RoundFrameLayout;->mPaint:Landroid/graphics/Paint;

    .line 129
    invoke-virtual {p1, v2, v0, v0, p0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 131
    :cond_2
    :goto_1
    return-void
    .line 134
.end method

.method public final onSizeChanged(IIII)V
    .locals 6

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 2
    iget-object p3, p0, Lmiuix/internal/widget/RoundFrameLayout;->mLayer:Landroid/graphics/RectF;

    .line 5
    int-to-float p1, p1

    .line 7
    int-to-float p2, p2

    .line 8
    const/4 p4, 0x0

    .line 9
    invoke-virtual {p3, p4, p4, p1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 10
    iget-object p1, p0, Lmiuix/internal/widget/RoundFrameLayout;->mRadii:[F

    .line 13
    if-nez p1, :cond_0

    .line 15
    goto/16 :goto_0

    .line 17
    :cond_0
    iget-object p1, p0, Lmiuix/internal/widget/RoundFrameLayout;->mLayer:Landroid/graphics/RectF;

    .line 19
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    .line 21
    move-result p1

    .line 24
    float-to-int p1, p1

    .line 25
    iget-object p2, p0, Lmiuix/internal/widget/RoundFrameLayout;->mLayer:Landroid/graphics/RectF;

    .line 26
    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    .line 28
    move-result p2

    .line 31
    float-to-int p2, p2

    .line 32
    new-instance p3, Landroid/graphics/RectF;

    .line 33
    invoke-direct {p3}, Landroid/graphics/RectF;-><init>()V

    .line 35
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 38
    move-result p4

    .line 41
    int-to-float p4, p4

    .line 42
    iput p4, p3, Landroid/graphics/RectF;->left:F

    .line 43
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 45
    move-result p4

    .line 48
    int-to-float p4, p4

    .line 49
    iput p4, p3, Landroid/graphics/RectF;->top:F

    .line 50
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 52
    move-result p4

    .line 55
    sub-int/2addr p1, p4

    .line 56
    int-to-float p1, p1

    .line 57
    iput p1, p3, Landroid/graphics/RectF;->right:F

    .line 58
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 60
    move-result p1

    .line 63
    sub-int/2addr p2, p1

    .line 64
    int-to-float p1, p2

    .line 65
    iput p1, p3, Landroid/graphics/RectF;->bottom:F

    .line 66
    iget-object p1, p0, Lmiuix/internal/widget/RoundFrameLayout;->mClipPath:Landroid/graphics/Path;

    .line 68
    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    .line 70
    iget-object p1, p0, Lmiuix/internal/widget/RoundFrameLayout;->mClipPath:Landroid/graphics/Path;

    .line 73
    iget-object p2, p0, Lmiuix/internal/widget/RoundFrameLayout;->mRadii:[F

    .line 75
    sget-object p4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 77
    invoke-virtual {p1, p3, p2, p4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 79
    new-instance p1, Landroid/graphics/Region;

    .line 82
    iget p2, p3, Landroid/graphics/RectF;->left:F

    .line 84
    float-to-int p2, p2

    .line 86
    iget p4, p3, Landroid/graphics/RectF;->top:F

    .line 87
    float-to-int p4, p4

    .line 89
    iget v0, p3, Landroid/graphics/RectF;->right:F

    .line 90
    float-to-int v0, v0

    .line 92
    iget p3, p3, Landroid/graphics/RectF;->bottom:F

    .line 93
    float-to-int p3, p3

    .line 95
    invoke-direct {p1, p2, p4, v0, p3}, Landroid/graphics/Region;-><init>(IIII)V

    .line 96
    iget-object p2, p0, Lmiuix/internal/widget/RoundFrameLayout;->mAreaRegion:Landroid/graphics/Region;

    .line 99
    iget-object p3, p0, Lmiuix/internal/widget/RoundFrameLayout;->mClipPath:Landroid/graphics/Path;

    .line 101
    invoke-virtual {p2, p3, p1}, Landroid/graphics/Region;->setPath(Landroid/graphics/Path;Landroid/graphics/Region;)Z

    .line 103
    iget-object p1, p0, Lmiuix/internal/widget/RoundFrameLayout;->mClipOutPath:Landroid/graphics/Path;

    .line 106
    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    .line 108
    iget-object v0, p0, Lmiuix/internal/widget/RoundFrameLayout;->mClipOutPath:Landroid/graphics/Path;

    .line 111
    const/4 v1, 0x0

    .line 113
    const/4 v2, 0x0

    .line 114
    iget-object p1, p0, Lmiuix/internal/widget/RoundFrameLayout;->mLayer:Landroid/graphics/RectF;

    .line 115
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    .line 117
    move-result p1

    .line 120
    float-to-int p1, p1

    .line 121
    int-to-float v3, p1

    .line 122
    iget-object p1, p0, Lmiuix/internal/widget/RoundFrameLayout;->mLayer:Landroid/graphics/RectF;

    .line 123
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    .line 125
    move-result p1

    .line 128
    float-to-int p1, p1

    .line 129
    int-to-float v4, p1

    .line 130
    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 131
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 133
    iget-object p1, p0, Lmiuix/internal/widget/RoundFrameLayout;->mClipOutPath:Landroid/graphics/Path;

    .line 136
    iget-object p0, p0, Lmiuix/internal/widget/RoundFrameLayout;->mClipPath:Landroid/graphics/Path;

    .line 138
    sget-object p2, Landroid/graphics/Path$Op;->DIFFERENCE:Landroid/graphics/Path$Op;

    .line 140
    invoke-virtual {p1, p0, p2}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    .line 142
    :goto_0
    return-void
    .line 145
.end method

.method public setBorder(FI)V
    .locals 0

    .line 1
    iput p1, p0, Lmiuix/internal/widget/RoundFrameLayout;->mBorderWidth:F

    .line 2
    iput p2, p0, Lmiuix/internal/widget/RoundFrameLayout;->mBorderColor:I

    .line 4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 6
    return-void
    .line 9
.end method

.method public setRadius(F)V
    .locals 2

    .line 1
    iput p1, p0, Lmiuix/internal/widget/RoundFrameLayout;->mRadius:F

    const/16 v0, 0x8

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p1, v0, v1

    const/4 v1, 0x2

    aput p1, v0, v1

    const/4 v1, 0x3

    aput p1, v0, v1

    const/4 v1, 0x4

    aput p1, v0, v1

    const/4 v1, 0x5

    aput p1, v0, v1

    const/4 v1, 0x6

    aput p1, v0, v1

    const/4 v1, 0x7

    aput p1, v0, v1

    .line 2
    invoke-virtual {p0, v0}, Lmiuix/internal/widget/RoundFrameLayout;->setRadius([F)V

    return-void
.end method

.method public setRadius([F)V
    .locals 1

    .line 3
    iget-object v0, p0, Lmiuix/internal/widget/RoundFrameLayout;->mRadii:[F

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iput-object p1, p0, Lmiuix/internal/widget/RoundFrameLayout;->mRadii:[F

    .line 5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_0
    return-void
.end method
