.class public Lcom/miui/maml/shader/RadialGradientElement;
.super Lcom/miui/maml/shader/ShaderElement;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "RadialGradient"


# instance fields
.field private mRx:F

.field private mRxExp:Lcom/miui/maml/data/Expression;

.field private mRy:F

.field private mRyExp:Lcom/miui/maml/data/Expression;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/shader/ShaderElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 2
    invoke-virtual {p0}, Lcom/miui/maml/shader/ShaderElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 5
    move-result-object p2

    .line 8
    const-string v0, "rX"

    .line 9
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    move-result-object v0

    .line 14
    invoke-static {p2, v0}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 15
    move-result-object p2

    .line 18
    iput-object p2, p0, Lcom/miui/maml/shader/RadialGradientElement;->mRxExp:Lcom/miui/maml/data/Expression;

    .line 19
    invoke-virtual {p0}, Lcom/miui/maml/shader/ShaderElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 21
    move-result-object p2

    .line 24
    const-string v0, "rY"

    .line 25
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    move-result-object p1

    .line 30
    invoke-static {p2, p1}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 31
    move-result-object p1

    .line 34
    iput-object p1, p0, Lcom/miui/maml/shader/RadialGradientElement;->mRyExp:Lcom/miui/maml/data/Expression;

    .line 35
    iget-object p0, p0, Lcom/miui/maml/shader/ShaderElement;->mGradientStops:Lcom/miui/maml/shader/ShaderElement$GradientStops;

    .line 37
    invoke-virtual {p0}, Lcom/miui/maml/shader/ShaderElement$GradientStops;->update()V

    .line 39
    return-void
    .line 42
.end method

.method private final getRx()F
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/miui/maml/shader/RadialGradientElement;->mRxExp:Lcom/miui/maml/data/Expression;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 6
    move-result-wide v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const-wide/16 v0, 0x0

    .line 11
    :goto_0
    iget-object p0, p0, Lcom/miui/maml/shader/ShaderElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 13
    invoke-virtual {p0}, Lcom/miui/maml/ScreenElementRoot;->getScale()F

    .line 15
    move-result p0

    .line 18
    float-to-double v2, p0

    .line 19
    mul-double/2addr v0, v2

    .line 20
    double-to-float p0, v0

    .line 21
    return p0
    .line 22
.end method

.method private final getRy()F
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/miui/maml/shader/RadialGradientElement;->mRyExp:Lcom/miui/maml/data/Expression;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 6
    move-result-wide v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const-wide/16 v0, 0x0

    .line 11
    :goto_0
    iget-object p0, p0, Lcom/miui/maml/shader/ShaderElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 13
    invoke-virtual {p0}, Lcom/miui/maml/ScreenElementRoot;->getScale()F

    .line 15
    move-result p0

    .line 18
    float-to-double v2, p0

    .line 19
    mul-double/2addr v0, v2

    .line 20
    double-to-float p0, v0

    .line 21
    return p0
    .line 22
.end method


