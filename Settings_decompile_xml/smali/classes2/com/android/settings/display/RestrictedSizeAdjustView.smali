.class public Lcom/android/settings/display/RestrictedSizeAdjustView;
.super Lmiuix/androidbasewidget/widget/SeekBar;
.source "RestrictedSizeAdjustView.java"


# instance fields
.field private mMiddle:Z

.field private mMiddlePoint:I

.field private mPointPaint:Landroid/graphics/Paint;

.field private mPointsRadius:F

.field private mSmallPointColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lmiuix/androidbasewidget/widget/SeekBar;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 16
    iput-boolean p1, p0, Lcom/android/settings/display/RestrictedSizeAdjustView;->mMiddle:Z

    .line 20
    invoke-direct {p0}, Lcom/android/settings/display/RestrictedSizeAdjustView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Lmiuix/androidbasewidget/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 16
    iput-boolean p1, p0, Lcom/android/settings/display/RestrictedSizeAdjustView;->mMiddle:Z

    .line 25
    invoke-direct {p0}, Lcom/android/settings/display/RestrictedSizeAdjustView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2, p3}, Lmiuix/androidbasewidget/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 16
    iput-boolean p1, p0, Lcom/android/settings/display/RestrictedSizeAdjustView;->mMiddle:Z

    .line 30
    invoke-direct {p0}, Lcom/android/settings/display/RestrictedSizeAdjustView;->init()V

    return-void
.end method

.method private init()V
    .locals 3

    .line 34
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$color;->font_weight_view_small_color:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/display/RestrictedSizeAdjustView;->mSmallPointColor:I

    .line 35
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$dimen;->font_size_view_small_radius:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/settings/display/RestrictedSizeAdjustView;->mPointsRadius:F

    .line 36
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings/display/RestrictedSizeAdjustView;->mPointPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    .line 37
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 38
    iget-object v0, p0, Lcom/android/settings/display/RestrictedSizeAdjustView;->mPointPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 39
    iget-object p0, p0, Lcom/android/settings/display/RestrictedSizeAdjustView;->mPointPaint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method private setMiddlePoint(FI)V
    .locals 1

    const/4 v0, 0x0

    .line 67
    iput v0, p0, Lcom/android/settings/display/RestrictedSizeAdjustView;->mMiddlePoint:I

    .line 68
    div-int/lit8 p2, p2, 0x2

    int-to-float p2, p2

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 p2, 0x41f00000    # 30.0f

    cmpg-float p1, p1, p2

    if-gez p1, :cond_0

    const/4 p1, 0x1

    .line 72
    iput-boolean p1, p0, Lcom/android/settings/display/RestrictedSizeAdjustView;->mMiddle:Z

    .line 73
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getMax()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/android/settings/display/RestrictedSizeAdjustView;->mMiddlePoint:I

    .line 74
    invoke-virtual {p0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0

    .line 76
    :cond_0
    iput-boolean v0, p0, Lcom/android/settings/display/RestrictedSizeAdjustView;->mMiddle:Z

    :goto_0
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 45
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatSeekBar;->onDraw(Landroid/graphics/Canvas;)V

    .line 46
    iget-object v0, p0, Lcom/android/settings/display/RestrictedSizeAdjustView;->mPointPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/settings/display/RestrictedSizeAdjustView;->mSmallPointColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 47
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getMax()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/display/RestrictedSizeAdjustView;->setMiddlePoint(FI)V

    .line 48
    iget-boolean v0, p0, Lcom/android/settings/display/RestrictedSizeAdjustView;->mMiddle:Z

    if-nez v0, :cond_0

    .line 49
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/android/settings/display/RestrictedSizeAdjustView;->mPointsRadius:F

    iget-object p0, p0, Lcom/android/settings/display/RestrictedSizeAdjustView;->mPointPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 55
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    .line 62
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    .line 58
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 59
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getWidth()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/display/RestrictedSizeAdjustView;->setMiddlePoint(FI)V

    return v1
.end method
