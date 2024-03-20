.class public Landroidx/constraintlayout/utils/widget/MotionButton;
.super Landroidx/appcompat/widget/AppCompatButton;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public mPath:Landroid/graphics/Path;

.field public mRect:Landroid/graphics/RectF;

.field public mRound:F

.field public mRoundPercent:F

.field public mViewOutlineProvider:Landroidx/constraintlayout/utils/widget/MotionButton$1;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatButton;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroidx/constraintlayout/utils/widget/MotionButton;->mRoundPercent:F

    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 3
    iput v0, p0, Landroidx/constraintlayout/utils/widget/MotionButton;->mRound:F

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, p1, v0}, Landroidx/constraintlayout/utils/widget/MotionButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 5
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Landroidx/constraintlayout/utils/widget/MotionButton;->mRoundPercent:F

    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 7
    iput v0, p0, Landroidx/constraintlayout/utils/widget/MotionButton;->mRound:F

    .line 8
    invoke-virtual {p0, p1, p2}, Landroidx/constraintlayout/utils/widget/MotionButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    .line 10
    iput p3, p0, Landroidx/constraintlayout/utils/widget/MotionButton;->mRoundPercent:F

    const/high16 p3, 0x7fc00000    # Float.NaN

    .line 11
    iput p3, p0, Landroidx/constraintlayout/utils/widget/MotionButton;->mRound:F

    .line 12
    invoke-virtual {p0, p1, p2}, Landroidx/constraintlayout/utils/widget/MotionButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/Button;->draw(Landroid/graphics/Canvas;)V

    .line 2
    return-void
    .line 5
.end method

.method public getRound()F
    .locals 0

    .line 1
    iget p0, p0, Landroidx/constraintlayout/utils/widget/MotionButton;->mRound:F

    .line 2
    return p0
    .line 4
.end method

.method public getRoundPercent()F
    .locals 0

    .line 1
    iget p0, p0, Landroidx/constraintlayout/utils/widget/MotionButton;->mRoundPercent:F

    .line 2
    return p0
    .line 4
.end method

