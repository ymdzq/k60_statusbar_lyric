.class public abstract Lcom/miui/maml/shader/ShaderElement;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ShaderElement"


# instance fields
.field protected mGradientStops:Lcom/miui/maml/shader/ShaderElement$GradientStops;

.field protected mRoot:Lcom/miui/maml/ScreenElementRoot;

.field protected mShader:Landroid/graphics/Shader;

.field protected mShaderMatrix:Landroid/graphics/Matrix;

.field protected mTileMode:Landroid/graphics/Shader$TileMode;

.field protected mX:F

.field protected mXExp:Lcom/miui/maml/data/Expression;

.field protected mY:F

.field protected mYExp:Lcom/miui/maml/data/Expression;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/Matrix;

    .line 5
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/miui/maml/shader/ShaderElement;->mShaderMatrix:Landroid/graphics/Matrix;

    .line 10
    new-instance v0, Lcom/miui/maml/shader/ShaderElement$GradientStops;

    .line 12
    invoke-direct {v0, p0}, Lcom/miui/maml/shader/ShaderElement$GradientStops;-><init>(Lcom/miui/maml/shader/ShaderElement;)V

    .line 14
    iput-object v0, p0, Lcom/miui/maml/shader/ShaderElement;->mGradientStops:Lcom/miui/maml/shader/ShaderElement$GradientStops;

    .line 17
    iput-object p2, p0, Lcom/miui/maml/shader/ShaderElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 19
    invoke-virtual {p0}, Lcom/miui/maml/shader/ShaderElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 21
    move-result-object v0

    .line 24
    const-string/jumbo v1, "x"

    .line 25
    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 28
    move-result-object v1

    .line 31
    invoke-static {v0, v1}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 32
    move-result-object v1

    .line 35
    iput-object v1, p0, Lcom/miui/maml/shader/ShaderElement;->mXExp:Lcom/miui/maml/data/Expression;

    .line 36
    const-string/jumbo v1, "y"

    .line 38
    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 41
    move-result-object v1

    .line 44
    invoke-static {v0, v1}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 45
    move-result-object v0

    .line 48
    iput-object v0, p0, Lcom/miui/maml/shader/ShaderElement;->mYExp:Lcom/miui/maml/data/Expression;

    .line 49
    const-string/jumbo v0, "tile"

    .line 51
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 54
    move-result-object v0

    .line 57
    invoke-static {v0}, Lcom/miui/maml/shader/ShaderElement;->getTileMode(Ljava/lang/String;)Landroid/graphics/Shader$TileMode;

    .line 58
    move-result-object v0

    .line 61
    iput-object v0, p0, Lcom/miui/maml/shader/ShaderElement;->mTileMode:Landroid/graphics/Shader$TileMode;

    .line 62
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    .line 64
    move-result-object v0

    .line 67
    const-string v1, "BitmapShader"

    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 70
    move-result v0

    .line 73
    if-nez v0, :cond_0

    .line 74
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/shader/ShaderElement;->loadGradientStops(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 76
    :cond_0
    return-void
    .line 79
.end method

.method public static getTileMode(Ljava/lang/String;)Landroid/graphics/Shader$TileMode;
    .locals 1

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    sget-object p0, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 8
    return-object p0

    .line 10
    :cond_0
    const-string v0, "mirror"

    .line 11
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 13
    move-result v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    sget-object p0, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    .line 19
    return-object p0

    .line 21
    :cond_1
    const-string v0, "repeat"

    .line 22
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 24
    move-result p0

    .line 27
    if-eqz p0, :cond_2

    .line 28
    sget-object p0, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    .line 30
    return-object p0

    .line 32
    :cond_2
    sget-object p0, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 33
    return-object p0
    .line 35
.end method

.method private loadGradientStops(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .locals 4

    .line 1
    const-string v0, "GradientStop"

    .line 2
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    .line 4
    move-result-object p1

    .line 7
    const/4 v0, 0x0

    .line 8
    :goto_0
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    .line 9
    move-result v1

    .line 12
    if-ge v0, v1, :cond_0

    .line 13
    invoke-interface {p1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    .line 15
    move-result-object v1

    .line 18
    check-cast v1, Lorg/w3c/dom/Element;

    .line 19
    iget-object v2, p0, Lcom/miui/maml/shader/ShaderElement;->mGradientStops:Lcom/miui/maml/shader/ShaderElement$GradientStops;

    .line 21
    new-instance v3, Lcom/miui/maml/shader/ShaderElement$GradientStop;

    .line 23
    invoke-direct {v3, p0, v1, p2}, Lcom/miui/maml/shader/ShaderElement$GradientStop;-><init>(Lcom/miui/maml/shader/ShaderElement;Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 25
    invoke-virtual {v2, v3}, Lcom/miui/maml/shader/ShaderElement$GradientStops;->add(Lcom/miui/maml/shader/ShaderElement$GradientStop;)V

    .line 28
    add-int/lit8 v0, v0, 0x1

    .line 31
    goto :goto_0

    .line 33
    :cond_0
    iget-object p1, p0, Lcom/miui/maml/shader/ShaderElement;->mGradientStops:Lcom/miui/maml/shader/ShaderElement$GradientStops;

    .line 34
    invoke-virtual {p1}, Lcom/miui/maml/shader/ShaderElement$GradientStops;->size()I

    .line 36
    move-result p1

    .line 39
    if-gtz p1, :cond_1

    .line 40
    const-string p0, "ShaderElement"

    .line 42
    const-string p1, "lost gradient stop."

    .line 44
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    return-void

    .line 49
    :cond_1
    iget-object p0, p0, Lcom/miui/maml/shader/ShaderElement;->mGradientStops:Lcom/miui/maml/shader/ShaderElement$GradientStops;

    .line 50
    invoke-virtual {p0}, Lcom/miui/maml/shader/ShaderElement$GradientStops;->init()V

    .line 52
    return-void
    .line 55
.end method


# virtual methods
.method public getShader()Landroid/graphics/Shader;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/shader/ShaderElement;->mShader:Landroid/graphics/Shader;

    .line 2
    return-object p0
    .line 4
.end method

.method public getVariables()Lcom/miui/maml/data/Variables;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/shader/ShaderElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 2
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 4
    move-result-object p0

    .line 7
    return-object p0
    .line 8
.end method

.method public getX()F
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/miui/maml/shader/ShaderElement;->mXExp:Lcom/miui/maml/data/Expression;

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

.method public getY()F
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/miui/maml/shader/ShaderElement;->mYExp:Lcom/miui/maml/data/Expression;

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

.method public abstract onGradientStopsChanged()V
.end method

.method public updateShader()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/maml/shader/ShaderElement;->mGradientStops:Lcom/miui/maml/shader/ShaderElement$GradientStops;

    .line 2
    invoke-virtual {v0}, Lcom/miui/maml/shader/ShaderElement$GradientStops;->update()V

    .line 4
    invoke-virtual {p0}, Lcom/miui/maml/shader/ShaderElement;->updateShaderMatrix()Z

    .line 7
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    iget-object v0, p0, Lcom/miui/maml/shader/ShaderElement;->mShader:Landroid/graphics/Shader;

    .line 13
    iget-object p0, p0, Lcom/miui/maml/shader/ShaderElement;->mShaderMatrix:Landroid/graphics/Matrix;

    .line 15
    invoke-virtual {v0, p0}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 17
    :cond_0
    return-void
    .line 20
.end method

.method public abstract updateShaderMatrix()Z
.end method