# virtual methods
.method public onGradientStopsChanged()V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/miui/maml/shader/ShaderElement;->mX:F

    .line 3
    iput v0, p0, Lcom/miui/maml/shader/ShaderElement;->mY:F

    .line 5
    const/high16 v0, 0x3f800000    # 1.0f

    .line 7
    iput v0, p0, Lcom/miui/maml/shader/RadialGradientElement;->mRx:F

    .line 9
    iput v0, p0, Lcom/miui/maml/shader/RadialGradientElement;->mRy:F

    .line 11
    new-instance v0, Landroid/graphics/RadialGradient;

    .line 13
    const/4 v2, 0x0

    .line 15
    const/4 v3, 0x0

    .line 16
    const/high16 v4, 0x3f800000    # 1.0f

    .line 17
    iget-object v1, p0, Lcom/miui/maml/shader/ShaderElement;->mGradientStops:Lcom/miui/maml/shader/ShaderElement$GradientStops;

    .line 19
    invoke-virtual {v1}, Lcom/miui/maml/shader/ShaderElement$GradientStops;->getColors()[I

    .line 21
    move-result-object v5

    .line 24
    iget-object v1, p0, Lcom/miui/maml/shader/ShaderElement;->mGradientStops:Lcom/miui/maml/shader/ShaderElement$GradientStops;

    .line 25
    invoke-virtual {v1}, Lcom/miui/maml/shader/ShaderElement$GradientStops;->getPositions()[F

    .line 27
    move-result-object v6

    .line 30
    iget-object v7, p0, Lcom/miui/maml/shader/ShaderElement;->mTileMode:Landroid/graphics/Shader$TileMode;

    .line 31
    move-object v1, v0

    .line 33
    invoke-direct/range {v1 .. v7}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 34
    iput-object v0, p0, Lcom/miui/maml/shader/ShaderElement;->mShader:Landroid/graphics/Shader;

    .line 37
    return-void
    .line 39
.end method

.method public updateShaderMatrix()Z
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/shader/ShaderElement;->getX()F

    .line 2
    move-result v0

    .line 5
    invoke-virtual {p0}, Lcom/miui/maml/shader/ShaderElement;->getY()F

    .line 6
    move-result v1

    .line 9
    invoke-direct {p0}, Lcom/miui/maml/shader/RadialGradientElement;->getRx()F

    .line 10
    move-result v2

    .line 13
    invoke-direct {p0}, Lcom/miui/maml/shader/RadialGradientElement;->getRy()F

    .line 14
    move-result v3

    .line 17
    iget v4, p0, Lcom/miui/maml/shader/ShaderElement;->mX:F

    .line 18
    cmpl-float v4, v0, v4

    .line 20
    if-nez v4, :cond_1

    .line 22
    iget v4, p0, Lcom/miui/maml/shader/ShaderElement;->mY:F

    .line 24
    cmpl-float v4, v1, v4

    .line 26
    if-nez v4, :cond_1

    .line 28
    iget v4, p0, Lcom/miui/maml/shader/RadialGradientElement;->mRx:F

    .line 30
    cmpl-float v4, v2, v4

    .line 32
    if-nez v4, :cond_1

    .line 34
    iget v4, p0, Lcom/miui/maml/shader/RadialGradientElement;->mRy:F

    .line 36
    cmpl-float v4, v3, v4

    .line 38
    if-eqz v4, :cond_0

    .line 40
    goto :goto_0

    .line 42
    :cond_0
    const/4 p0, 0x0

    .line 43
    return p0

    .line 44
    :cond_1
    :goto_0
    iput v0, p0, Lcom/miui/maml/shader/ShaderElement;->mX:F

    .line 45
    iput v1, p0, Lcom/miui/maml/shader/ShaderElement;->mY:F

    .line 47
    iput v2, p0, Lcom/miui/maml/shader/RadialGradientElement;->mRx:F

    .line 49
    iput v3, p0, Lcom/miui/maml/shader/RadialGradientElement;->mRy:F

    .line 51
    iget-object v4, p0, Lcom/miui/maml/shader/ShaderElement;->mShaderMatrix:Landroid/graphics/Matrix;

    .line 53
    invoke-virtual {v4}, Landroid/graphics/Matrix;->reset()V

    .line 55
    iget-object v4, p0, Lcom/miui/maml/shader/ShaderElement;->mShaderMatrix:Landroid/graphics/Matrix;

    .line 58
    neg-float v5, v0

    .line 60
    neg-float v6, v1

    .line 61
    invoke-virtual {v4, v5, v6}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 62
    iget-object v4, p0, Lcom/miui/maml/shader/ShaderElement;->mShaderMatrix:Landroid/graphics/Matrix;

    .line 65
    invoke-virtual {v4, v2, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 67
    iget-object p0, p0, Lcom/miui/maml/shader/ShaderElement;->mShaderMatrix:Landroid/graphics/Matrix;

    .line 70
    invoke-virtual {p0, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 72
    const/4 p0, 0x1

    .line 75
    return p0
    .line 76
.end method