.method public final init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0, v0, v0, v0}, Landroid/widget/Button;->setPadding(IIII)V

    .line 3
    if-eqz p2, :cond_3

    .line 6
    sget-object v1, Landroidx/constraintlayout/widget/R$styleable;->ImageFilterView:[I

    .line 8
    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 10
    move-result-object p1

    .line 13
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    .line 14
    move-result p2

    .line 17
    :goto_0
    if-ge v0, p2, :cond_2

    .line 18
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    .line 20
    move-result v1

    .line 23
    const/16 v2, 0xa

    .line 24
    const/4 v3, 0x0

    .line 26
    if-ne v1, v2, :cond_0

    .line 27
    invoke-virtual {p1, v1, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 29
    move-result v1

    .line 32
    invoke-virtual {p0, v1}, Landroidx/constraintlayout/utils/widget/MotionButton;->setRound(F)V

    .line 33
    goto :goto_1

    .line 36
    :cond_0
    const/16 v2, 0xb

    .line 37
    if-ne v1, v2, :cond_1

    .line 39
    invoke-virtual {p1, v1, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 41
    move-result v1

    .line 44
    invoke-virtual {p0, v1}, Landroidx/constraintlayout/utils/widget/MotionButton;->setRoundPercent(F)V

    .line 45
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 48
    goto :goto_0

    .line 50
    :cond_2
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 51
    :cond_3
    return-void
    .line 54
.end method

.method public setRound(F)V
    .locals 4

    .line 1
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    iput p1, p0, Landroidx/constraintlayout/utils/widget/MotionButton;->mRound:F

    .line 8
    iget p1, p0, Landroidx/constraintlayout/utils/widget/MotionButton;->mRoundPercent:F

    .line 10
    const/high16 v0, -0x40800000    # -1.0f

    .line 12
    iput v0, p0, Landroidx/constraintlayout/utils/widget/MotionButton;->mRoundPercent:F

    .line 14
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/utils/widget/MotionButton;->setRoundPercent(F)V

    .line 16
    return-void

    .line 19
    :cond_0
    iget v0, p0, Landroidx/constraintlayout/utils/widget/MotionButton;->mRound:F

    .line 20
    cmpl-float v0, v0, p1

    .line 22
    const/4 v1, 0x0

    .line 24
    const/4 v2, 0x1

    .line 25
    if-eqz v0, :cond_1

    .line 26
    move v0, v2

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    move v0, v1

    .line 30
    :goto_0
    iput p1, p0, Landroidx/constraintlayout/utils/widget/MotionButton;->mRound:F

    .line 31
    const/4 v3, 0x0

    .line 33
    cmpl-float p1, p1, v3

    .line 34
    if-eqz p1, :cond_5

    .line 36
    iget-object p1, p0, Landroidx/constraintlayout/utils/widget/MotionButton;->mPath:Landroid/graphics/Path;

    .line 38
    if-nez p1, :cond_2

    .line 40
    new-instance p1, Landroid/graphics/Path;

    .line 42
    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    .line 44
    iput-object p1, p0, Landroidx/constraintlayout/utils/widget/MotionButton;->mPath:Landroid/graphics/Path;

    .line 47
    :cond_2
    iget-object p1, p0, Landroidx/constraintlayout/utils/widget/MotionButton;->mRect:Landroid/graphics/RectF;

    .line 49
    if-nez p1, :cond_3

    .line 51
    new-instance p1, Landroid/graphics/RectF;

    .line 53
    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    .line 55
    iput-object p1, p0, Landroidx/constraintlayout/utils/widget/MotionButton;->mRect:Landroid/graphics/RectF;

    .line 58
    :cond_3
    iget-object p1, p0, Landroidx/constraintlayout/utils/widget/MotionButton;->mViewOutlineProvider:Landroidx/constraintlayout/utils/widget/MotionButton$1;

    .line 60
    if-nez p1, :cond_4

    .line 62
    new-instance p1, Landroidx/constraintlayout/utils/widget/MotionButton$1;

    .line 64
    invoke-direct {p1, p0, v2}, Landroidx/constraintlayout/utils/widget/MotionButton$1;-><init>(Landroidx/constraintlayout/utils/widget/MotionButton;I)V

    .line 66
    iput-object p1, p0, Landroidx/constraintlayout/utils/widget/MotionButton;->mViewOutlineProvider:Landroidx/constraintlayout/utils/widget/MotionButton$1;

    .line 69
    invoke-virtual {p0, p1}, Landroid/widget/Button;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 71
    :cond_4
    invoke-virtual {p0, v2}, Landroid/widget/Button;->setClipToOutline(Z)V

    .line 74
    invoke-virtual {p0}, Landroid/widget/Button;->getWidth()I

    .line 77
    move-result p1

    .line 80
    invoke-virtual {p0}, Landroid/widget/Button;->getHeight()I

    .line 81
    move-result v1

    .line 84
    iget-object v2, p0, Landroidx/constraintlayout/utils/widget/MotionButton;->mRect:Landroid/graphics/RectF;

    .line 85
    int-to-float p1, p1

    .line 87
    int-to-float v1, v1

    .line 88
    invoke-virtual {v2, v3, v3, p1, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 89
    iget-object p1, p0, Landroidx/constraintlayout/utils/widget/MotionButton;->mPath:Landroid/graphics/Path;

    .line 92
    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    .line 94
    iget-object p1, p0, Landroidx/constraintlayout/utils/widget/MotionButton;->mPath:Landroid/graphics/Path;

    .line 97
    iget-object v1, p0, Landroidx/constraintlayout/utils/widget/MotionButton;->mRect:Landroid/graphics/RectF;

    .line 99
    iget v2, p0, Landroidx/constraintlayout/utils/widget/MotionButton;->mRound:F

    .line 101
    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 103
    invoke-virtual {p1, v1, v2, v2, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 105
    goto :goto_1

    .line 108
    :cond_5
    invoke-virtual {p0, v1}, Landroid/widget/Button;->setClipToOutline(Z)V

    .line 109
    :goto_1
    if-eqz v0, :cond_6

    .line 112
    invoke-virtual {p0}, Landroid/widget/Button;->invalidateOutline()V

    .line 114
    :cond_6
    return-void
    .line 117
.end method

.method public setRoundPercent(F)V
    .locals 5

    .line 1
    iget v0, p0, Landroidx/constraintlayout/utils/widget/MotionButton;->mRoundPercent:F

    .line 2
    cmpl-float v0, v0, p1

    .line 4
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    move v0, v1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v0, v2

    .line 12
    :goto_0
    iput p1, p0, Landroidx/constraintlayout/utils/widget/MotionButton;->mRoundPercent:F

    .line 13
    const/4 v3, 0x0

    .line 15
    cmpl-float p1, p1, v3

    .line 16
    if-eqz p1, :cond_4

    .line 18
    iget-object p1, p0, Landroidx/constraintlayout/utils/widget/MotionButton;->mPath:Landroid/graphics/Path;

    .line 20
    if-nez p1, :cond_1

    .line 22
    new-instance p1, Landroid/graphics/Path;

    .line 24
    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    .line 26
    iput-object p1, p0, Landroidx/constraintlayout/utils/widget/MotionButton;->mPath:Landroid/graphics/Path;

    .line 29
    :cond_1
    iget-object p1, p0, Landroidx/constraintlayout/utils/widget/MotionButton;->mRect:Landroid/graphics/RectF;

    .line 31
    if-nez p1, :cond_2

    .line 33
    new-instance p1, Landroid/graphics/RectF;

    .line 35
    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    .line 37
    iput-object p1, p0, Landroidx/constraintlayout/utils/widget/MotionButton;->mRect:Landroid/graphics/RectF;

    .line 40
    :cond_2
    iget-object p1, p0, Landroidx/constraintlayout/utils/widget/MotionButton;->mViewOutlineProvider:Landroidx/constraintlayout/utils/widget/MotionButton$1;

    .line 42
    if-nez p1, :cond_3

    .line 44
    new-instance p1, Landroidx/constraintlayout/utils/widget/MotionButton$1;

    .line 46
    invoke-direct {p1, p0, v2}, Landroidx/constraintlayout/utils/widget/MotionButton$1;-><init>(Landroidx/constraintlayout/utils/widget/MotionButton;I)V

    .line 48
    iput-object p1, p0, Landroidx/constraintlayout/utils/widget/MotionButton;->mViewOutlineProvider:Landroidx/constraintlayout/utils/widget/MotionButton$1;

    .line 51
    invoke-virtual {p0, p1}, Landroid/widget/Button;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 53
    :cond_3
    invoke-virtual {p0, v1}, Landroid/widget/Button;->setClipToOutline(Z)V

    .line 56
    invoke-virtual {p0}, Landroid/widget/Button;->getWidth()I

    .line 59
    move-result p1

    .line 62
    invoke-virtual {p0}, Landroid/widget/Button;->getHeight()I

    .line 63
    move-result v1

    .line 66
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    .line 67
    move-result v2

    .line 70
    int-to-float v2, v2

    .line 71
    iget v4, p0, Landroidx/constraintlayout/utils/widget/MotionButton;->mRoundPercent:F

    .line 72
    mul-float/2addr v2, v4

    .line 74
    const/high16 v4, 0x40000000    # 2.0f

    .line 75
    div-float/2addr v2, v4

    .line 77
    iget-object v4, p0, Landroidx/constraintlayout/utils/widget/MotionButton;->mRect:Landroid/graphics/RectF;

    .line 78
    int-to-float p1, p1

    .line 80
    int-to-float v1, v1

    .line 81
    invoke-virtual {v4, v3, v3, p1, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 82
    iget-object p1, p0, Landroidx/constraintlayout/utils/widget/MotionButton;->mPath:Landroid/graphics/Path;

    .line 85
    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    .line 87
    iget-object p1, p0, Landroidx/constraintlayout/utils/widget/MotionButton;->mPath:Landroid/graphics/Path;

    .line 90
    iget-object v1, p0, Landroidx/constraintlayout/utils/widget/MotionButton;->mRect:Landroid/graphics/RectF;

    .line 92
    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 94
    invoke-virtual {p1, v1, v2, v2, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 96
    goto :goto_1

    .line 99
    :cond_4
    invoke-virtual {p0, v2}, Landroid/widget/Button;->setClipToOutline(Z)V

    .line 100
    :goto_1
    if-eqz v0, :cond_5

    .line 103
    invoke-virtual {p0}, Landroid/widget/Button;->invalidateOutline()V

    .line 105
    :cond_5
    return-void
    .line 108
.end method
