.class public Lcom/miui/maml/shader/SweepGradientElement;
.super Lcom/miui/maml/shader/ShaderElement;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "SweepGradient"


# instance fields
.field private mAngle:F

.field private mAngleExp:Lcom/miui/maml/data/Expression;


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
    const-string v0, "rotation"

    .line 9
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    move-result-object p1

    .line 14
    invoke-static {p2, p1}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 15
    move-result-object p1

    .line 18
    iput-object p1, p0, Lcom/miui/maml/shader/SweepGradientElement;->mAngleExp:Lcom/miui/maml/data/Expression;

    .line 19
    iget-object p0, p0, Lcom/miui/maml/shader/ShaderElement;->mGradientStops:Lcom/miui/maml/shader/ShaderElement$GradientStops;

    .line 21
    invoke-virtual {p0}, Lcom/miui/maml/shader/ShaderElement$GradientStops;->update()V

    .line 23
    return-void
    .line 26
.end method

.method private final getAngle()F
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/miui/maml/shader/SweepGradientElement;->mAngleExp:Lcom/miui/maml/data/Expression;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 6
    move-result-wide v0

    .line 9
    double-to-float p0, v0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    :goto_0
    return p0
    .line 13
.end method


# virtual methods
.method public onGradientStopsChanged()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/miui/maml/shader/ShaderElement;->mX:F

    .line 3
    iput v0, p0, Lcom/miui/maml/shader/ShaderElement;->mY:F

    .line 5
    iput v0, p0, Lcom/miui/maml/shader/SweepGradientElement;->mAngle:F

    .line 7
    new-instance v1, Landroid/graphics/SweepGradient;

    .line 9
    iget-object v2, p0, Lcom/miui/maml/shader/ShaderElement;->mGradientStops:Lcom/miui/maml/shader/ShaderElement$GradientStops;

    .line 11
    invoke-virtual {v2}, Lcom/miui/maml/shader/ShaderElement$GradientStops;->getColors()[I

    .line 13
    move-result-object v2

    .line 16
    iget-object v3, p0, Lcom/miui/maml/shader/ShaderElement;->mGradientStops:Lcom/miui/maml/shader/ShaderElement$GradientStops;

    .line 17
    invoke-virtual {v3}, Lcom/miui/maml/shader/ShaderElement$GradientStops;->getPositions()[F

    .line 19
    move-result-object v3

    .line 22
    invoke-direct {v1, v0, v0, v2, v3}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    .line 23
    iput-object v1, p0, Lcom/miui/maml/shader/ShaderElement;->mShader:Landroid/graphics/Shader;

    .line 26
    return-void
    .line 28
.end method

.method public updateShaderMatrix()Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/shader/ShaderElement;->getX()F

    .line 2
    move-result v0

    .line 5
    invoke-virtual {p0}, Lcom/miui/maml/shader/ShaderElement;->getY()F

    .line 6
    move-result v1

    .line 9
    invoke-direct {p0}, Lcom/miui/maml/shader/SweepGradientElement;->getAngle()F

    .line 10
    move-result v2

    .line 13
    iget v3, p0, Lcom/miui/maml/shader/ShaderElement;->mX:F

    .line 14
    cmpl-float v3, v0, v3

    .line 16
    if-nez v3, :cond_1

    .line 18
    iget v3, p0, Lcom/miui/maml/shader/ShaderElement;->mY:F

    .line 20
    cmpl-float v3, v1, v3

    .line 22
    if-nez v3, :cond_1

    .line 24
    iget v3, p0, Lcom/miui/maml/shader/SweepGradientElement;->mAngle:F

    .line 26
    cmpl-float v3, v2, v3

    .line 28
    if-eqz v3, :cond_0

    .line 30
    goto :goto_0

    .line 32
    :cond_0
    const/4 p0, 0x0

    .line 33
    return p0

    .line 34
    :cond_1
    :goto_0
    iput v0, p0, Lcom/miui/maml/shader/ShaderElement;->mX:F

    .line 35
    iput v1, p0, Lcom/miui/maml/shader/ShaderElement;->mY:F

    .line 37
    iput v2, p0, Lcom/miui/maml/shader/SweepGradientElement;->mAngle:F

    .line 39
    iget-object v3, p0, Lcom/miui/maml/shader/ShaderElement;->mShaderMatrix:Landroid/graphics/Matrix;

    .line 41
    invoke-virtual {v3}, Landroid/graphics/Matrix;->reset()V

    .line 43
    iget-object v3, p0, Lcom/miui/maml/shader/ShaderElement;->mShaderMatrix:Landroid/graphics/Matrix;

    .line 46
    neg-float v4, v0

    .line 48
    neg-float v5, v1

    .line 49
    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 50
    iget-object v3, p0, Lcom/miui/maml/shader/ShaderElement;->mShaderMatrix:Landroid/graphics/Matrix;

    .line 53
    invoke-virtual {v3, v2}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 55
    iget-object p0, p0, Lcom/miui/maml/shader/ShaderElement;->mShaderMatrix:Landroid/graphics/Matrix;

    .line 58
    invoke-virtual {p0, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 60
    const/4 p0, 0x1

    .line 63
    return p0
    .line 64
.end method
