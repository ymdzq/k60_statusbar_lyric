.class public Lcom/android/settings/emergency/ui/view/CircleProgressBar;
.super Landroid/view/View;
.source "CircleProgressBar.java"


# instance fields
.field private mBackgroundPaint:Landroid/graphics/Paint;

.field private mForegroundPaint:Landroid/graphics/Paint;

.field private mMax:I

.field private mProgress:F

.field private mRectF:Landroid/graphics/RectF;

.field private mStrokeWidth:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 p1, 0x41200000    # 10.0f

    .line 15
    iput p1, p0, Lcom/android/settings/emergency/ui/view/CircleProgressBar;->mStrokeWidth:F

    const/4 p1, 0x0

    .line 16
    iput p1, p0, Lcom/android/settings/emergency/ui/view/CircleProgressBar;->mProgress:F

    const/16 p1, 0x64

    .line 17
    iput p1, p0, Lcom/android/settings/emergency/ui/view/CircleProgressBar;->mMax:I

    .line 35
    invoke-direct {p0}, Lcom/android/settings/emergency/ui/view/CircleProgressBar;->init()V

    return-void
.end method

.method private init()V
    .locals 3

    .line 39
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/settings/emergency/ui/view/CircleProgressBar;->mRectF:Landroid/graphics/RectF;

    .line 40
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/settings/emergency/ui/view/CircleProgressBar;->mBackgroundPaint:Landroid/graphics/Paint;

    const-string v2, "#FF2B1F28"

    .line 41
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 42
    iget-object v0, p0, Lcom/android/settings/emergency/ui/view/CircleProgressBar;->mBackgroundPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 43
    iget-object v0, p0, Lcom/android/settings/emergency/ui/view/CircleProgressBar;->mBackgroundPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/settings/emergency/ui/view/CircleProgressBar;->mStrokeWidth:F

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 45
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/settings/emergency/ui/view/CircleProgressBar;->mForegroundPaint:Landroid/graphics/Paint;

    const-string v1, "#FFC6242B"

    .line 46
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 47
    iget-object v0, p0, Lcom/android/settings/emergency/ui/view/CircleProgressBar;->mForegroundPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 48
    iget-object v0, p0, Lcom/android/settings/emergency/ui/view/CircleProgressBar;->mForegroundPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 49
    iget-object v0, p0, Lcom/android/settings/emergency/ui/view/CircleProgressBar;->mForegroundPaint:Landroid/graphics/Paint;

    iget p0, p0, Lcom/android/settings/emergency/ui/view/CircleProgressBar;->mStrokeWidth:F

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 54
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 55
    iget-object v0, p0, Lcom/android/settings/emergency/ui/view/CircleProgressBar;->mRectF:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/settings/emergency/ui/view/CircleProgressBar;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    const/high16 v0, 0x43b40000    # 360.0f

    .line 56
    iget v1, p0, Lcom/android/settings/emergency/ui/view/CircleProgressBar;->mProgress:F

    mul-float/2addr v1, v0

    iget v0, p0, Lcom/android/settings/emergency/ui/view/CircleProgressBar;->mMax:I

    int-to-float v0, v0

    div-float v5, v1, v0

    .line 58
    iget-object v3, p0, Lcom/android/settings/emergency/ui/view/CircleProgressBar;->mRectF:Landroid/graphics/RectF;

    const/high16 v4, -0x3d4c0000    # -90.0f

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/settings/emergency/ui/view/CircleProgressBar;->mForegroundPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    .line 63
    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-static {v0, p2}, Landroid/view/View;->getDefaultSize(II)I

    move-result p2

    .line 64
    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {v0, p1}, Landroid/view/View;->getDefaultSize(II)I

    move-result p1

    .line 65
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 66
    invoke-virtual {p0, p1, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 67
    iget-object p2, p0, Lcom/android/settings/emergency/ui/view/CircleProgressBar;->mRectF:Landroid/graphics/RectF;

    iget p0, p0, Lcom/android/settings/emergency/ui/view/CircleProgressBar;->mStrokeWidth:F

    const/high16 v0, 0x40000000    # 2.0f

    div-float v1, p0, v0

    const/4 v2, 0x0

    add-float/2addr v1, v2

    div-float v3, p0, v0

    add-float/2addr v3, v2

    int-to-float p1, p1

    div-float v2, p0, v0

    sub-float v2, p1, v2

    div-float/2addr p0, v0

    sub-float/2addr p1, p0

    invoke-virtual {p2, v1, v3, v2, p1}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method public setMax(I)V
    .locals 0

    .line 29
    iput p1, p0, Lcom/android/settings/emergency/ui/view/CircleProgressBar;->mMax:I

    .line 30
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setProgress(F)V
    .locals 0
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 24
    iput p1, p0, Lcom/android/settings/emergency/ui/view/CircleProgressBar;->mProgress:F

    .line 25
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
