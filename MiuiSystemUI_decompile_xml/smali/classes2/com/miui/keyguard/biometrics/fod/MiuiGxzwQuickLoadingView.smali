.class public final Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickLoadingView;
.super Landroid/view/View;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public mCurrentLoadingRadius:F

.field public mLoading:Z

.field public mLoadingMaxRadius:F

.field public final mLoadingOriginalRadius:F

.field public mPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;F)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2
    iget p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickLoadingView;->mLoadingOriginalRadius:F

    .line 5
    iput p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickLoadingView;->mCurrentLoadingRadius:F

    .line 7
    const/4 p1, 0x0

    .line 9
    iput-boolean p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickLoadingView;->mLoading:Z

    .line 10
    iput p2, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickLoadingView;->mLoadingOriginalRadius:F

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 14
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 18
    move-result-object p1

    .line 21
    const p2, 0x7f0703bb    # @dimen/gxzw_quick_open_loading_max_radius '88.0dp'

    .line 22
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    .line 25
    move-result p1

    .line 28
    iput p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickLoadingView;->mLoadingMaxRadius:F

    .line 29
    new-instance p1, Landroid/graphics/Paint;

    .line 31
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickLoadingView;->mPaint:Landroid/graphics/Paint;

    .line 36
    const/4 p2, 0x1

    .line 38
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 39
    iget-object p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickLoadingView;->mPaint:Landroid/graphics/Paint;

    .line 42
    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 44
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 46
    iget-object p0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickLoadingView;->mPaint:Landroid/graphics/Paint;

    .line 49
    const/high16 p1, 0x3f800000    # 1.0f

    .line 51
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 53
    return-void
    .line 56
.end method


# virtual methods
.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 5
    move-result v0

    .line 8
    div-int/lit8 v0, v0, 0x2

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 11
    move-result v1

    .line 14
    div-int/lit8 v1, v1, 0x2

    .line 15
    iget-boolean v2, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickLoadingView;->mLoading:Z

    .line 17
    if-eqz v2, :cond_0

    .line 19
    iget-object v2, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickLoadingView;->mPaint:Landroid/graphics/Paint;

    .line 21
    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 23
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 25
    iget-object v2, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickLoadingView;->mPaint:Landroid/graphics/Paint;

    .line 28
    const v3, 0x4de6e6e6    # 4.8423648E8f

    .line 30
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 33
    int-to-float v0, v0

    .line 36
    int-to-float v1, v1

    .line 37
    iget v2, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickLoadingView;->mCurrentLoadingRadius:F

    .line 38
    iget-object p0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickLoadingView;->mPaint:Landroid/graphics/Paint;

    .line 40
    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 42
    goto :goto_0

    .line 45
    :cond_0
    iget-object v2, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickLoadingView;->mPaint:Landroid/graphics/Paint;

    .line 46
    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 48
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 50
    iget-object v2, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickLoadingView;->mPaint:Landroid/graphics/Paint;

    .line 53
    const v3, 0x1affffff

    .line 55
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 58
    int-to-float v0, v0

    .line 61
    int-to-float v1, v1

    .line 62
    iget v2, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickLoadingView;->mCurrentLoadingRadius:F

    .line 63
    iget-object v3, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickLoadingView;->mPaint:Landroid/graphics/Paint;

    .line 65
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 67
    iget-object v2, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickLoadingView;->mPaint:Landroid/graphics/Paint;

    .line 70
    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 72
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 74
    iget-object v2, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickLoadingView;->mPaint:Landroid/graphics/Paint;

    .line 77
    const v3, 0x4dffffff    # 5.3687088E8f

    .line 79
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 82
    iget v2, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickLoadingView;->mCurrentLoadingRadius:F

    .line 85
    iget-object p0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickLoadingView;->mPaint:Landroid/graphics/Paint;

    .line 87
    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 89
    :goto_0
    return-void
    .line 92
.end method
