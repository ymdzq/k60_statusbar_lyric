.class public Lcom/miui/maml/shader/LinearGradientElement;
.super Lcom/miui/maml/shader/ShaderElement;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "LinearGradient"


# instance fields
.field private mEndX:F

.field private mEndXExp:Lcom/miui/maml/data/Expression;

.field private mEndY:F

.field private mEndYExp:Lcom/miui/maml/data/Expression;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/shader/ShaderElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 2
    invoke-virtual {p2}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 5
    move-result-object v0

    .line 8
    const-string/jumbo v1, "x1"

    .line 9
    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    move-result-object v1

    .line 15
    invoke-static {v0, v1}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 16
    move-result-object v0

    .line 19
    iput-object v0, p0, Lcom/miui/maml/shader/LinearGradientElement;->mEndXExp:Lcom/miui/maml/data/Expression;

    .line 20
    invoke-virtual {p2}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 22
    move-result-object p2

    .line 25
    const-string/jumbo v0, "y1"

    .line 26
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    move-result-object p1

    .line 32
    invoke-static {p2, p1}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 33
    move-result-object p1

    .line 36
    iput-object p1, p0, Lcom/miui/maml/shader/LinearGradientElement;->mEndYExp:Lcom/miui/maml/data/Expression;

    .line 37
    iget-object p0, p0, Lcom/miui/maml/shader/ShaderElement;->mGradientStops:Lcom/miui/maml/shader/ShaderElement$GradientStops;

    .line 39
    invoke-virtual {p0}, Lcom/miui/maml/shader/ShaderElement$GradientStops;->update()V

    .line 41
    return-void
    .line 44
.end method

.method private final getEndX()F
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/miui/maml/shader/LinearGradientElement;->mEndXExp:Lcom/miui/maml/data/Expression;

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

.method private final getEndY()F
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/miui/maml/shader/LinearGradientElement;->mEndYExp:Lcom/miui/maml/data/Expression;

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
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/miui/maml/shader/ShaderElement;->mX:F

    .line 3
    iput v0, p0, Lcom/miui/maml/shader/ShaderElement;->mY:F

    .line 5
    const/high16 v0, 0x3f800000    # 1.0f

    .line 7
    iput v0, p0, Lcom/miui/maml/shader/LinearGradientElement;->mEndX:F

    .line 9
    iput v0, p0, Lcom/miui/maml/shader/LinearGradientElement;->mEndY:F

    .line 11
    new-instance v0, Landroid/graphics/LinearGradient;

    .line 13
    const/4 v2, 0x0

    .line 15
    const/4 v3, 0x0

    .line 16
    const/high16 v4, 0x3f800000    # 1.0f

    .line 17
    const/high16 v5, 0x3f800000    # 1.0f

    .line 19
    iget-object v1, p0, Lcom/miui/maml/shader/ShaderElement;->mGradientStops:Lcom/miui/maml/shader/ShaderElement$GradientStops;

    .line 21
    invoke-virtual {v1}, Lcom/miui/maml/shader/ShaderElement$GradientStops;->getColors()[I

    .line 23
    move-result-object v6

    .line 26
    iget-object v1, p0, Lcom/miui/maml/shader/ShaderElement;->mGradientStops:Lcom/miui/maml/shader/ShaderElement$GradientStops;

    .line 27
    invoke-virtual {v1}, Lcom/miui/maml/shader/ShaderElement$GradientStops;->getPositions()[F

    .line 29
    move-result-object v7

    .line 32
    iget-object v8, p0, Lcom/miui/maml/shader/ShaderElement;->mTileMode:Landroid/graphics/Shader$TileMode;

    .line 33
    move-object v1, v0

    .line 35
    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 36
    iput-object v0, p0, Lcom/miui/maml/shader/ShaderElement;->mShader:Landroid/graphics/Shader;

    .line 39
    return-void
    .line 41
.end method

.method public updateShaderMatrix()Z
    .locals 12

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/shader/ShaderElement;->getX()F

    .line 2
    move-result v0

    .line 5
    invoke-virtual {p0}, Lcom/miui/maml/shader/ShaderElement;->getY()F

    .line 6
    move-result v1

    .line 9
    invoke-direct {p0}, Lcom/miui/maml/shader/LinearGradientElement;->getEndX()F

    .line 10
    move-result v2

    .line 13
    invoke-direct {p0}, Lcom/miui/maml/shader/LinearGradientElement;->getEndY()F

    .line 14
    move-result v3

    .line 17
    iget v4, p0, Lcom/miui/maml/shader/ShaderElement;->mX:F

    .line 18
    cmpl-float v4, v0, v4

    .line 20
    const/4 v5, 0x0

    .line 22
    if-nez v4, :cond_1

    .line 23
    iget v4, p0, Lcom/miui/maml/shader/ShaderElement;->mY:F

    .line 25
    cmpl-float v4, v1, v4

    .line 27
    if-nez v4, :cond_1

    .line 29
    iget v4, p0, Lcom/miui/maml/shader/LinearGradientElement;->mEndX:F

    .line 31
    cmpl-float v4, v2, v4

    .line 33
    if-nez v4, :cond_1

    .line 35
    iget v4, p0, Lcom/miui/maml/shader/LinearGradientElement;->mEndY:F

    .line 37
    cmpl-float v4, v3, v4

    .line 39
    if-eqz v4, :cond_0

    .line 41
    goto :goto_0

    .line 43
    :cond_0
    return v5

    .line 44
    :cond_1
    :goto_0
    iput v0, p0, Lcom/miui/maml/shader/ShaderElement;->mX:F

    .line 45
    iput v1, p0, Lcom/miui/maml/shader/ShaderElement;->mY:F

    .line 47
    iput v2, p0, Lcom/miui/maml/shader/LinearGradientElement;->mEndX:F

    .line 49
    iput v3, p0, Lcom/miui/maml/shader/LinearGradientElement;->mEndY:F

    .line 51
    iget-object v4, p0, Lcom/miui/maml/shader/ShaderElement;->mShaderMatrix:Landroid/graphics/Matrix;

    .line 53
    invoke-virtual {v4}, Landroid/graphics/Matrix;->reset()V

    .line 55
    iget-object v6, p0, Lcom/miui/maml/shader/ShaderElement;->mShaderMatrix:Landroid/graphics/Matrix;

    .line 58
    const/4 p0, 0x4

    .line 60
    new-array v7, p0, [F

    .line 61
    fill-array-data v7, :array_0

    .line 63
    const/4 v8, 0x0

    .line 66
    new-array v9, p0, [F

    .line 67
    aput v0, v9, v5

    .line 69
    const/4 p0, 0x1

    .line 71
    aput v1, v9, p0

    .line 72
    const/4 v0, 0x2

    .line 74
    aput v2, v9, v0

    .line 75
    const/4 v0, 0x3

    .line 77
    aput v3, v9, v0

    .line 78
    const/4 v10, 0x0

    .line 80
    const/4 v11, 0x2

    .line 81
    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Matrix;->setPolyToPoly([FI[FII)Z

    .line 82
    return p0

    .line 85
    :array_0
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
    .line 86
.end method
