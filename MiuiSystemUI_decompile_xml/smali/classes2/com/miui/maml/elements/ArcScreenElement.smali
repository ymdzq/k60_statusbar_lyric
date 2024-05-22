.class public Lcom/miui/maml/elements/ArcScreenElement;
.super Lcom/miui/maml/elements/GeometryScreenElement;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "Arc"


# instance fields
.field private mAngle:F

.field private mAngleExp:Lcom/miui/maml/data/Expression;

.field private mArcPath:Landroid/graphics/Path;

.field private mClose:Z

.field mOvalRect:Landroid/graphics/RectF;

.field private mSweep:F

.field private mSweepExp:Lcom/miui/maml/data/Expression;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/GeometryScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 2
    new-instance v0, Landroid/graphics/Path;

    .line 5
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/miui/maml/elements/ArcScreenElement;->mArcPath:Landroid/graphics/Path;

    .line 10
    new-instance v0, Landroid/graphics/RectF;

    .line 12
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/miui/maml/elements/ArcScreenElement;->mOvalRect:Landroid/graphics/RectF;

    .line 17
    invoke-virtual {p2}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 19
    move-result-object p2

    .line 22
    const-string/jumbo v0, "startAngle"

    .line 23
    invoke-virtual {p0, p1, v0}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    .line 26
    move-result-object v0

    .line 29
    invoke-static {p2, v0}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 30
    move-result-object v0

    .line 33
    iput-object v0, p0, Lcom/miui/maml/elements/ArcScreenElement;->mAngleExp:Lcom/miui/maml/data/Expression;

    .line 34
    const-string/jumbo v0, "sweep"

    .line 36
    invoke-virtual {p0, p1, v0}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    .line 39
    move-result-object v0

    .line 42
    invoke-static {p2, v0}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 43
    move-result-object p2

    .line 46
    iput-object p2, p0, Lcom/miui/maml/elements/ArcScreenElement;->mSweepExp:Lcom/miui/maml/data/Expression;

    .line 47
    const-string p2, "close"

    .line 49
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    .line 51
    move-result-object p1

    .line 54
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 55
    move-result p1

    .line 58
    iput-boolean p1, p0, Lcom/miui/maml/elements/ArcScreenElement;->mClose:Z

    .line 59
    sget-object p1, Lcom/miui/maml/elements/ScreenElement$Align;->CENTER:Lcom/miui/maml/elements/ScreenElement$Align;

    .line 61
    iput-object p1, p0, Lcom/miui/maml/elements/ScreenElement;->mAlign:Lcom/miui/maml/elements/ScreenElement$Align;

    .line 63
    sget-object p1, Lcom/miui/maml/elements/ScreenElement$AlignV;->CENTER:Lcom/miui/maml/elements/ScreenElement$AlignV;

    .line 65
    iput-object p1, p0, Lcom/miui/maml/elements/ScreenElement;->mAlignV:Lcom/miui/maml/elements/ScreenElement$AlignV;

    .line 67
    return-void
    .line 69
.end method


# virtual methods
.method public doTick(J)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/miui/maml/elements/GeometryScreenElement;->doTick(J)V

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
    iget-object p1, p0, Lcom/miui/maml/elements/ScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 12
    invoke-virtual {p1}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 14
    iget-object p1, p0, Lcom/miui/maml/elements/ArcScreenElement;->mAngleExp:Lcom/miui/maml/data/Expression;

    .line 17
    invoke-virtual {p1}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 19
    move-result-wide p1

    .line 22
    double-to-float p1, p1

    .line 23
    iput p1, p0, Lcom/miui/maml/elements/ArcScreenElement;->mAngle:F

    .line 24
    iget-object p1, p0, Lcom/miui/maml/elements/ArcScreenElement;->mSweepExp:Lcom/miui/maml/data/Expression;

    .line 26
    invoke-virtual {p1}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 28
    move-result-wide p1

    .line 31
    double-to-float p1, p1

    .line 32
    iput p1, p0, Lcom/miui/maml/elements/ArcScreenElement;->mSweep:F

    .line 33
    return-void
    .line 35
.end method

