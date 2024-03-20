.class public Lcom/miui/maml/elements/PaintScreenElement;
.super Lcom/miui/maml/elements/AnimatedScreenElement;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field private static DEFAULT_WEIGHT:F = 1.0f

.field public static final TAG_NAME:Ljava/lang/String; = "Paint"


# instance fields
.field private mCachedBitmap:Landroid/graphics/Bitmap;

.field private mCachedCanvas:Landroid/graphics/Canvas;

.field private mCachedPaint:Landroid/graphics/Paint;

.field private mColor:I

.field private mColorParser:Lcom/miui/maml/util/ColorParser;

.field private mPaint:Landroid/graphics/Paint;

.field private mPath:Landroid/graphics/Path;

.field private mPendingMouseUp:Z

.field private mWeight:F

.field private mWeightExp:Lcom/miui/maml/data/Expression;

.field private mXfermode:Landroid/graphics/Xfermode;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/AnimatedScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/PaintScreenElement;->load(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 5
    new-instance p1, Landroid/graphics/Path;

    .line 8
    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/miui/maml/elements/PaintScreenElement;->mPath:Landroid/graphics/Path;

    .line 13
    sget p1, Lcom/miui/maml/elements/PaintScreenElement;->DEFAULT_WEIGHT:F

    .line 15
    float-to-double p1, p1

    .line 17
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/elements/ScreenElement;->scale(D)F

    .line 18
    move-result p1

    .line 21
    sput p1, Lcom/miui/maml/elements/PaintScreenElement;->DEFAULT_WEIGHT:F

    .line 22
    iput p1, p0, Lcom/miui/maml/elements/PaintScreenElement;->mWeight:F

    .line 24
    new-instance p1, Landroid/graphics/Paint;

    .line 26
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/miui/maml/elements/PaintScreenElement;->mPaint:Landroid/graphics/Paint;

    .line 31
    iget-object p2, p0, Lcom/miui/maml/elements/PaintScreenElement;->mXfermode:Landroid/graphics/Xfermode;

    .line 33
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 35
    iget-object p1, p0, Lcom/miui/maml/elements/PaintScreenElement;->mPaint:Landroid/graphics/Paint;

    .line 38
    const/4 p2, 0x1

    .line 40
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 41
    new-instance p1, Landroid/graphics/Paint;

    .line 44
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/miui/maml/elements/PaintScreenElement;->mCachedPaint:Landroid/graphics/Paint;

    .line 49
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 51
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 53
    iget-object p1, p0, Lcom/miui/maml/elements/PaintScreenElement;->mCachedPaint:Landroid/graphics/Paint;

    .line 56
    sget v0, Lcom/miui/maml/elements/PaintScreenElement;->DEFAULT_WEIGHT:F

    .line 58
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 60
    iget-object p1, p0, Lcom/miui/maml/elements/PaintScreenElement;->mCachedPaint:Landroid/graphics/Paint;

    .line 63
    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    .line 65
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 67
    iget-object p1, p0, Lcom/miui/maml/elements/PaintScreenElement;->mCachedPaint:Landroid/graphics/Paint;

    .line 70
    sget-object v0, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    .line 72
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 74
    iget-object p1, p0, Lcom/miui/maml/elements/PaintScreenElement;->mCachedPaint:Landroid/graphics/Paint;

    .line 77
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 79
    iput-boolean p2, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mTouchable:Z

    .line 82
    return-void
    .line 84
.end method

.method private load(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    return-void

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 5
    move-result-object p2

    .line 8
    const-string/jumbo v0, "weight"

    .line 9
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 15
    invoke-static {p2, v0}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 16
    move-result-object v0

    .line 19
    iput-object v0, p0, Lcom/miui/maml/elements/PaintScreenElement;->mWeightExp:Lcom/miui/maml/data/Expression;

    .line 20
    invoke-static {p2, p1}, Lcom/miui/maml/util/ColorParser;->fromElement(Lcom/miui/maml/data/Variables;Lorg/w3c/dom/Element;)Lcom/miui/maml/util/ColorParser;

    .line 22
    move-result-object p2

    .line 25
    iput-object p2, p0, Lcom/miui/maml/elements/PaintScreenElement;->mColorParser:Lcom/miui/maml/util/ColorParser;

    .line 26
    new-instance p2, Landroid/graphics/PorterDuffXfermode;

    .line 28
    const-string/jumbo v0, "xfermode"

    .line 30
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    move-result-object p1

    .line 36
    invoke-static {p1}, Lcom/miui/maml/util/Utils;->getPorterDuffMode(Ljava/lang/String;)Landroid/graphics/PorterDuff$Mode;

    .line 37
    move-result-object p1

    .line 40
    invoke-direct {p2, p1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 41
    iput-object p2, p0, Lcom/miui/maml/elements/PaintScreenElement;->mXfermode:Landroid/graphics/Xfermode;

    .line 44
    return-void
    .line 46
.end method


# virtual methods
.method public doRender(Landroid/graphics/Canvas;)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getWidth()F

    .line 2
    move-result v0

    .line 5
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getHeight()F

    .line 6
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-virtual {p0, v2, v0}, Lcom/miui/maml/elements/ScreenElement;->getLeft(FF)F

    .line 11
    move-result v0

    .line 14
    invoke-virtual {p0, v2, v1}, Lcom/miui/maml/elements/ScreenElement;->getTop(FF)F

    .line 15
    move-result v1

    .line 18
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getAbsoluteLeft()F

    .line 19
    move-result v3

    .line 22
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getAbsoluteTop()F

    .line 23
    move-result v4

    .line 26
    iget-boolean v5, p0, Lcom/miui/maml/elements/PaintScreenElement;->mPendingMouseUp:Z

    .line 27
    if-eqz v5, :cond_0

    .line 29
    iget-object v5, p0, Lcom/miui/maml/elements/PaintScreenElement;->mCachedCanvas:Landroid/graphics/Canvas;

    .line 31
    invoke-virtual {v5}, Landroid/graphics/Canvas;->save()I

    .line 33
    iget-object v5, p0, Lcom/miui/maml/elements/PaintScreenElement;->mCachedCanvas:Landroid/graphics/Canvas;

    .line 36
    neg-float v6, v3

    .line 38
    neg-float v7, v4

    .line 39
    invoke-virtual {v5, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 40
    iget-object v5, p0, Lcom/miui/maml/elements/PaintScreenElement;->mCachedCanvas:Landroid/graphics/Canvas;

    .line 43
    iget-object v6, p0, Lcom/miui/maml/elements/PaintScreenElement;->mPath:Landroid/graphics/Path;

    .line 45
    iget-object v7, p0, Lcom/miui/maml/elements/PaintScreenElement;->mCachedPaint:Landroid/graphics/Paint;

    .line 47
    invoke-virtual {v5, v6, v7}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 49
    iget-object v5, p0, Lcom/miui/maml/elements/PaintScreenElement;->mCachedCanvas:Landroid/graphics/Canvas;

    .line 52
    invoke-virtual {v5}, Landroid/graphics/Canvas;->restore()V

    .line 54
    iget-object v5, p0, Lcom/miui/maml/elements/PaintScreenElement;->mPath:Landroid/graphics/Path;

    .line 57
    invoke-virtual {v5}, Landroid/graphics/Path;->reset()V

    .line 59
    const/4 v5, 0x0

    .line 62
    iput-boolean v5, p0, Lcom/miui/maml/elements/PaintScreenElement;->mPendingMouseUp:Z

    .line 63
    :cond_0
    iget-object v5, p0, Lcom/miui/maml/elements/PaintScreenElement;->mCachedBitmap:Landroid/graphics/Bitmap;

    .line 65
    iget-object v6, p0, Lcom/miui/maml/elements/PaintScreenElement;->mPaint:Landroid/graphics/Paint;

    .line 67
    invoke-virtual {p1, v5, v0, v1, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 69
    iget-boolean v5, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mPressed:Z

    .line 72
    if-eqz v5, :cond_1

    .line 74
    iget v5, p0, Lcom/miui/maml/elements/PaintScreenElement;->mWeight:F

    .line 76
    cmpl-float v2, v5, v2

    .line 78
    if-lez v2, :cond_1

    .line 80
    iget v2, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mAlpha:I

    .line 82
    if-lez v2, :cond_1

    .line 84
    iget-object v2, p0, Lcom/miui/maml/elements/PaintScreenElement;->mCachedPaint:Landroid/graphics/Paint;

    .line 86
    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 88
    iget-object v2, p0, Lcom/miui/maml/elements/PaintScreenElement;->mCachedPaint:Landroid/graphics/Paint;

    .line 91
    iget v5, p0, Lcom/miui/maml/elements/PaintScreenElement;->mColor:I

    .line 93
    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 95
    iget-object v2, p0, Lcom/miui/maml/elements/PaintScreenElement;->mCachedPaint:Landroid/graphics/Paint;

    .line 98
    invoke-virtual {v2}, Landroid/graphics/Paint;->getAlpha()I

    .line 100
    move-result v5

    .line 103
    iget v6, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mAlpha:I

    .line 104
    invoke-static {v5, v6}, Lcom/miui/maml/util/Utils;->mixAlpha(II)I

    .line 106
    move-result v5

    .line 109
    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 110
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 113
    neg-float v2, v3

    .line 116
    add-float/2addr v2, v0

    .line 117
    neg-float v0, v4

    .line 118
    add-float/2addr v0, v1

    .line 119
    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 120
    iget-object v0, p0, Lcom/miui/maml/elements/PaintScreenElement;->mCachedPaint:Landroid/graphics/Paint;

    .line 123
    invoke-virtual {v0}, Landroid/graphics/Paint;->getXfermode()Landroid/graphics/Xfermode;

    .line 125
    move-result-object v0

    .line 128
    iget-object v1, p0, Lcom/miui/maml/elements/PaintScreenElement;->mCachedPaint:Landroid/graphics/Paint;

    .line 129
    iget-object v2, p0, Lcom/miui/maml/elements/PaintScreenElement;->mXfermode:Landroid/graphics/Xfermode;

    .line 131
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 133
    iget-object v1, p0, Lcom/miui/maml/elements/PaintScreenElement;->mPath:Landroid/graphics/Path;

    .line 136
    iget-object v2, p0, Lcom/miui/maml/elements/PaintScreenElement;->mCachedPaint:Landroid/graphics/Paint;

    .line 138
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 140
    iget-object p0, p0, Lcom/miui/maml/elements/PaintScreenElement;->mCachedPaint:Landroid/graphics/Paint;

    .line 143
    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 145
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 148
    :cond_1
    return-void
    .line 151
.end method

.method public doTick(J)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/miui/maml/elements/AnimatedScreenElement;->doTick(J)V

    .line 2
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->isVisible()Z

    .line 5
    move-result p1

    .line 8
    if-nez p1, :cond_0

    .line 9
    return-void

    .line 11
    :cond_0
    iget-object p1, p0, Lcom/miui/maml/elements/PaintScreenElement;->mWeightExp:Lcom/miui/maml/data/Expression;

    .line 12
    if-eqz p1, :cond_1

    .line 14
    invoke-virtual {p1}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 16
    move-result-wide p1

    .line 19
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/elements/ScreenElement;->scale(D)F

    .line 20
    move-result p1

    .line 23
    iput p1, p0, Lcom/miui/maml/elements/PaintScreenElement;->mWeight:F

    .line 24
    :cond_1
    iget-object p1, p0, Lcom/miui/maml/elements/PaintScreenElement;->mColorParser:Lcom/miui/maml/util/ColorParser;

    .line 26
    invoke-virtual {p1}, Lcom/miui/maml/util/ColorParser;->getColor()I

    .line 28
    move-result p1

    .line 31
    iput p1, p0, Lcom/miui/maml/elements/PaintScreenElement;->mColor:I

    .line 32
    return-void
    .line 34
.end method

.method public finish()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->finish()V

    .line 2
    iget-object v0, p0, Lcom/miui/maml/elements/PaintScreenElement;->mCachedBitmap:Landroid/graphics/Bitmap;

    .line 5
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 7
    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/miui/maml/elements/PaintScreenElement;->mCachedBitmap:Landroid/graphics/Bitmap;

    .line 11
    iput-object v0, p0, Lcom/miui/maml/elements/PaintScreenElement;->mCachedCanvas:Landroid/graphics/Canvas;

    .line 13
    return-void
    .line 15
.end method

.method public init()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->init()V

    .line 2
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getWidth()F

    .line 5
    move-result v0

    .line 8
    const/4 v1, 0x0

    .line 9
    cmpg-float v2, v0, v1

    .line 10
    if-gez v2, :cond_0

    .line 12
    const-string v0, "screen_width"

    .line 14
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 16
    move-result-object v2

    .line 19
    invoke-static {v0, v2}, Lcom/miui/maml/util/Utils;->getVariableNumber(Ljava/lang/String;Lcom/miui/maml/data/Variables;)D

    .line 20
    move-result-wide v2

    .line 23
    invoke-virtual {p0, v2, v3}, Lcom/miui/maml/elements/ScreenElement;->scale(D)F

    .line 24
    move-result v0

    .line 27
    :cond_0
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getHeight()F

    .line 28
    move-result v2

    .line 31
    cmpg-float v1, v2, v1

    .line 32
    if-gez v1, :cond_1

    .line 34
    const-string v1, "screen_height"

    .line 36
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 38
    move-result-object v2

    .line 41
    invoke-static {v1, v2}, Lcom/miui/maml/util/Utils;->getVariableNumber(Ljava/lang/String;Lcom/miui/maml/data/Variables;)D

    .line 42
    move-result-wide v1

    .line 45
    invoke-virtual {p0, v1, v2}, Lcom/miui/maml/elements/ScreenElement;->scale(D)F

    .line 46
    move-result v2

    .line 49
    :cond_1
    float-to-double v0, v0

    .line 50
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    .line 51
    move-result-wide v0

    .line 54
    double-to-int v0, v0

    .line 55
    float-to-double v1, v2

    .line 56
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    .line 57
    move-result-wide v1

    .line 60
    double-to-int v1, v1

    .line 61
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 62
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 64
    move-result-object v0

    .line 67
    iput-object v0, p0, Lcom/miui/maml/elements/PaintScreenElement;->mCachedBitmap:Landroid/graphics/Bitmap;

    .line 68
    iget-object v1, p0, Lcom/miui/maml/elements/ScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 70
    invoke-virtual {v1}, Lcom/miui/maml/ScreenElementRoot;->getTargetDensity()I

    .line 72
    move-result v1

    .line 75
    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 76
    new-instance v0, Landroid/graphics/Canvas;

    .line 79
    iget-object v1, p0, Lcom/miui/maml/elements/PaintScreenElement;->mCachedBitmap:Landroid/graphics/Bitmap;

    .line 81
    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 83
    iput-object v0, p0, Lcom/miui/maml/elements/PaintScreenElement;->mCachedCanvas:Landroid/graphics/Canvas;

    .line 86
    return-void
    .line 88
.end method

.method public onActionCancel()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/miui/maml/elements/PaintScreenElement;->mPendingMouseUp:Z

    .line 3
    return-void
    .line 5
.end method

.method public onActionDown(FF)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Lcom/miui/maml/elements/AnimatedScreenElement;->onActionDown(FF)V

    .line 2
    iget-object v0, p0, Lcom/miui/maml/elements/PaintScreenElement;->mPath:Landroid/graphics/Path;

    .line 5
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 7
    iget-object p0, p0, Lcom/miui/maml/elements/PaintScreenElement;->mPath:Landroid/graphics/Path;

    .line 10
    invoke-virtual {p0, p1, p2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 12
    return-void
    .line 15
.end method

.method public onActionMove(FF)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/miui/maml/elements/AnimatedScreenElement;->onActionMove(FF)V

    .line 2
    iget-object p0, p0, Lcom/miui/maml/elements/PaintScreenElement;->mPath:Landroid/graphics/Path;

    .line 5
    invoke-virtual {p0, p1, p2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 7
    return-void
    .line 10
.end method

.method public onActionUp()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->onActionUp()V

    .line 2
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/miui/maml/elements/PaintScreenElement;->mPendingMouseUp:Z

    .line 6
    return-void
    .line 8
.end method

.method public reset(J)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Lcom/miui/maml/elements/ScreenElement;->reset(J)V

    .line 2
    iget-object p1, p0, Lcom/miui/maml/elements/PaintScreenElement;->mCachedCanvas:Landroid/graphics/Canvas;

    .line 5
    sget-object p2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    .line 7
    const/4 v0, 0x0

    .line 9
    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 10
    iput-boolean v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mPressed:Z

    .line 13
    return-void
    .line 15
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/miui/maml/elements/AnimatedScreenElement;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 2
    iget-object p0, p0, Lcom/miui/maml/elements/PaintScreenElement;->mPaint:Landroid/graphics/Paint;

    .line 5
    if-eqz p0, :cond_0

    .line 7
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 9
    :cond_0
    return-void
    .line 12
.end method
