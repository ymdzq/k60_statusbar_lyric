.class public Lcom/miui/maml/elements/GraphicsElement;
.super Lcom/miui/maml/elements/AnimatedScreenElement;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final LINEAR_GRADIENT:I = 0x1

.field public static final LOG_TAG:Ljava/lang/String; = "MAML_Graphics"

.field public static final RADIAL_GRADIENT:I = 0x2

.field public static final TAG_NAME:Ljava/lang/String; = "Graphics"


# instance fields
.field private mAutoScale:Z

.field private mCallbacks:Lcom/miui/maml/elements/GraphicsElement$Callbacks;

.field private mCanvas:Landroid/graphics/Canvas;

.field private mCanvasBounds:Landroid/graphics/Rect;

.field private mCurrentX:F

.field private mCurrentY:F

.field protected mFillPaint:Landroid/graphics/Paint;

.field private mInitRawHeight:F

.field private mInitRawWidth:F

.field private mLastAlpha:I

.field private mMode:Landroid/graphics/PorterDuff$Mode;

.field private mPath:Landroid/graphics/Path;

.field private mRenderListener:Lcom/miui/maml/elements/FunctionElement;

.field protected mStrokePaint:Landroid/graphics/Paint;

.field private mXferMode:Landroid/graphics/PorterDuffXfermode;

.field private mXfermodeNumExp:Lcom/miui/maml/data/Expression;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/AnimatedScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 2
    sget-object p2, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    .line 5
    iput-object p2, p0, Lcom/miui/maml/elements/GraphicsElement;->mMode:Landroid/graphics/PorterDuff$Mode;

    .line 7
    new-instance p2, Landroid/graphics/Paint;

    .line 9
    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    .line 11
    iput-object p2, p0, Lcom/miui/maml/elements/GraphicsElement;->mFillPaint:Landroid/graphics/Paint;

    .line 14
    new-instance p2, Landroid/graphics/Paint;

    .line 16
    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    .line 18
    iput-object p2, p0, Lcom/miui/maml/elements/GraphicsElement;->mStrokePaint:Landroid/graphics/Paint;

    .line 21
    new-instance p2, Landroid/graphics/Rect;

    .line 23
    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    .line 25
    iput-object p2, p0, Lcom/miui/maml/elements/GraphicsElement;->mCanvasBounds:Landroid/graphics/Rect;

    .line 28
    new-instance p2, Landroid/graphics/Path;

    .line 30
    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    .line 32
    iput-object p2, p0, Lcom/miui/maml/elements/GraphicsElement;->mPath:Landroid/graphics/Path;

    .line 35
    const/4 p2, 0x1

    .line 37
    iput-boolean p2, p0, Lcom/miui/maml/elements/GraphicsElement;->mAutoScale:Z

    .line 38
    const-string p2, "OnDraw"

    .line 40
    invoke-static {p1, p2}, Lcom/miui/maml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    .line 42
    move-result-object p2

    .line 45
    if-eqz p2, :cond_0

    .line 46
    new-instance v0, Lcom/miui/maml/elements/GraphicsElement$Callbacks;

    .line 48
    invoke-direct {v0, p2, p0}, Lcom/miui/maml/elements/GraphicsElement$Callbacks;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/elements/ScreenElement;)V

    .line 50
    iput-object v0, p0, Lcom/miui/maml/elements/GraphicsElement;->mCallbacks:Lcom/miui/maml/elements/GraphicsElement$Callbacks;

    .line 53
    :cond_0
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 55
    move-result-object p2

    .line 58
    const-string/jumbo v0, "xfermodeNum"

    .line 59
    invoke-virtual {p0, p1, v0}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    .line 62
    move-result-object v0

    .line 65
    invoke-static {p2, v0}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 66
    move-result-object p2

    .line 69
    iput-object p2, p0, Lcom/miui/maml/elements/GraphicsElement;->mXfermodeNumExp:Lcom/miui/maml/data/Expression;

    .line 70
    const-string/jumbo p2, "xfermode"

    .line 72
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    .line 75
    move-result-object p2

    .line 78
    iget-object v0, p0, Lcom/miui/maml/elements/GraphicsElement;->mXfermodeNumExp:Lcom/miui/maml/data/Expression;

    .line 79
    if-nez v0, :cond_1

    .line 81
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 83
    move-result v0

    .line 86
    if-nez v0, :cond_1

    .line 87
    invoke-static {p2}, Lcom/miui/maml/util/Utils;->getPorterDuffMode(Ljava/lang/String;)Landroid/graphics/PorterDuff$Mode;

    .line 89
    move-result-object p2

    .line 92
    iput-object p2, p0, Lcom/miui/maml/elements/GraphicsElement;->mMode:Landroid/graphics/PorterDuff$Mode;

    .line 93
    new-instance p2, Landroid/graphics/PorterDuffXfermode;

    .line 95
    iget-object v0, p0, Lcom/miui/maml/elements/GraphicsElement;->mMode:Landroid/graphics/PorterDuff$Mode;

    .line 97
    invoke-direct {p2, v0}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 99
    iput-object p2, p0, Lcom/miui/maml/elements/GraphicsElement;->mXferMode:Landroid/graphics/PorterDuffXfermode;

    .line 102
    iget-object v0, p0, Lcom/miui/maml/elements/GraphicsElement;->mFillPaint:Landroid/graphics/Paint;

    .line 104
    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 106
    iget-object p2, p0, Lcom/miui/maml/elements/GraphicsElement;->mStrokePaint:Landroid/graphics/Paint;

    .line 109
    iget-object v0, p0, Lcom/miui/maml/elements/GraphicsElement;->mXferMode:Landroid/graphics/PorterDuffXfermode;

    .line 111
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 113
    :cond_1
    const-string p2, "autoScale"

    .line 116
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    .line 118
    move-result-object p1

    .line 121
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 122
    move-result p2

    .line 125
    if-nez p2, :cond_2

    .line 126
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 128
    move-result p1

    .line 131
    iput-boolean p1, p0, Lcom/miui/maml/elements/GraphicsElement;->mAutoScale:Z

    .line 132
    :cond_2
    return-void
    .line 134
.end method