.method public onDraw(Landroid/graphics/Canvas;Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getWidth()F

    .line 2
    move-result p2

    .line 5
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getHeight()F

    .line 6
    move-result v0

    .line 9
    const/high16 v1, 0x40000000    # 2.0f

    .line 10
    div-float v2, p2, v1

    .line 12
    const/4 v3, 0x0

    .line 14
    sub-float v2, v3, v2

    .line 15
    div-float v1, v0, v1

    .line 17
    sub-float/2addr v3, v1

    .line 19
    iget-object v1, p0, Lcom/miui/maml/elements/ArcScreenElement;->mArcPath:Landroid/graphics/Path;

    .line 20
    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 22
    iget-object v1, p0, Lcom/miui/maml/elements/ArcScreenElement;->mOvalRect:Landroid/graphics/RectF;

    .line 25
    iput v2, v1, Landroid/graphics/RectF;->left:F

    .line 27
    iput v3, v1, Landroid/graphics/RectF;->top:F

    .line 29
    add-float/2addr v2, p2

    .line 31
    iput v2, v1, Landroid/graphics/RectF;->right:F

    .line 32
    add-float/2addr v3, v0

    .line 34
    iput v3, v1, Landroid/graphics/RectF;->bottom:F

    .line 35
    iget p2, p0, Lcom/miui/maml/elements/ArcScreenElement;->mSweep:F

    .line 37
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    .line 39
    move-result p2

    .line 42
    const/high16 v0, 0x43b40000    # 360.0f

    .line 43
    cmpl-float p2, p2, v0

    .line 45
    if-ltz p2, :cond_0

    .line 47
    iget-object p2, p0, Lcom/miui/maml/elements/ArcScreenElement;->mOvalRect:Landroid/graphics/RectF;

    .line 49
    iget-object p0, p0, Lcom/miui/maml/elements/GeometryScreenElement;->mPaint:Landroid/graphics/Paint;

    .line 51
    invoke-virtual {p1, p2, p0}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 53
    goto :goto_0

    .line 56
    :cond_0
    iget-boolean p2, p0, Lcom/miui/maml/elements/ArcScreenElement;->mClose:Z

    .line 57
    if-eqz p2, :cond_1

    .line 59
    iget-object p2, p0, Lcom/miui/maml/elements/ArcScreenElement;->mArcPath:Landroid/graphics/Path;

    .line 61
    iget-object v0, p0, Lcom/miui/maml/elements/ArcScreenElement;->mOvalRect:Landroid/graphics/RectF;

    .line 63
    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    .line 65
    move-result v0

    .line 68
    iget-object v1, p0, Lcom/miui/maml/elements/ArcScreenElement;->mOvalRect:Landroid/graphics/RectF;

    .line 69
    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    .line 71
    move-result v1

    .line 74
    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 75
    :cond_1
    iget-object p2, p0, Lcom/miui/maml/elements/ArcScreenElement;->mArcPath:Landroid/graphics/Path;

    .line 78
    iget-object v0, p0, Lcom/miui/maml/elements/ArcScreenElement;->mOvalRect:Landroid/graphics/RectF;

    .line 80
    iget v1, p0, Lcom/miui/maml/elements/ArcScreenElement;->mAngle:F

    .line 82
    iget v2, p0, Lcom/miui/maml/elements/ArcScreenElement;->mSweep:F

    .line 84
    iget-boolean v3, p0, Lcom/miui/maml/elements/ArcScreenElement;->mClose:Z

    .line 86
    xor-int/lit8 v3, v3, 0x1

    .line 88
    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 90
    iget-boolean p2, p0, Lcom/miui/maml/elements/ArcScreenElement;->mClose:Z

    .line 93
    if-eqz p2, :cond_2

    .line 95
    iget-object p2, p0, Lcom/miui/maml/elements/ArcScreenElement;->mArcPath:Landroid/graphics/Path;

    .line 97
    invoke-virtual {p2}, Landroid/graphics/Path;->close()V

    .line 99
    :cond_2
    iget-object p2, p0, Lcom/miui/maml/elements/ArcScreenElement;->mArcPath:Landroid/graphics/Path;

    .line 102
    iget-object p0, p0, Lcom/miui/maml/elements/GeometryScreenElement;->mPaint:Landroid/graphics/Paint;

    .line 104
    invoke-virtual {p1, p2, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 106
    :goto_0
    return-void
    .line 109
.end method
