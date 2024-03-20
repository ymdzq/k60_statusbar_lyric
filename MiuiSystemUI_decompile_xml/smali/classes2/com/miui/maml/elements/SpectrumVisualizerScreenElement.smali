.class public Lcom/miui/maml/elements/SpectrumVisualizerScreenElement;
.super Lcom/miui/maml/elements/ImageScreenElement;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "SpectrumVisualizer"


# instance fields
.field private mAlphaWidthNum:I

.field private mCanvas:Landroid/graphics/Canvas;

.field private mDotbar:Ljava/lang/String;

.field private mPanel:Landroid/graphics/Bitmap;

.field private mPanelSrc:Ljava/lang/String;

.field private mResDensity:I

.field private mShadow:Ljava/lang/String;

.field private mSpectrumVisualizer:Lcom/miui/maml/widget/SpectrumVisualizer;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/ImageScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 2
    invoke-direct {p0, p1}, Lcom/miui/maml/elements/SpectrumVisualizerScreenElement;->load(Lorg/w3c/dom/Element;)V

    .line 5
    return-void
    .line 8
.end method

.method private load(Lorg/w3c/dom/Element;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    return-void

    .line 4
    :cond_0
    const-string v0, "panelSrc"

    .line 5
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    move-result-object v0

    .line 10
    iput-object v0, p0, Lcom/miui/maml/elements/SpectrumVisualizerScreenElement;->mPanelSrc:Ljava/lang/String;

    .line 11
    const-string v0, "dotbarSrc"

    .line 13
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    move-result-object v0

    .line 18
    iput-object v0, p0, Lcom/miui/maml/elements/SpectrumVisualizerScreenElement;->mDotbar:Ljava/lang/String;

    .line 19
    const-string/jumbo v0, "shadowSrc"

    .line 21
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 27
    iput-object v0, p0, Lcom/miui/maml/elements/SpectrumVisualizerScreenElement;->mShadow:Ljava/lang/String;

    .line 28
    new-instance v0, Lcom/miui/maml/widget/SpectrumVisualizer;

    .line 30
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getContext()Lcom/miui/maml/ScreenContext;

    .line 32
    move-result-object v1

    .line 35
    iget-object v1, v1, Lcom/miui/maml/ScreenContext;->mContext:Landroid/content/Context;

    .line 36
    invoke-direct {v0, v1}, Lcom/miui/maml/widget/SpectrumVisualizer;-><init>(Landroid/content/Context;)V

    .line 38
    iput-object v0, p0, Lcom/miui/maml/elements/SpectrumVisualizerScreenElement;->mSpectrumVisualizer:Lcom/miui/maml/widget/SpectrumVisualizer;

    .line 41
    const/4 v1, 0x0

    .line 43
    invoke-virtual {v0, v1}, Lcom/miui/maml/widget/SpectrumVisualizer;->setSoftDrawEnabled(Z)V

    .line 44
    iget-object v0, p0, Lcom/miui/maml/elements/SpectrumVisualizerScreenElement;->mSpectrumVisualizer:Lcom/miui/maml/widget/SpectrumVisualizer;

    .line 47
    invoke-virtual {v0, v1}, Lcom/miui/maml/widget/SpectrumVisualizer;->enableUpdate(Z)V

    .line 49
    const-string v0, "alphaWidthNum"

    .line 52
    const/4 v1, -0x1

    .line 54
    invoke-static {p1, v0, v1}, Lcom/miui/maml/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    .line 55
    move-result p1

    .line 58
    iput p1, p0, Lcom/miui/maml/elements/SpectrumVisualizerScreenElement;->mAlphaWidthNum:I

    .line 59
    return-void
    .line 61
.end method


# virtual methods
.method public doRender(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/SpectrumVisualizerScreenElement;->mPanel:Landroid/graphics/Bitmap;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mPaint:Landroid/graphics/Paint;

    .line 6
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getAlpha()I

    .line 8
    move-result v1

    .line 11
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 12
    iget-object v0, p0, Lcom/miui/maml/elements/SpectrumVisualizerScreenElement;->mPanel:Landroid/graphics/Bitmap;

    .line 15
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getLeft()F

    .line 17
    move-result v1

    .line 20
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getTop()F

    .line 21
    move-result v2

    .line 24
    iget-object v3, p0, Lcom/miui/maml/elements/ImageScreenElement;->mPaint:Landroid/graphics/Paint;

    .line 25
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 27
    :cond_0
    invoke-super {p0, p1}, Lcom/miui/maml/elements/ImageScreenElement;->doRender(Landroid/graphics/Canvas;)V

    .line 30
    return-void
    .line 33
.end method

.method public enableUpdate(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/SpectrumVisualizerScreenElement;->mSpectrumVisualizer:Lcom/miui/maml/widget/SpectrumVisualizer;

    .line 2
    invoke-virtual {p0, p1}, Lcom/miui/maml/widget/SpectrumVisualizer;->enableUpdate(Z)V

    .line 4
    return-void
    .line 7
.end method

.method public getBitmap(Z)Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/miui/maml/elements/SpectrumVisualizerScreenElement;->mCanvas:Landroid/graphics/Canvas;

    .line 2
    if-nez p1, :cond_0

    .line 4
    const/4 p0, 0x0

    .line 6
    return-object p0

    .line 7
    :cond_0
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    .line 8
    const/4 v1, 0x0

    .line 10
    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 11
    iget-object p1, p0, Lcom/miui/maml/elements/SpectrumVisualizerScreenElement;->mCanvas:Landroid/graphics/Canvas;

    .line 14
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->setDensity(I)V

    .line 16
    iget-object p1, p0, Lcom/miui/maml/elements/SpectrumVisualizerScreenElement;->mSpectrumVisualizer:Lcom/miui/maml/widget/SpectrumVisualizer;

    .line 19
    iget-object v0, p0, Lcom/miui/maml/elements/SpectrumVisualizerScreenElement;->mCanvas:Landroid/graphics/Canvas;

    .line 21
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->draw(Landroid/graphics/Canvas;)V

    .line 23
    iget-object p1, p0, Lcom/miui/maml/elements/SpectrumVisualizerScreenElement;->mCanvas:Landroid/graphics/Canvas;

    .line 26
    iget v0, p0, Lcom/miui/maml/elements/SpectrumVisualizerScreenElement;->mResDensity:I

    .line 28
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setDensity(I)V

    .line 30
    iget-object p1, p0, Lcom/miui/maml/elements/ImageScreenElement;->mBitmap:Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    .line 33
    invoke-virtual {p1}, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;->updateVersion()I

    .line 35
    iget-object p0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mBitmap:Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    .line 38
    return-object p0
    .line 40
.end method

.method public init()V
    .locals 5

    .line 1
    invoke-super {p0}, Lcom/miui/maml/elements/ImageScreenElement;->init()V

    .line 2
    iget-object v0, p0, Lcom/miui/maml/elements/SpectrumVisualizerScreenElement;->mPanelSrc:Ljava/lang/String;

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 7
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    move-object v0, v1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getContext()Lcom/miui/maml/ScreenContext;

    .line 16
    move-result-object v0

    .line 19
    iget-object v0, v0, Lcom/miui/maml/ScreenContext;->mResourceManager:Lcom/miui/maml/ResourceManager;

    .line 20
    iget-object v2, p0, Lcom/miui/maml/elements/SpectrumVisualizerScreenElement;->mPanelSrc:Ljava/lang/String;

    .line 22
    invoke-virtual {v0, v2}, Lcom/miui/maml/ResourceManager;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 24
    move-result-object v0

    .line 27
    :goto_0
    iput-object v0, p0, Lcom/miui/maml/elements/SpectrumVisualizerScreenElement;->mPanel:Landroid/graphics/Bitmap;

    .line 28
    iget-object v0, p0, Lcom/miui/maml/elements/SpectrumVisualizerScreenElement;->mDotbar:Ljava/lang/String;

    .line 30
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 32
    move-result v0

    .line 35
    if-eqz v0, :cond_1

    .line 36
    move-object v0, v1

    .line 38
    goto :goto_1

    .line 39
    :cond_1
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getContext()Lcom/miui/maml/ScreenContext;

    .line 40
    move-result-object v0

    .line 43
    iget-object v0, v0, Lcom/miui/maml/ScreenContext;->mResourceManager:Lcom/miui/maml/ResourceManager;

    .line 44
    iget-object v2, p0, Lcom/miui/maml/elements/SpectrumVisualizerScreenElement;->mDotbar:Ljava/lang/String;

    .line 46
    invoke-virtual {v0, v2}, Lcom/miui/maml/ResourceManager;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 48
    move-result-object v0

    .line 51
    :goto_1
    iget-object v2, p0, Lcom/miui/maml/elements/SpectrumVisualizerScreenElement;->mShadow:Ljava/lang/String;

    .line 52
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 54
    move-result v2

    .line 57
    if-eqz v2, :cond_2

    .line 58
    goto :goto_2

    .line 60
    :cond_2
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getContext()Lcom/miui/maml/ScreenContext;

    .line 61
    move-result-object v1

    .line 64
    iget-object v1, v1, Lcom/miui/maml/ScreenContext;->mResourceManager:Lcom/miui/maml/ResourceManager;

    .line 65
    iget-object v2, p0, Lcom/miui/maml/elements/SpectrumVisualizerScreenElement;->mShadow:Ljava/lang/String;

    .line 67
    invoke-virtual {v1, v2}, Lcom/miui/maml/ResourceManager;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 69
    move-result-object v1

    .line 72
    :goto_2
    invoke-virtual {p0}, Lcom/miui/maml/elements/ImageScreenElement;->getWidth()F

    .line 73
    move-result v2

    .line 76
    float-to-int v2, v2

    .line 77
    invoke-virtual {p0}, Lcom/miui/maml/elements/ImageScreenElement;->getHeight()F

    .line 78
    move-result v3

    .line 81
    float-to-int v3, v3

    .line 82
    const-string v4, "SpectrumVisualizer"

    .line 83
    if-lez v2, :cond_3

    .line 85
    if-gtz v3, :cond_4

    .line 87
    :cond_3
    iget-object v2, p0, Lcom/miui/maml/elements/SpectrumVisualizerScreenElement;->mPanel:Landroid/graphics/Bitmap;

    .line 89
    if-eqz v2, :cond_7

    .line 91
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    .line 93
    move-result v2

    .line 96
    iget-object v3, p0, Lcom/miui/maml/elements/SpectrumVisualizerScreenElement;->mPanel:Landroid/graphics/Bitmap;

    .line 97
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    .line 99
    move-result v3

    .line 102
    :cond_4
    if-nez v0, :cond_5

    .line 103
    const-string p0, "no dotbar"

    .line 105
    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    return-void

    .line 110
    :cond_5
    iget-object v4, p0, Lcom/miui/maml/elements/SpectrumVisualizerScreenElement;->mSpectrumVisualizer:Lcom/miui/maml/widget/SpectrumVisualizer;

    .line 111
    invoke-virtual {v4, v2, v3, v0, v1}, Lcom/miui/maml/widget/SpectrumVisualizer;->setBitmaps(IILandroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 113
    iget v1, p0, Lcom/miui/maml/elements/SpectrumVisualizerScreenElement;->mAlphaWidthNum:I

    .line 116
    if-ltz v1, :cond_6

    .line 118
    iget-object v4, p0, Lcom/miui/maml/elements/SpectrumVisualizerScreenElement;->mSpectrumVisualizer:Lcom/miui/maml/widget/SpectrumVisualizer;

    .line 120
    invoke-virtual {v4, v1}, Lcom/miui/maml/widget/SpectrumVisualizer;->setAlphaNum(I)V

    .line 122
    :cond_6
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getDensity()I

    .line 125
    move-result v0

    .line 128
    iput v0, p0, Lcom/miui/maml/elements/SpectrumVisualizerScreenElement;->mResDensity:I

    .line 129
    iget-object v0, p0, Lcom/miui/maml/elements/SpectrumVisualizerScreenElement;->mSpectrumVisualizer:Lcom/miui/maml/widget/SpectrumVisualizer;

    .line 131
    const/4 v1, 0x0

    .line 133
    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/widget/ImageView;->layout(IIII)V

    .line 134
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 137
    invoke-static {v2, v3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 139
    move-result-object v0

    .line 142
    iget v1, p0, Lcom/miui/maml/elements/SpectrumVisualizerScreenElement;->mResDensity:I

    .line 143
    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 145
    new-instance v1, Landroid/graphics/Canvas;

    .line 148
    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 150
    iput-object v1, p0, Lcom/miui/maml/elements/SpectrumVisualizerScreenElement;->mCanvas:Landroid/graphics/Canvas;

    .line 153
    iget-object p0, p0, Lcom/miui/maml/elements/ImageScreenElement;->mBitmap:Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    .line 155
    invoke-virtual {p0, v0}, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;->setBitmap(Landroid/graphics/Bitmap;)Z

    .line 157
    return-void

    .line 160
    :cond_7
    const-string p0, "no panel or size"

    .line 161
    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    return-void
    .line 166
.end method