.method private getGraphicsShader(I[I[FLjava/lang/String;Ljava/lang/String;I)Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;
    .locals 9

    .line 1
    sget-object v0, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 2
    if-ltz p6, :cond_0

    .line 4
    invoke-static {}, Landroid/graphics/Shader$TileMode;->values()[Landroid/graphics/Shader$TileMode;

    .line 6
    move-result-object v1

    .line 9
    array-length v1, v1

    .line 10
    if-ge p6, v1, :cond_0

    .line 11
    invoke-static {}, Landroid/graphics/Shader$TileMode;->values()[Landroid/graphics/Shader$TileMode;

    .line 13
    move-result-object v0

    .line 16
    aget-object v0, v0, p6

    .line 17
    :cond_0
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 19
    move-result-object p6

    .line 22
    invoke-virtual {p6, p5}, Lcom/miui/maml/data/Variables;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 23
    move-result-object p6

    .line 26
    const/4 v8, 0x0

    .line 27
    if-nez p6, :cond_1

    .line 28
    new-instance p6, Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;

    .line 30
    invoke-direct {p6, v8}, Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;-><init>(Lcom/miui/maml/elements/GraphicsElement$1;)V

    .line 32
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 35
    move-result-object v1

    .line 38
    invoke-virtual {v1, p5, p6}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 39
    const/4 p5, 0x1

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    const/4 p5, 0x0

    .line 44
    :goto_0
    instance-of v1, p6, Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;

    .line 45
    if-eqz v1, :cond_4

    .line 47
    check-cast p6, Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;

    .line 49
    if-nez p5, :cond_2

    .line 51
    move-object v1, p0

    .line 53
    move-object v2, p6

    .line 54
    move v3, p1

    .line 55
    move-object v4, p2

    .line 56
    move-object v5, p3

    .line 57
    move-object v6, p4

    .line 58
    move-object v7, v0

    .line 59
    invoke-direct/range {v1 .. v7}, Lcom/miui/maml/elements/GraphicsElement;->isShaderParmsChanged(Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;I[I[FLjava/lang/String;Landroid/graphics/Shader$TileMode;)Z

    .line 60
    move-result p5

    .line 63
    :cond_2
    if-eqz p5, :cond_3

    .line 64
    move-object v1, p0

    .line 66
    move-object v2, p6

    .line 67
    move v3, p1

    .line 68
    move-object v4, p2

    .line 69
    move-object v5, p3

    .line 70
    move-object v6, p4

    .line 71
    move-object v7, v0

    .line 72
    invoke-direct/range {v1 .. v7}, Lcom/miui/maml/elements/GraphicsElement;->resetShader(Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;I[I[FLjava/lang/String;Landroid/graphics/Shader$TileMode;)Z

    .line 73
    move-result p2

    .line 76
    if-nez p2, :cond_3

    .line 77
    return-object v8

    .line 79
    :cond_3
    invoke-direct {p0, p5, p6, p1, p4}, Lcom/miui/maml/elements/GraphicsElement;->resetMatrixIfNecessary(ZLcom/miui/maml/elements/GraphicsElement$GraphicsShader;ILjava/lang/String;)V

    .line 80
    return-object p6

    .line 83
    :cond_4
    return-object v8
    .line 84
.end method

.method private isShaderParmsChanged(Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;I[I[FLjava/lang/String;Landroid/graphics/Shader$TileMode;)Z
    .locals 1

    .line 1
    iget-object p0, p1, Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;->mShader:Landroid/graphics/Shader;

    .line 2
    const/4 v0, 0x1

    .line 4
    if-eqz p0, :cond_5

    .line 5
    invoke-static {p1}, Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;->access$100(Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;)I

    .line 7
    move-result p0

    .line 10
    if-ne p2, p0, :cond_5

    .line 11
    array-length p0, p3

    .line 13
    iget-object p2, p1, Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;->mColors:[I

    .line 14
    array-length p2, p2

    .line 16
    if-ne p0, p2, :cond_5

    .line 17
    if-eqz p4, :cond_0

    .line 19
    iget-object p0, p1, Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;->mStops:[F

    .line 21
    if-nez p0, :cond_1

    .line 23
    :cond_0
    if-nez p4, :cond_5

    .line 25
    iget-object p0, p1, Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;->mStops:[F

    .line 27
    if-nez p0, :cond_5

    .line 29
    :cond_1
    invoke-static {p1}, Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;->access$200(Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;)Landroid/graphics/Shader$TileMode;

    .line 31
    move-result-object p0

    .line 34
    if-ne p6, p0, :cond_5

    .line 35
    invoke-static {p1}, Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;->access$000(Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;)Ljava/lang/String;

    .line 37
    move-result-object p0

    .line 40
    invoke-virtual {p5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    move-result p0

    .line 44
    if-eqz p0, :cond_5

    .line 45
    const/4 p0, 0x0

    .line 47
    move p2, p0

    .line 48
    :goto_0
    array-length p5, p3

    .line 49
    if-ge p2, p5, :cond_4

    .line 50
    iget-object p5, p1, Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;->mColors:[I

    .line 52
    aget p5, p5, p2

    .line 54
    aget p6, p3, p2

    .line 56
    if-eq p5, p6, :cond_2

    .line 58
    return v0

    .line 60
    :cond_2
    if-eqz p4, :cond_3

    .line 61
    iget-object p5, p1, Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;->mStops:[F

    .line 63
    aget p5, p5, p2

    .line 65
    aget p6, p4, p2

    .line 67
    cmpl-float p5, p5, p6

    .line 69
    if-eqz p5, :cond_3

    .line 71
    return v0

    .line 73
    :cond_3
    add-int/lit8 p2, p2, 0x1

    .line 74
    goto :goto_0

    .line 76
    :cond_4
    return p0

    .line 77
    :cond_5
    return v0
    .line 78
.end method

.method private isValid()Z
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 2
    move-result-object v0

    .line 5
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 6
    move-result-object v1

    .line 9
    if-ne v0, v1, :cond_1

    .line 10
    iget-object p0, p0, Lcom/miui/maml/elements/GraphicsElement;->mCanvas:Landroid/graphics/Canvas;

    .line 12
    if-nez p0, :cond_0

    .line 14
    goto :goto_0

    .line 16
    :cond_0
    const/4 p0, 0x1

    .line 17
    return p0

    .line 18
    :cond_1
    :goto_0
    const-string p0, "MAML_Graphics"

    .line 19
    const-string v0, "Call maml graphics api not in onDraw callback"

    .line 21
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    const/4 p0, 0x0

    .line 26
    return p0
    .line 27
.end method

.method private resetMatrixIfNecessary(ZLcom/miui/maml/elements/GraphicsElement$GraphicsShader;ILjava/lang/String;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 2
    move-result-object p0

    .line 5
    invoke-virtual {p0, p4}, Lcom/miui/maml/data/Variables;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 9
    if-eqz p0, :cond_3

    .line 10
    instance-of p4, p0, Lcom/miui/maml/elements/GraphicsElement$GraphicsMatrix;

    .line 12
    if-eqz p4, :cond_3

    .line 14
    iget-object p4, p2, Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;->mShader:Landroid/graphics/Shader;

    .line 16
    if-eqz p4, :cond_3

    .line 18
    check-cast p0, Lcom/miui/maml/elements/GraphicsElement$GraphicsMatrix;

    .line 20
    if-nez p1, :cond_0

    .line 22
    iget-boolean p1, p0, Lcom/miui/maml/elements/GraphicsElement$GraphicsMatrix;->mChanged:Z

    .line 24
    if-eqz p1, :cond_3

    .line 26
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Matrix;->reset()V

    .line 28
    const/4 p1, 0x0

    .line 31
    const/4 p4, 0x1

    .line 32
    if-ne p3, p4, :cond_1

    .line 33
    const/4 p3, 0x4

    .line 35
    new-array v1, p3, [F

    .line 36
    fill-array-data v1, :array_0

    .line 38
    const/4 v2, 0x0

    .line 41
    iget-object v3, p0, Lcom/miui/maml/elements/GraphicsElement$GraphicsMatrix;->mParm:[F

    .line 42
    const/4 v4, 0x0

    .line 44
    const/4 v5, 0x2

    .line 45
    move-object v0, p0

    .line 46
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Matrix;->setPolyToPoly([FI[FII)Z

    .line 47
    goto :goto_0

    .line 50
    :cond_1
    const/4 v0, 0x2

    .line 51
    if-ne p3, v0, :cond_2

    .line 52
    iget-object p3, p0, Lcom/miui/maml/elements/GraphicsElement$GraphicsMatrix;->mParm:[F

    .line 54
    aget v1, p3, p1

    .line 56
    neg-float v1, v1

    .line 58
    aget p3, p3, p4

    .line 59
    neg-float p3, p3

    .line 61
    invoke-virtual {p0, v1, p3}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 62
    iget-object p3, p0, Lcom/miui/maml/elements/GraphicsElement$GraphicsMatrix;->mParm:[F

    .line 65
    aget v0, p3, v0

    .line 67
    const/4 v1, 0x3

    .line 69
    aget p3, p3, v1

    .line 70
    neg-float p3, p3

    .line 72
    invoke-virtual {p0, v0, p3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 73
    iget-object p3, p0, Lcom/miui/maml/elements/GraphicsElement$GraphicsMatrix;->mParm:[F

    .line 76
    aget v0, p3, p1

    .line 78
    aget p3, p3, p4

    .line 80
    invoke-virtual {p0, v0, p3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 82
    :cond_2
    :goto_0
    iput-boolean p1, p0, Lcom/miui/maml/elements/GraphicsElement$GraphicsMatrix;->mChanged:Z

    .line 85
    iget-object p1, p2, Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;->mShader:Landroid/graphics/Shader;

    .line 87
    invoke-virtual {p1, p0}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 89
    :cond_3
    return-void

    .line 92
    nop

    .line 93
    :array_0
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
    .line 94
.end method

.method private resetShader(Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;I[I[FLjava/lang/String;Landroid/graphics/Shader$TileMode;)Z
    .locals 9

    .line 1
    const/4 p0, 0x1

    .line 2
    if-ne p2, p0, :cond_0

    .line 3
    new-instance v8, Landroid/graphics/LinearGradient;

    .line 5
    const/4 v1, 0x0

    .line 7
    const/4 v2, 0x0

    .line 8
    const/high16 v3, 0x3f800000    # 1.0f

    .line 9
    const/high16 v4, 0x3f800000    # 1.0f

    .line 11
    move-object v0, v8

    .line 13
    move-object v5, p3

    .line 14
    move-object v6, p4

    .line 15
    move-object v7, p6

    .line 16
    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 17
    iput-object v8, p1, Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;->mShader:Landroid/graphics/Shader;

    .line 20
    goto :goto_0

    .line 22
    :cond_0
    const/4 v0, 0x2

    .line 23
    if-ne p2, v0, :cond_2

    .line 24
    new-instance v0, Landroid/graphics/RadialGradient;

    .line 26
    const/4 v2, 0x0

    .line 28
    const/4 v3, 0x0

    .line 29
    const/high16 v4, 0x3f800000    # 1.0f

    .line 30
    move-object v1, v0

    .line 32
    move-object v5, p3

    .line 33
    move-object v6, p4

    .line 34
    move-object v7, p6

    .line 35
    invoke-direct/range {v1 .. v7}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 36
    iput-object v0, p1, Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;->mShader:Landroid/graphics/Shader;

    .line 39
    :goto_0
    invoke-virtual {p3}, [I->clone()Ljava/lang/Object;

    .line 41
    move-result-object p3

    .line 44
    check-cast p3, [I

    .line 45
    iput-object p3, p1, Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;->mColors:[I

    .line 47
    if-eqz p4, :cond_1

    .line 49
    invoke-virtual {p4}, [F->clone()Ljava/lang/Object;

    .line 51
    move-result-object p3

    .line 54
    check-cast p3, [F

    .line 55
    iput-object p3, p1, Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;->mStops:[F

    .line 57
    goto :goto_1

    .line 59
    :cond_1
    const/4 p3, 0x0

    .line 60
    iput-object p3, p1, Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;->mStops:[F

    .line 61
    :goto_1
    invoke-static {p1, p5}, Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;->access$002(Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;Ljava/lang/String;)Ljava/lang/String;

    .line 63
    invoke-static {p1, p2}, Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;->access$102(Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;I)I

    .line 66
    invoke-static {p1, p6}, Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;->access$202(Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;Landroid/graphics/Shader$TileMode;)Landroid/graphics/Shader$TileMode;

    .line 69
    return p0

    .line 72
    :cond_2
    const-string/jumbo p0, "wrong shader type "

    .line 73
    const-string p1, "MAML_Graphics"

    .line 76
    invoke-static {p0, p2, p1}, Lcom/android/keyguard/widget/PasswordTextViewForPIN$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 78
    const/4 p0, 0x0

    .line 81
    return p0
    .line 82
.end method

.method private setColorFilterInternal(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/GraphicsElement;->mFillPaint:Landroid/graphics/Paint;

    .line 2
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 4
    iget-object p0, p0, Lcom/miui/maml/elements/GraphicsElement;->mStrokePaint:Landroid/graphics/Paint;

    .line 7
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 9
    return-void
    .line 12
.end method


# virtual methods
.method public beginFill(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/GraphicsElement;->mFillPaint:Landroid/graphics/Paint;

    .line 2
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 5
    iget-object p0, p0, Lcom/miui/maml/elements/GraphicsElement;->mFillPaint:Landroid/graphics/Paint;

    .line 8
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 10
    return-void
    .line 13
.end method

.method public beginGradientFill(I[I[FLjava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .line 1
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    invoke-direct/range {p0 .. p6}, Lcom/miui/maml/elements/GraphicsElement;->getGraphicsShader(I[I[FLjava/lang/String;Ljava/lang/String;I)Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;

    .line 14
    move-result-object p1

    .line 17
    if-eqz p1, :cond_0

    .line 18
    iget-object p0, p0, Lcom/miui/maml/elements/GraphicsElement;->mFillPaint:Landroid/graphics/Paint;

    .line 20
    iget-object p1, p1, Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;->mShader:Landroid/graphics/Shader;

    .line 22
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 24
    :cond_0
    return-void
    .line 27
.end method

.method public createOrUpdateGradientBox(FFFFLjava/lang/String;)V
    .locals 5

    .line 1
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    move-result v0

    .line 5
    if-nez v0, :cond_2

    .line 6
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 8
    move-result-object v0

    .line 11
    invoke-virtual {v0, p5}, Lcom/miui/maml/data/Variables;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    new-instance v0, Lcom/miui/maml/elements/GraphicsElement$GraphicsMatrix;

    .line 18
    const/4 v1, 0x0

    .line 20
    invoke-direct {v0, v1}, Lcom/miui/maml/elements/GraphicsElement$GraphicsMatrix;-><init>(Lcom/miui/maml/elements/GraphicsElement$1;)V

    .line 21
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 24
    move-result-object p0

    .line 27
    invoke-virtual {p0, p5, v0}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 28
    :cond_0
    instance-of p0, v0, Lcom/miui/maml/elements/GraphicsElement$GraphicsMatrix;

    .line 31
    if-eqz p0, :cond_2

    .line 33
    check-cast v0, Lcom/miui/maml/elements/GraphicsElement$GraphicsMatrix;

    .line 35
    iget-object p0, v0, Lcom/miui/maml/elements/GraphicsElement$GraphicsMatrix;->mParm:[F

    .line 37
    const/4 p5, 0x0

    .line 39
    aget v1, p0, p5

    .line 40
    cmpl-float v1, v1, p1

    .line 42
    const/4 v2, 0x3

    .line 44
    const/4 v3, 0x2

    .line 45
    const/4 v4, 0x1

    .line 46
    if-nez v1, :cond_1

    .line 47
    aget v1, p0, v4

    .line 49
    cmpl-float v1, v1, p2

    .line 51
    if-nez v1, :cond_1

    .line 53
    aget v1, p0, v3

    .line 55
    cmpl-float v1, v1, p3

    .line 57
    if-nez v1, :cond_1

    .line 59
    aget v1, p0, v2

    .line 61
    cmpl-float v1, v1, p4

    .line 63
    if-eqz v1, :cond_2

    .line 65
    :cond_1
    aput p1, p0, p5

    .line 67
    aput p2, p0, v4

    .line 69
    aput p3, p0, v3

    .line 71
    aput p4, p0, v2

    .line 73
    iput-boolean v4, v0, Lcom/miui/maml/elements/GraphicsElement$GraphicsMatrix;->mChanged:Z

    .line 75
    :cond_2
    return-void
    .line 77
.end method

.method public cubicCurveTo(FFFFFF)V
    .locals 11

    .line 1
    move-object v0, p0

    .line 2
    invoke-direct {p0}, Lcom/miui/maml/elements/GraphicsElement;->isValid()Z

    .line 3
    move-result v1

    .line 6
    if-eqz v1, :cond_0

    .line 7
    iget-object v1, v0, Lcom/miui/maml/elements/GraphicsElement;->mPath:Landroid/graphics/Path;

    .line 9
    invoke-virtual {v1}, Landroid/graphics/Path;->rewind()V

    .line 11
    iget-object v1, v0, Lcom/miui/maml/elements/GraphicsElement;->mPath:Landroid/graphics/Path;

    .line 14
    iget v2, v0, Lcom/miui/maml/elements/GraphicsElement;->mCurrentX:F

    .line 16
    iget v3, v0, Lcom/miui/maml/elements/GraphicsElement;->mCurrentY:F

    .line 18
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 20
    iget-object v4, v0, Lcom/miui/maml/elements/GraphicsElement;->mPath:Landroid/graphics/Path;

    .line 23
    move v5, p1

    .line 25
    move v6, p2

    .line 26
    move v7, p3

    .line 27
    move v8, p4

    .line 28
    move/from16 v9, p5

    .line 29
    move/from16 v10, p6

    .line 31
    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 33
    iget-object v1, v0, Lcom/miui/maml/elements/GraphicsElement;->mCanvas:Landroid/graphics/Canvas;

    .line 36
    iget-object v2, v0, Lcom/miui/maml/elements/GraphicsElement;->mPath:Landroid/graphics/Path;

    .line 38
    iget-object v3, v0, Lcom/miui/maml/elements/GraphicsElement;->mStrokePaint:Landroid/graphics/Paint;

    .line 40
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 42
    move/from16 v1, p5

    .line 45
    iput v1, v0, Lcom/miui/maml/elements/GraphicsElement;->mCurrentX:F

    .line 47
    move/from16 v1, p6

    .line 49
    iput v1, v0, Lcom/miui/maml/elements/GraphicsElement;->mCurrentY:F

    .line 51
    :cond_0
    return-void
    .line 53
.end method

.method public curveTo(FFFF)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/miui/maml/elements/GraphicsElement;->isValid()Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/miui/maml/elements/GraphicsElement;->mPath:Landroid/graphics/Path;

    .line 8
    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    .line 10
    iget-object v0, p0, Lcom/miui/maml/elements/GraphicsElement;->mPath:Landroid/graphics/Path;

    .line 13
    iget v1, p0, Lcom/miui/maml/elements/GraphicsElement;->mCurrentX:F

    .line 15
    iget v2, p0, Lcom/miui/maml/elements/GraphicsElement;->mCurrentY:F

    .line 17
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 19
    iget-object v0, p0, Lcom/miui/maml/elements/GraphicsElement;->mPath:Landroid/graphics/Path;

    .line 22
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 24
    iget-object p1, p0, Lcom/miui/maml/elements/GraphicsElement;->mCanvas:Landroid/graphics/Canvas;

    .line 27
    iget-object p2, p0, Lcom/miui/maml/elements/GraphicsElement;->mPath:Landroid/graphics/Path;

    .line 29
    iget-object v0, p0, Lcom/miui/maml/elements/GraphicsElement;->mStrokePaint:Landroid/graphics/Paint;

    .line 31
    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 33
    iput p3, p0, Lcom/miui/maml/elements/GraphicsElement;->mCurrentX:F

    .line 36
    iput p4, p0, Lcom/miui/maml/elements/GraphicsElement;->mCurrentY:F

    .line 38
    :cond_0
    return-void
    .line 40
.end method

.method public doRender(Landroid/graphics/Canvas;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getWidth()F

    .line 2
    move-result v0

    .line 5
    float-to-int v0, v0

    .line 6
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getHeight()F

    .line 7
    move-result v1

    .line 10
    float-to-int v1, v1

    .line 11
    iget-object v2, p0, Lcom/miui/maml/elements/GraphicsElement;->mCanvasBounds:Landroid/graphics/Rect;

    .line 12
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    .line 14
    iget-object v2, p0, Lcom/miui/maml/elements/GraphicsElement;->mCanvasBounds:Landroid/graphics/Rect;

    .line 17
    iget v3, v2, Landroid/graphics/Rect;->right:I

    .line 19
    iget v4, v2, Landroid/graphics/Rect;->left:I

    .line 21
    sub-int/2addr v3, v4

    .line 23
    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    .line 24
    iget v2, v2, Landroid/graphics/Rect;->top:I

    .line 26
    sub-int/2addr v5, v2

    .line 28
    if-lez v3, :cond_0

    .line 29
    if-ge v3, v0, :cond_0

    .line 31
    move v0, v3

    .line 33
    :cond_0
    if-lez v5, :cond_1

    .line 34
    if-ge v5, v1, :cond_1

    .line 36
    move v1, v5

    .line 38
    :cond_1
    invoke-virtual {p1, v4, v2, v0, v1}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 39
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    .line 42
    move-result-object v0

    .line 45
    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->getRenderMutex()Ljava/lang/Object;

    .line 46
    move-result-object v0

    .line 49
    monitor-enter v0

    .line 50
    const/4 v1, 0x0

    .line 51
    :try_start_0
    iput v1, p0, Lcom/miui/maml/elements/GraphicsElement;->mCurrentX:F

    .line 52
    iput v1, p0, Lcom/miui/maml/elements/GraphicsElement;->mCurrentY:F

    .line 54
    iput-object p1, p0, Lcom/miui/maml/elements/GraphicsElement;->mCanvas:Landroid/graphics/Canvas;

    .line 56
    iget-object p1, p0, Lcom/miui/maml/elements/GraphicsElement;->mCallbacks:Lcom/miui/maml/elements/GraphicsElement$Callbacks;

    .line 58
    if-eqz p1, :cond_2

    .line 60
    invoke-virtual {p1}, Lcom/miui/maml/elements/GraphicsElement$Callbacks;->perform()V

    .line 62
    :cond_2
    iget-object p1, p0, Lcom/miui/maml/elements/GraphicsElement;->mRenderListener:Lcom/miui/maml/elements/FunctionElement;

    .line 65
    if-eqz p1, :cond_3

    .line 67
    invoke-virtual {p1}, Lcom/miui/maml/elements/FunctionElement;->perform()V

    .line 69
    :cond_3
    const/4 p1, 0x0

    .line 72
    iput-object p1, p0, Lcom/miui/maml/elements/GraphicsElement;->mCanvas:Landroid/graphics/Canvas;

    .line 73
    monitor-exit v0

    .line 75
    return-void

    .line 76
    :catchall_0
    move-exception p0

    .line 77
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    throw p0
    .line 79
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
    iget-object p1, p0, Lcom/miui/maml/elements/GraphicsElement;->mXfermodeNumExp:Lcom/miui/maml/data/Expression;

    .line 12
    if-eqz p1, :cond_1

    .line 14
    invoke-virtual {p1}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 16
    move-result-wide p1

    .line 19
    double-to-int p1, p1

    .line 20
    invoke-static {p1}, Lcom/miui/maml/util/Utils;->getPorterDuffMode(I)Landroid/graphics/PorterDuff$Mode;

    .line 21
    move-result-object p1

    .line 24
    iget-object p2, p0, Lcom/miui/maml/elements/GraphicsElement;->mMode:Landroid/graphics/PorterDuff$Mode;

    .line 25
    if-eq p1, p2, :cond_1

    .line 27
    iput-object p1, p0, Lcom/miui/maml/elements/GraphicsElement;->mMode:Landroid/graphics/PorterDuff$Mode;

    .line 29
    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    .line 31
    iget-object p2, p0, Lcom/miui/maml/elements/GraphicsElement;->mMode:Landroid/graphics/PorterDuff$Mode;

    .line 33
    invoke-direct {p1, p2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 35
    iput-object p1, p0, Lcom/miui/maml/elements/GraphicsElement;->mXferMode:Landroid/graphics/PorterDuffXfermode;

    .line 38
    iget-object p2, p0, Lcom/miui/maml/elements/GraphicsElement;->mFillPaint:Landroid/graphics/Paint;

    .line 40
    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 42
    iget-object p1, p0, Lcom/miui/maml/elements/GraphicsElement;->mStrokePaint:Landroid/graphics/Paint;

    .line 45
    iget-object p2, p0, Lcom/miui/maml/elements/GraphicsElement;->mXferMode:Landroid/graphics/PorterDuffXfermode;

    .line 47
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 49
    :cond_1
    iget p1, p0, Lcom/miui/maml/elements/GraphicsElement;->mLastAlpha:I

    .line 52
    iget p2, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mAlpha:I

    .line 54
    if-eq p1, p2, :cond_2

    .line 56
    iget-object p1, p0, Lcom/miui/maml/elements/GraphicsElement;->mFillPaint:Landroid/graphics/Paint;

    .line 58
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 60
    iget-object p1, p0, Lcom/miui/maml/elements/GraphicsElement;->mStrokePaint:Landroid/graphics/Paint;

    .line 63
    iget p2, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mAlpha:I

    .line 65
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 67
    iget p1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mAlpha:I

    .line 70
    iput p1, p0, Lcom/miui/maml/elements/GraphicsElement;->mLastAlpha:I

    .line 72
    :cond_2
    iget-boolean p1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mTintChanged:Z

    .line 74
    if-eqz p1, :cond_3

    .line 76
    iget-object p1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 78
    invoke-direct {p0, p1}, Lcom/miui/maml/elements/GraphicsElement;->setColorFilterInternal(Landroid/graphics/ColorFilter;)V

    .line 80
    :cond_3
    return-void
    .line 83
.end method

.method public drawCircle(FFF)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/miui/maml/elements/GraphicsElement;->isValid()Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/miui/maml/elements/GraphicsElement;->mCanvas:Landroid/graphics/Canvas;

    .line 8
    iget-object v1, p0, Lcom/miui/maml/elements/GraphicsElement;->mFillPaint:Landroid/graphics/Paint;

    .line 10
    invoke-virtual {v0, p1, p2, p3, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 12
    iget-object v0, p0, Lcom/miui/maml/elements/GraphicsElement;->mStrokePaint:Landroid/graphics/Paint;

    .line 15
    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    .line 17
    move-result v0

    .line 20
    const/4 v1, 0x0

    .line 21
    cmpl-float v0, v0, v1

    .line 22
    if-lez v0, :cond_0

    .line 24
    iget-object v0, p0, Lcom/miui/maml/elements/GraphicsElement;->mCanvas:Landroid/graphics/Canvas;

    .line 26
    iget-object v1, p0, Lcom/miui/maml/elements/GraphicsElement;->mStrokePaint:Landroid/graphics/Paint;

    .line 28
    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    .line 30
    move-result v1

    .line 33
    const/high16 v2, 0x40000000    # 2.0f

    .line 34
    div-float/2addr v1, v2

    .line 36
    add-float/2addr v1, p3

    .line 37
    iget-object p0, p0, Lcom/miui/maml/elements/GraphicsElement;->mStrokePaint:Landroid/graphics/Paint;

    .line 38
    invoke-virtual {v0, p1, p2, v1, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 40
    :cond_0
    return-void
    .line 43
.end method

.method public drawEllipse(FFFF)V
    .locals 9

    .line 1
    invoke-direct {p0}, Lcom/miui/maml/elements/GraphicsElement;->isValid()Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    const/4 v0, 0x0

    .line 8
    cmpg-float v1, p3, v0

    .line 9
    if-ltz v1, :cond_1

    .line 11
    cmpg-float v1, p4, v0

    .line 13
    if-gez v1, :cond_0

    .line 15
    goto :goto_0

    .line 17
    :cond_0
    const/high16 v1, 0x40000000    # 2.0f

    .line 18
    div-float/2addr p4, v1

    .line 20
    sub-float v8, p2, p4

    .line 21
    add-float/2addr p2, p4

    .line 23
    div-float/2addr p3, v1

    .line 24
    sub-float p4, p1, p3

    .line 25
    add-float/2addr p1, p3

    .line 27
    iget-object v2, p0, Lcom/miui/maml/elements/GraphicsElement;->mCanvas:Landroid/graphics/Canvas;

    .line 28
    iget-object v7, p0, Lcom/miui/maml/elements/GraphicsElement;->mFillPaint:Landroid/graphics/Paint;

    .line 30
    move v3, p4

    .line 32
    move v4, v8

    .line 33
    move v5, p1

    .line 34
    move v6, p2

    .line 35
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawOval(FFFFLandroid/graphics/Paint;)V

    .line 36
    iget-object p3, p0, Lcom/miui/maml/elements/GraphicsElement;->mStrokePaint:Landroid/graphics/Paint;

    .line 39
    invoke-virtual {p3}, Landroid/graphics/Paint;->getStrokeWidth()F

    .line 41
    move-result p3

    .line 44
    cmpl-float v0, p3, v0

    .line 45
    if-lez v0, :cond_1

    .line 47
    iget-object v2, p0, Lcom/miui/maml/elements/GraphicsElement;->mCanvas:Landroid/graphics/Canvas;

    .line 49
    div-float/2addr p3, v1

    .line 51
    sub-float v3, p4, p3

    .line 52
    sub-float v4, v8, p3

    .line 54
    add-float v5, p1, p3

    .line 56
    add-float v6, p2, p3

    .line 58
    iget-object v7, p0, Lcom/miui/maml/elements/GraphicsElement;->mStrokePaint:Landroid/graphics/Paint;

    .line 60
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawOval(FFFFLandroid/graphics/Paint;)V

    .line 62
    nop

    .line 65
    :cond_1
    :goto_0
    return-void
    .line 66
.end method

.method public drawRect(FFFF)V
    .locals 7

    .line 1
    const/4 v5, 0x0

    .line 2
    const/4 v6, 0x0

    .line 3
    move-object v0, p0

    .line 4
    move v1, p1

    .line 5
    move v2, p2

    .line 6
    move v3, p3

    .line 7
    move v4, p4

    .line 8
    invoke-virtual/range {v0 .. v6}, Lcom/miui/maml/elements/GraphicsElement;->drawRoundRect(FFFFFF)V

    .line 9
    return-void
    .line 12
.end method

.method public drawRoundRect(FFFFFF)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    invoke-direct/range {p0 .. p0}, Lcom/miui/maml/elements/GraphicsElement;->isValid()Z

    .line 4
    move-result v1

    .line 7
    if-eqz v1, :cond_1

    .line 8
    const/4 v9, 0x0

    .line 10
    cmpg-float v1, p3, v9

    .line 11
    if-ltz v1, :cond_1

    .line 13
    cmpg-float v1, p4, v9

    .line 15
    if-gez v1, :cond_0

    .line 17
    goto :goto_0

    .line 19
    :cond_0
    add-float v10, p2, p4

    .line 20
    add-float v11, p1, p3

    .line 22
    iget-object v1, v0, Lcom/miui/maml/elements/GraphicsElement;->mCanvas:Landroid/graphics/Canvas;

    .line 24
    iget-object v8, v0, Lcom/miui/maml/elements/GraphicsElement;->mFillPaint:Landroid/graphics/Paint;

    .line 26
    move/from16 v2, p1

    .line 28
    move/from16 v3, p2

    .line 30
    move v4, v11

    .line 32
    move v5, v10

    .line 33
    move/from16 v6, p5

    .line 34
    move/from16 v7, p6

    .line 36
    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 38
    iget-object v1, v0, Lcom/miui/maml/elements/GraphicsElement;->mStrokePaint:Landroid/graphics/Paint;

    .line 41
    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    .line 43
    move-result v1

    .line 46
    cmpl-float v2, v1, v9

    .line 47
    if-lez v2, :cond_1

    .line 49
    iget-object v12, v0, Lcom/miui/maml/elements/GraphicsElement;->mCanvas:Landroid/graphics/Canvas;

    .line 51
    const/high16 v2, 0x40000000    # 2.0f

    .line 53
    div-float/2addr v1, v2

    .line 55
    sub-float v13, p1, v1

    .line 56
    sub-float v14, p2, v1

    .line 58
    add-float v15, v11, v1

    .line 60
    add-float v16, v10, v1

    .line 62
    iget-object v0, v0, Lcom/miui/maml/elements/GraphicsElement;->mStrokePaint:Landroid/graphics/Paint;

    .line 64
    move/from16 v17, p5

    .line 66
    move/from16 v18, p6

    .line 68
    move-object/from16 v19, v0

    .line 70
    invoke-virtual/range {v12 .. v19}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 72
    nop

    .line 75
    :cond_1
    :goto_0
    return-void
    .line 76
.end method

.method public finish()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->finish()V

    .line 2
    iget-object p0, p0, Lcom/miui/maml/elements/GraphicsElement;->mCallbacks:Lcom/miui/maml/elements/GraphicsElement$Callbacks;

    .line 5
    if-eqz p0, :cond_0

    .line 7
    invoke-virtual {p0}, Lcom/miui/maml/elements/GraphicsElement$Callbacks;->finish()V

    .line 9
    :cond_0
    return-void
    .line 12
.end method

.method public getScaleX()F
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getWidthRaw()F

    .line 2
    move-result v0

    .line 5
    iget-boolean v1, p0, Lcom/miui/maml/elements/GraphicsElement;->mAutoScale:Z

    .line 6
    if-eqz v1, :cond_0

    .line 8
    iget v1, p0, Lcom/miui/maml/elements/GraphicsElement;->mInitRawWidth:F

    .line 10
    const/4 v2, 0x0

    .line 12
    cmpl-float v3, v1, v2

    .line 13
    if-lez v3, :cond_0

    .line 15
    cmpl-float v2, v0, v2

    .line 17
    if-lez v2, :cond_0

    .line 19
    div-float/2addr v0, v1

    .line 21
    invoke-super {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getScaleX()F

    .line 22
    move-result p0

    .line 25
    mul-float/2addr v0, p0

    .line 26
    return v0

    .line 27
    :cond_0
    invoke-super {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getScaleX()F

    .line 28
    move-result p0

    .line 31
    return p0
.end method

.method public getScaleY()F
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getHeightRaw()F

    .line 2
    move-result v0

    .line 5
    iget-boolean v1, p0, Lcom/miui/maml/elements/GraphicsElement;->mAutoScale:Z

    .line 6
    if-eqz v1, :cond_0

    .line 8
    iget v1, p0, Lcom/miui/maml/elements/GraphicsElement;->mInitRawHeight:F

    .line 10
    const/4 v2, 0x0

    .line 12
    cmpl-float v3, v1, v2

    .line 13
    if-lez v3, :cond_0

    .line 15
    cmpl-float v2, v0, v2

    .line 17
    if-lez v2, :cond_0

    .line 19
    div-float/2addr v0, v1

    .line 21
    invoke-super {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getScaleY()F

    .line 22
    move-result p0

    .line 25
    mul-float/2addr v0, p0

    .line 26
    return v0

    .line 27
    :cond_0
    invoke-super {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getScaleY()F

    .line 28
    move-result p0

    .line 31
    return p0
.end method

.method public init()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->init()V

    .line 2
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getWidthRaw()F

    .line 5
    move-result v0

    .line 8
    iput v0, p0, Lcom/miui/maml/elements/GraphicsElement;->mInitRawWidth:F

    .line 9
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getHeightRaw()F

    .line 11
    move-result v0

    .line 14
    iput v0, p0, Lcom/miui/maml/elements/GraphicsElement;->mInitRawHeight:F

    .line 15
    iget-object v0, p0, Lcom/miui/maml/elements/GraphicsElement;->mFillPaint:Landroid/graphics/Paint;

    .line 17
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 19
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 21
    iget-object v0, p0, Lcom/miui/maml/elements/GraphicsElement;->mStrokePaint:Landroid/graphics/Paint;

    .line 24
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 26
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 28
    iget-object v0, p0, Lcom/miui/maml/elements/GraphicsElement;->mFillPaint:Landroid/graphics/Paint;

    .line 31
    const/4 v1, 0x1

    .line 33
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 34
    iget-object v0, p0, Lcom/miui/maml/elements/GraphicsElement;->mStrokePaint:Landroid/graphics/Paint;

    .line 37
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 39
    iget-object v0, p0, Lcom/miui/maml/elements/GraphicsElement;->mCallbacks:Lcom/miui/maml/elements/GraphicsElement$Callbacks;

    .line 42
    if-eqz v0, :cond_0

    .line 44
    invoke-virtual {v0}, Lcom/miui/maml/elements/GraphicsElement$Callbacks;->init()V

    .line 46
    :cond_0
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->evaluateAlpha()I

    .line 49
    move-result v0

    .line 52
    iput v0, p0, Lcom/miui/maml/elements/GraphicsElement;->mLastAlpha:I

    .line 53
    return-void
    .line 55
.end method

.method public lineGradientStyle(I[I[FLjava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .line 1
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    invoke-direct/range {p0 .. p6}, Lcom/miui/maml/elements/GraphicsElement;->getGraphicsShader(I[I[FLjava/lang/String;Ljava/lang/String;I)Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;

    .line 14
    move-result-object p1

    .line 17
    if-eqz p1, :cond_0

    .line 18
    iget-object p0, p0, Lcom/miui/maml/elements/GraphicsElement;->mStrokePaint:Landroid/graphics/Paint;

    .line 20
    iget-object p1, p1, Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;->mShader:Landroid/graphics/Shader;

    .line 22
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 24
    :cond_0
    return-void
    .line 27
.end method

.method public lineStyle(FIIIF)V
    .locals 3

    .line 1
    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    .line 2
    if-ltz p3, :cond_0

    .line 4
    invoke-static {}, Landroid/graphics/Paint$Cap;->values()[Landroid/graphics/Paint$Cap;

    .line 6
    move-result-object v1

    .line 9
    array-length v1, v1

    .line 10
    if-ge p3, v1, :cond_0

    .line 11
    invoke-static {}, Landroid/graphics/Paint$Cap;->values()[Landroid/graphics/Paint$Cap;

    .line 13
    move-result-object v0

    .line 16
    aget-object v0, v0, p3

    .line 17
    :cond_0
    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    .line 19
    if-ltz p4, :cond_1

    .line 21
    invoke-static {}, Landroid/graphics/Paint$Join;->values()[Landroid/graphics/Paint$Join;

    .line 23
    move-result-object v2

    .line 26
    array-length v2, v2

    .line 27
    if-ge p4, v2, :cond_1

    .line 28
    invoke-static {}, Landroid/graphics/Paint$Join;->values()[Landroid/graphics/Paint$Join;

    .line 30
    move-result-object p4

    .line 33
    aget-object v1, p4, p3

    .line 34
    :cond_1
    iget-object p3, p0, Lcom/miui/maml/elements/GraphicsElement;->mStrokePaint:Landroid/graphics/Paint;

    .line 36
    const/4 p4, 0x0

    .line 38
    invoke-virtual {p3, p4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 39
    const/4 p3, 0x0

    .line 42
    cmpl-float p4, p1, p3

    .line 43
    if-ltz p4, :cond_2

    .line 45
    iget-object p4, p0, Lcom/miui/maml/elements/GraphicsElement;->mStrokePaint:Landroid/graphics/Paint;

    .line 47
    invoke-virtual {p4, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 49
    :cond_2
    iget-object p1, p0, Lcom/miui/maml/elements/GraphicsElement;->mStrokePaint:Landroid/graphics/Paint;

    .line 52
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 54
    iget-object p1, p0, Lcom/miui/maml/elements/GraphicsElement;->mStrokePaint:Landroid/graphics/Paint;

    .line 57
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 59
    iget-object p1, p0, Lcom/miui/maml/elements/GraphicsElement;->mStrokePaint:Landroid/graphics/Paint;

    .line 62
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 64
    cmpl-float p1, p5, p3

    .line 67
    if-lez p1, :cond_3

    .line 69
    iget-object p0, p0, Lcom/miui/maml/elements/GraphicsElement;->mStrokePaint:Landroid/graphics/Paint;

    .line 71
    invoke-virtual {p0, p5}, Landroid/graphics/Paint;->setStrokeMiter(F)V

    .line 73
    :cond_3
    return-void
    .line 76
.end method

.method public lineTo(FF)V
    .locals 7

    .line 1
    invoke-direct {p0}, Lcom/miui/maml/elements/GraphicsElement;->isValid()Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    iget-object v1, p0, Lcom/miui/maml/elements/GraphicsElement;->mCanvas:Landroid/graphics/Canvas;

    .line 8
    iget v2, p0, Lcom/miui/maml/elements/GraphicsElement;->mCurrentX:F

    .line 10
    iget v3, p0, Lcom/miui/maml/elements/GraphicsElement;->mCurrentY:F

    .line 12
    iget-object v6, p0, Lcom/miui/maml/elements/GraphicsElement;->mStrokePaint:Landroid/graphics/Paint;

    .line 14
    move v4, p1

    .line 16
    move v5, p2

    .line 17
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 18
    iput p1, p0, Lcom/miui/maml/elements/GraphicsElement;->mCurrentX:F

    .line 21
    iput p2, p0, Lcom/miui/maml/elements/GraphicsElement;->mCurrentY:F

    .line 23
    :cond_0
    return-void
    .line 25
.end method

.method public moveTo(FF)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/miui/maml/elements/GraphicsElement;->isValid()Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    iput p1, p0, Lcom/miui/maml/elements/GraphicsElement;->mCurrentX:F

    .line 8
    iput p2, p0, Lcom/miui/maml/elements/GraphicsElement;->mCurrentY:F

    .line 10
    :cond_0
    return-void
    .line 12
.end method

.method public pause()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->pause()V

    .line 2
    iget-object p0, p0, Lcom/miui/maml/elements/GraphicsElement;->mCallbacks:Lcom/miui/maml/elements/GraphicsElement$Callbacks;

    .line 5
    if-eqz p0, :cond_0

    .line 7
    invoke-virtual {p0}, Lcom/miui/maml/elements/GraphicsElement$Callbacks;->pause()V

    .line 9
    :cond_0
    return-void
    .line 12
.end method

.method public resume()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/miui/maml/elements/ScreenElement;->resume()V

    .line 2
    iget-object p0, p0, Lcom/miui/maml/elements/GraphicsElement;->mCallbacks:Lcom/miui/maml/elements/GraphicsElement$Callbacks;

    .line 5
    if-eqz p0, :cond_0

    .line 7
    invoke-virtual {p0}, Lcom/miui/maml/elements/GraphicsElement$Callbacks;->resume()V

    .line 9
    :cond_0
    return-void
    .line 12
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/miui/maml/elements/AnimatedScreenElement;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 2
    invoke-direct {p0, p1}, Lcom/miui/maml/elements/GraphicsElement;->setColorFilterInternal(Landroid/graphics/ColorFilter;)V

    .line 5
    return-void
    .line 8
.end method

.method public setRenderListener(Lcom/miui/maml/elements/FunctionElement;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/maml/elements/GraphicsElement;->mRenderListener:Lcom/miui/maml/elements/FunctionElement;

    .line 2
    return-void
    .line 4
.end method
