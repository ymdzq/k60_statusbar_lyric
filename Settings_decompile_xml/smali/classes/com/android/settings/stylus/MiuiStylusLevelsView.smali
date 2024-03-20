.class public Lcom/android/settings/stylus/MiuiStylusLevelsView;
.super Landroid/view/View;
.source "MiuiStylusLevelsView.java"


# instance fields
.field private mElectricity:I

.field private mGreenEndDrawable:Landroid/graphics/drawable/Drawable;

.field private mGreenMiddleDrawable:Landroid/graphics/drawable/Drawable;

.field private mGreenStartDrawable:Landroid/graphics/drawable/Drawable;

.field private mPenEmpty:Landroid/graphics/drawable/Drawable;

.field private mRedEndDrawable:Landroid/graphics/drawable/Drawable;

.field private mRedMiddleDrawable:Landroid/graphics/drawable/Drawable;

.field private mRedStartDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x32

    .line 24
    iput p1, p0, Lcom/android/settings/stylus/MiuiStylusLevelsView;->mElectricity:I

    .line 29
    invoke-direct {p0}, Lcom/android/settings/stylus/MiuiStylusLevelsView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p1, 0x32

    .line 24
    iput p1, p0, Lcom/android/settings/stylus/MiuiStylusLevelsView;->mElectricity:I

    .line 34
    invoke-direct {p0}, Lcom/android/settings/stylus/MiuiStylusLevelsView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p1, 0x32

    .line 24
    iput p1, p0, Lcom/android/settings/stylus/MiuiStylusLevelsView;->mElectricity:I

    .line 39
    invoke-direct {p0}, Lcom/android/settings/stylus/MiuiStylusLevelsView;->init()V

    return-void
.end method

.method private getEnd()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 94
    iget v0, p0, Lcom/android/settings/stylus/MiuiStylusLevelsView;->mElectricity:I

    const/16 v1, 0x14

    if-gt v0, v1, :cond_0

    iget-object p0, p0, Lcom/android/settings/stylus/MiuiStylusLevelsView;->mRedEndDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/settings/stylus/MiuiStylusLevelsView;->mGreenEndDrawable:Landroid/graphics/drawable/Drawable;

    :goto_0
    return-object p0
.end method

.method private getMiddle()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 90
    iget v0, p0, Lcom/android/settings/stylus/MiuiStylusLevelsView;->mElectricity:I

    const/16 v1, 0x14

    if-gt v0, v1, :cond_0

    iget-object p0, p0, Lcom/android/settings/stylus/MiuiStylusLevelsView;->mRedMiddleDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/settings/stylus/MiuiStylusLevelsView;->mGreenMiddleDrawable:Landroid/graphics/drawable/Drawable;

    :goto_0
    return-object p0
.end method

.method private getStart()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 86
    iget v0, p0, Lcom/android/settings/stylus/MiuiStylusLevelsView;->mElectricity:I

    const/16 v1, 0x14

    if-gt v0, v1, :cond_0

    iget-object p0, p0, Lcom/android/settings/stylus/MiuiStylusLevelsView;->mRedStartDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/settings/stylus/MiuiStylusLevelsView;->mGreenStartDrawable:Landroid/graphics/drawable/Drawable;

    :goto_0
    return-object p0
.end method

.method private init()V
    .locals 2

    .line 43
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/settings/R$drawable;->stylus_pen_empty:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/stylus/MiuiStylusLevelsView;->mPenEmpty:Landroid/graphics/drawable/Drawable;

    .line 44
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/settings/R$drawable;->stylus_green_start:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/stylus/MiuiStylusLevelsView;->mGreenStartDrawable:Landroid/graphics/drawable/Drawable;

    .line 45
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/settings/R$drawable;->stylus_green_middle:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/stylus/MiuiStylusLevelsView;->mGreenMiddleDrawable:Landroid/graphics/drawable/Drawable;

    .line 46
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/settings/R$drawable;->stylus_green_end:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/stylus/MiuiStylusLevelsView;->mGreenEndDrawable:Landroid/graphics/drawable/Drawable;

    .line 47
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/settings/R$drawable;->stylus_red_start:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/stylus/MiuiStylusLevelsView;->mRedStartDrawable:Landroid/graphics/drawable/Drawable;

    .line 48
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/settings/R$drawable;->stylus_red_middle:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/stylus/MiuiStylusLevelsView;->mRedMiddleDrawable:Landroid/graphics/drawable/Drawable;

    .line 49
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/settings/R$drawable;->stylus_red_end:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/stylus/MiuiStylusLevelsView;->mRedEndDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 54
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 55
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-double v2, v0

    const-wide v4, 0x3fb970e4f80cb872L    # 0.09937888198757763

    mul-double/2addr v4, v2

    double-to-int v4, v4

    const-wide v5, 0x3fa314abba098a56L    # 0.037267080745341616

    mul-double/2addr v2, v5

    double-to-int v2, v2

    add-int/2addr v2, v4

    .line 60
    iget v3, p0, Lcom/android/settings/stylus/MiuiStylusLevelsView;->mElectricity:I

    const/4 v5, 0x0

    const/4 v6, 0x5

    if-gt v3, v6, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    sub-int/2addr v3, v6

    int-to-double v6, v3

    const-wide v8, 0x4057c00000000000L    # 95.0

    div-double/2addr v6, v8

    sub-int v3, v0, v2

    int-to-double v8, v3

    mul-double/2addr v6, v8

    double-to-int v3, v6

    :goto_0
    sub-int v2, v0, v2

    sub-int/2addr v2, v3

    .line 67
    invoke-direct {p0}, Lcom/android/settings/stylus/MiuiStylusLevelsView;->getStart()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 68
    invoke-virtual {v6, v5, v5, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 69
    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 72
    invoke-direct {p0}, Lcom/android/settings/stylus/MiuiStylusLevelsView;->getMiddle()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    add-int/2addr v3, v4

    .line 73
    invoke-virtual {v6, v4, v5, v3, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 74
    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 76
    invoke-direct {p0}, Lcom/android/settings/stylus/MiuiStylusLevelsView;->getEnd()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    neg-int v4, v2

    sub-int v2, v0, v2

    .line 77
    invoke-virtual {v3, v4, v5, v2, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 78
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 80
    iget-object v2, p0, Lcom/android/settings/stylus/MiuiStylusLevelsView;->mPenEmpty:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v5, v5, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 81
    iget-object v0, p0, Lcom/android/settings/stylus/MiuiStylusLevelsView;->mPenEmpty:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 82
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public setElectricity(I)V
    .locals 0

    .line 98
    iput p1, p0, Lcom/android/settings/stylus/MiuiStylusLevelsView;->mElectricity:I

    .line 99
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
