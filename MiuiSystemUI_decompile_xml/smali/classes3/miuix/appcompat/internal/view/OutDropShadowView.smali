.class public Lmiuix/appcompat/internal/view/OutDropShadowView;
.super Landroid/view/View;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final mClipOutPath:Landroid/graphics/Path;

.field public mDensityDpi:F

.field public mDropShadowHelper:Lmiuix/graphics/shadow/DropShadowLayerHelper;

.field public mHostViewRadius:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lmiuix/appcompat/internal/view/OutDropShadowView;->mHostViewRadius:I

    .line 3
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lmiuix/appcompat/internal/view/OutDropShadowView;->mClipOutPath:Landroid/graphics/Path;

    .line 4
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/OutDropShadowView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 6
    iput p1, p0, Lmiuix/appcompat/internal/view/OutDropShadowView;->mHostViewRadius:I

    .line 7
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lmiuix/appcompat/internal/view/OutDropShadowView;->mClipOutPath:Landroid/graphics/Path;

    .line 8
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/OutDropShadowView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 10
    iput p1, p0, Lmiuix/appcompat/internal/view/OutDropShadowView;->mHostViewRadius:I

    .line 11
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lmiuix/appcompat/internal/view/OutDropShadowView;->mClipOutPath:Landroid/graphics/Path;

    .line 12
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/OutDropShadowView;->init()V

    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/OutDropShadowView;->mDropShadowHelper:Lmiuix/graphics/shadow/DropShadowLayerHelper;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lmiuix/appcompat/internal/view/OutDropShadowView;->mClipOutPath:Landroid/graphics/Path;

    .line 6
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipOutPath(Landroid/graphics/Path;)Z

    .line 8
    iget-object v0, p0, Lmiuix/appcompat/internal/view/OutDropShadowView;->mDropShadowHelper:Lmiuix/graphics/shadow/DropShadowLayerHelper;

    .line 11
    iget v1, p0, Lmiuix/appcompat/internal/view/OutDropShadowView;->mHostViewRadius:I

    .line 13
    int-to-float v1, v1

    .line 15
    iget-object v2, v0, Lmiuix/graphics/shadow/DropShadowLayerHelper;->mShadowRect:Landroid/graphics/RectF;

    .line 16
    iget-object v0, v0, Lmiuix/graphics/shadow/DropShadowLayerHelper;->mShadowPaint:Landroid/graphics/Paint;

    .line 18
    invoke-virtual {p1, v2, v1, v1, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 20
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 23
    return-void
    .line 26
.end method

.method public final init()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 10
    move-result-object v0

    .line 13
    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 14
    int-to-float v0, v0

    .line 16
    iput v0, p0, Lmiuix/appcompat/internal/view/OutDropShadowView;->mDensityDpi:F

    .line 17
    new-instance v0, Lmiuix/graphics/shadow/DropShadowConfig;

    .line 19
    invoke-direct {v0}, Lmiuix/graphics/shadow/DropShadowConfig;-><init>()V

    .line 21
    const/4 v1, 0x6

    .line 24
    int-to-float v1, v1

    .line 25
    iput v1, v0, Lmiuix/graphics/shadow/DropShadowConfig;->offsetYDp:F

    .line 26
    new-instance v1, Lmiuix/graphics/shadow/DropShadowLayerHelper;

    .line 28
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 30
    move-result-object v2

    .line 33
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 34
    move-result-object v3

    .line 37
    const v4, 0x7f0403e2    # @attr/isLightTheme

    .line 38
    const/4 v5, 0x1

    .line 41
    invoke-static {v4, v5, v3}, Lmiuix/internal/util/AttributeResolver;->resolveBoolean(IZLandroid/content/Context;)Z

    .line 42
    move-result v3

    .line 45
    invoke-direct {v1, v2, v0, v3}, Lmiuix/graphics/shadow/DropShadowLayerHelper;-><init>(Landroid/content/Context;Lmiuix/graphics/shadow/DropShadowConfig;Z)V

    .line 46
    iput-object v1, p0, Lmiuix/appcompat/internal/view/OutDropShadowView;->mDropShadowHelper:Lmiuix/graphics/shadow/DropShadowLayerHelper;

    .line 49
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 51
    move-result v0

    .line 54
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 55
    move-result v2

    .line 58
    iget-object v1, v1, Lmiuix/graphics/shadow/DropShadowLayerHelper;->mShadowRect:Landroid/graphics/RectF;

    .line 59
    int-to-float v0, v0

    .line 61
    const/4 v3, 0x0

    .line 62
    int-to-float v4, v3

    .line 63
    sub-float/2addr v0, v4

    .line 64
    int-to-float v2, v2

    .line 65
    sub-float/2addr v2, v4

    .line 66
    const/4 v4, 0x0

    .line 67
    invoke-virtual {v1, v4, v4, v0, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 68
    invoke-virtual {p0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 71
    const/4 v0, 0x4

    .line 74
    invoke-virtual {p0, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 75
    return-void
    .line 78
.end method

.method public final onAttachedToWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 2
    iget-object v0, p0, Lmiuix/appcompat/internal/view/OutDropShadowView;->mDropShadowHelper:Lmiuix/graphics/shadow/DropShadowLayerHelper;

    .line 5
    const/4 v1, 0x1

    .line 7
    invoke-virtual {v0, p0, v1}, Lmiuix/graphics/shadow/DropShadowLayerHelper;->enableViewShadow(Landroid/view/View;Z)V

    .line 8
    return-void
    .line 11
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 1
    iget v0, p1, Landroid/content/res/Configuration;->densityDpi:I

    .line 2
    int-to-float v0, v0

    .line 4
    iget v1, p0, Lmiuix/appcompat/internal/view/OutDropShadowView;->mDensityDpi:F

    .line 5
    cmpl-float v0, v0, v1

    .line 7
    if-eqz v0, :cond_0

    .line 9
    iget-object v0, p0, Lmiuix/appcompat/internal/view/OutDropShadowView;->mDropShadowHelper:Lmiuix/graphics/shadow/DropShadowLayerHelper;

    .line 11
    if-eqz v0, :cond_0

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 15
    move-result-object p0

    .line 18
    const v1, 0x7f0403e2    # @attr/isLightTheme

    .line 19
    const/4 v2, 0x1

    .line 22
    invoke-static {v1, v2, p0}, Lmiuix/internal/util/AttributeResolver;->resolveBoolean(IZLandroid/content/Context;)Z

    .line 23
    move-result p0

    .line 26
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    iget p1, p1, Landroid/content/res/Configuration;->densityDpi:I

    .line 30
    int-to-float p1, p1

    .line 32
    const/high16 v1, 0x3f800000    # 1.0f

    .line 33
    mul-float/2addr p1, v1

    .line 35
    const/high16 v1, 0x43200000    # 160.0f

    .line 36
    div-float/2addr p1, v1

    .line 38
    iget-object v1, v0, Lmiuix/graphics/shadow/DropShadowLayerHelper;->mDropShadowConfig:Lmiuix/graphics/shadow/DropShadowConfig;

    .line 39
    invoke-virtual {v0, p0, p1, v1}, Lmiuix/graphics/shadow/DropShadowLayerHelper;->updateShadowValues(ZFLmiuix/graphics/shadow/DropShadowConfig;)V

    .line 41
    :cond_0
    return-void
    .line 44
.end method

.method public final onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 2
    iget-object p1, p0, Lmiuix/appcompat/internal/view/OutDropShadowView;->mDropShadowHelper:Lmiuix/graphics/shadow/DropShadowLayerHelper;

    .line 5
    if-eqz p1, :cond_0

    .line 7
    iget-object p1, p1, Lmiuix/graphics/shadow/DropShadowLayerHelper;->mShadowRect:Landroid/graphics/RectF;

    .line 9
    int-to-float p4, p4

    .line 11
    int-to-float p2, p2

    .line 12
    sub-float/2addr p4, p2

    .line 13
    int-to-float p2, p5

    .line 14
    int-to-float p3, p3

    .line 15
    sub-float/2addr p2, p3

    .line 16
    const/4 p3, 0x0

    .line 17
    invoke-virtual {p1, p3, p3, p4, p2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 18
    iget-object p1, p0, Lmiuix/appcompat/internal/view/OutDropShadowView;->mClipOutPath:Landroid/graphics/Path;

    .line 21
    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    .line 23
    iget-object p1, p0, Lmiuix/appcompat/internal/view/OutDropShadowView;->mClipOutPath:Landroid/graphics/Path;

    .line 26
    iget-object p2, p0, Lmiuix/appcompat/internal/view/OutDropShadowView;->mDropShadowHelper:Lmiuix/graphics/shadow/DropShadowLayerHelper;

    .line 28
    iget-object p2, p2, Lmiuix/graphics/shadow/DropShadowLayerHelper;->mShadowRect:Landroid/graphics/RectF;

    .line 30
    iget p0, p0, Lmiuix/appcompat/internal/view/OutDropShadowView;->mHostViewRadius:I

    .line 32
    int-to-float p0, p0

    .line 34
    sget-object p3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 35
    invoke-virtual {p1, p2, p0, p0, p3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 37
    :cond_0
    return-void
    .line 40
.end method

.method public setShadowHostViewRadius(I)V
    .locals 3

    .line 1
    iput p1, p0, Lmiuix/appcompat/internal/view/OutDropShadowView;->mHostViewRadius:I

    .line 2
    iget-object p1, p0, Lmiuix/appcompat/internal/view/OutDropShadowView;->mClipOutPath:Landroid/graphics/Path;

    .line 4
    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    .line 6
    iget-object p1, p0, Lmiuix/appcompat/internal/view/OutDropShadowView;->mClipOutPath:Landroid/graphics/Path;

    .line 9
    iget-object v0, p0, Lmiuix/appcompat/internal/view/OutDropShadowView;->mDropShadowHelper:Lmiuix/graphics/shadow/DropShadowLayerHelper;

    .line 11
    iget-object v0, v0, Lmiuix/graphics/shadow/DropShadowLayerHelper;->mShadowRect:Landroid/graphics/RectF;

    .line 13
    iget p0, p0, Lmiuix/appcompat/internal/view/OutDropShadowView;->mHostViewRadius:I

    .line 15
    int-to-float v1, p0

    .line 17
    int-to-float p0, p0

    .line 18
    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 19
    invoke-virtual {p1, v0, v1, p0, v2}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 21
    return-void
    .line 24
.end method
