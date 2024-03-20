.class public Lcom/android/settings/stylus/MiuiStylusInstructionIndicator;
.super Landroid/view/View;
.source "MiuiStylusInstructionIndicator.java"


# instance fields
.field private mChecked:I

.field private mPaint:Landroid/graphics/Paint;

.field private mUnCheckedPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 15
    iput p1, p0, Lcom/android/settings/stylus/MiuiStylusInstructionIndicator;->mChecked:I

    .line 19
    invoke-direct {p0}, Lcom/android/settings/stylus/MiuiStylusInstructionIndicator;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 15
    iput p1, p0, Lcom/android/settings/stylus/MiuiStylusInstructionIndicator;->mChecked:I

    .line 24
    invoke-direct {p0}, Lcom/android/settings/stylus/MiuiStylusInstructionIndicator;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 15
    iput p1, p0, Lcom/android/settings/stylus/MiuiStylusInstructionIndicator;->mChecked:I

    .line 29
    invoke-direct {p0}, Lcom/android/settings/stylus/MiuiStylusInstructionIndicator;->init()V

    return-void
.end method

.method private init()V
    .locals 4

    .line 33
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/settings/stylus/MiuiStylusInstructionIndicator;->mPaint:Landroid/graphics/Paint;

    .line 34
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 35
    iget-object v0, p0, Lcom/android/settings/stylus/MiuiStylusInstructionIndicator;->mPaint:Landroid/graphics/Paint;

    const/high16 v2, -0x1000000

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 36
    iget-object v0, p0, Lcom/android/settings/stylus/MiuiStylusInstructionIndicator;->mPaint:Landroid/graphics/Paint;

    const/16 v3, 0x4d

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 37
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/settings/stylus/MiuiStylusInstructionIndicator;->mUnCheckedPaint:Landroid/graphics/Paint;

    .line 38
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 39
    iget-object v0, p0, Lcom/android/settings/stylus/MiuiStylusInstructionIndicator;->mUnCheckedPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 40
    iget-object p0, p0, Lcom/android/settings/stylus/MiuiStylusInstructionIndicator;->mUnCheckedPaint:Landroid/graphics/Paint;

    const/16 v0, 0x1a

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 51
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 52
    iget v0, p0, Lcom/android/settings/stylus/MiuiStylusInstructionIndicator;->mChecked:I

    const-wide/high16 v1, 0x4000000000000000L    # 2.0

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    if-nez v0, :cond_0

    .line 53
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-double v5, v0

    add-double/2addr v5, v3

    div-double/2addr v5, v1

    double-to-float v0, v5

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-double v5, v5

    add-double/2addr v5, v3

    div-double/2addr v5, v1

    double-to-float v5, v5

    .line 54
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-double v6, v6

    sub-double/2addr v6, v3

    div-double/2addr v6, v1

    double-to-float v6, v6

    iget-object v7, p0, Lcom/android/settings/stylus/MiuiStylusInstructionIndicator;->mPaint:Landroid/graphics/Paint;

    .line 53
    invoke-virtual {p1, v0, v5, v6, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 55
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-double v5, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-double v7, v0

    add-double/2addr v7, v3

    div-double/2addr v7, v1

    sub-double/2addr v5, v7

    double-to-float v0, v5

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-double v5, v5

    add-double/2addr v5, v3

    div-double/2addr v5, v1

    double-to-float v5, v5

    .line 56
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-double v6, v6

    sub-double/2addr v6, v3

    div-double/2addr v6, v1

    double-to-float v1, v6

    iget-object p0, p0, Lcom/android/settings/stylus/MiuiStylusInstructionIndicator;->mUnCheckedPaint:Landroid/graphics/Paint;

    .line 55
    invoke-virtual {p1, v0, v5, v1, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 58
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-double v5, v0

    add-double/2addr v5, v3

    div-double/2addr v5, v1

    double-to-float v0, v5

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-double v5, v5

    add-double/2addr v5, v3

    div-double/2addr v5, v1

    double-to-float v5, v5

    .line 59
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-double v6, v6

    sub-double/2addr v6, v3

    div-double/2addr v6, v1

    double-to-float v6, v6

    iget-object v7, p0, Lcom/android/settings/stylus/MiuiStylusInstructionIndicator;->mUnCheckedPaint:Landroid/graphics/Paint;

    .line 58
    invoke-virtual {p1, v0, v5, v6, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 60
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-double v5, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-double v7, v0

    add-double/2addr v7, v3

    div-double/2addr v7, v1

    sub-double/2addr v5, v7

    double-to-float v0, v5

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-double v5, v5

    add-double/2addr v5, v3

    div-double/2addr v5, v1

    double-to-float v5, v5

    .line 61
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-double v6, v6

    sub-double/2addr v6, v3

    div-double/2addr v6, v1

    double-to-float v1, v6

    iget-object p0, p0, Lcom/android/settings/stylus/MiuiStylusInstructionIndicator;->mPaint:Landroid/graphics/Paint;

    .line 60
    invoke-virtual {p1, v0, v5, v1, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :goto_0
    return-void
.end method

.method public setCheckItem(I)V
    .locals 0

    .line 44
    iput p1, p0, Lcom/android/settings/stylus/MiuiStylusInstructionIndicator;->mChecked:I

    .line 45
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
