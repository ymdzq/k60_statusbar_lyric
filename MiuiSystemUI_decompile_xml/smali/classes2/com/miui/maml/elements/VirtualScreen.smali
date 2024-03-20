.class public Lcom/miui/maml/elements/VirtualScreen;
.super Lcom/miui/maml/elements/ElementGroup;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/miui/maml/elements/BitmapProvider$IBitmapHolder;


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "VirtualScreen"


# instance fields
.field private mScreenBitmap:Landroid/graphics/Bitmap;

.field private mScreenCanvas:Landroid/graphics/Canvas;

.field private mTicked:Z

.field private mVersionedBitmap:Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/ElementGroup;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 2
    return-void
    .line 5
.end method


# virtual methods
.method public doRender(Landroid/graphics/Canvas;)V
    .locals 2

    .line 1
    iget-boolean p1, p0, Lcom/miui/maml/elements/VirtualScreen;->mTicked:Z

    .line 2
    if-eqz p1, :cond_0

    .line 4
    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lcom/miui/maml/elements/VirtualScreen;->mTicked:Z

    .line 7
    iget-object v0, p0, Lcom/miui/maml/elements/VirtualScreen;->mScreenCanvas:Landroid/graphics/Canvas;

    .line 9
    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 11
    iget-object v0, p0, Lcom/miui/maml/elements/VirtualScreen;->mScreenCanvas:Landroid/graphics/Canvas;

    .line 14
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getMatrix()Landroid/graphics/Matrix;

    .line 16
    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 20
    iget-object v0, p0, Lcom/miui/maml/elements/VirtualScreen;->mScreenCanvas:Landroid/graphics/Canvas;

    .line 23
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    .line 25
    invoke-virtual {v0, p1, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 27
    iget-object p1, p0, Lcom/miui/maml/elements/VirtualScreen;->mScreenCanvas:Landroid/graphics/Canvas;

    .line 30
    invoke-super {p0, p1}, Lcom/miui/maml/elements/ElementGroup;->doRender(Landroid/graphics/Canvas;)V

    .line 32
    iget-object p1, p0, Lcom/miui/maml/elements/VirtualScreen;->mScreenCanvas:Landroid/graphics/Canvas;

    .line 35
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 37
    iget-object p0, p0, Lcom/miui/maml/elements/VirtualScreen;->mVersionedBitmap:Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    .line 40
    invoke-virtual {p0}, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;->updateVersion()I

    .line 42
    :cond_0
    return-void
    .line 45
.end method

.method public doTick(J)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/miui/maml/elements/ElementGroup;->doTick(J)V

    .line 2
    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/miui/maml/elements/VirtualScreen;->mTicked:Z

    .line 6
    return-void
    .line 8
.end method

.method public finish()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/miui/maml/elements/ElementGroup;->finish()V

    .line 2
    iget-object v0, p0, Lcom/miui/maml/elements/VirtualScreen;->mScreenBitmap:Landroid/graphics/Bitmap;

    .line 5
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 7
    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/miui/maml/elements/VirtualScreen;->mScreenBitmap:Landroid/graphics/Bitmap;

    .line 11
    iput-object v0, p0, Lcom/miui/maml/elements/VirtualScreen;->mScreenCanvas:Landroid/graphics/Canvas;

    .line 13
    return-void
    .line 15
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/VirtualScreen;->mScreenBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public getBitmap(Ljava/lang/String;)Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/miui/maml/elements/VirtualScreen;->mVersionedBitmap:Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    return-object p0
.end method

.method public init()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/miui/maml/elements/ElementGroup;->init()V

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
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 50
    move-result v0

    .line 53
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 54
    move-result v1

    .line 57
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 58
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 60
    move-result-object v0

    .line 63
    iput-object v0, p0, Lcom/miui/maml/elements/VirtualScreen;->mScreenBitmap:Landroid/graphics/Bitmap;

    .line 64
    iget-object v1, p0, Lcom/miui/maml/elements/ScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 66
    invoke-virtual {v1}, Lcom/miui/maml/ScreenElementRoot;->getTargetDensity()I

    .line 68
    move-result v1

    .line 71
    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 72
    new-instance v0, Landroid/graphics/Canvas;

    .line 75
    iget-object v1, p0, Lcom/miui/maml/elements/VirtualScreen;->mScreenBitmap:Landroid/graphics/Bitmap;

    .line 77
    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 79
    iput-object v0, p0, Lcom/miui/maml/elements/VirtualScreen;->mScreenCanvas:Landroid/graphics/Canvas;

    .line 82
    new-instance v0, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    .line 84
    iget-object v1, p0, Lcom/miui/maml/elements/VirtualScreen;->mScreenBitmap:Landroid/graphics/Bitmap;

    .line 86
    invoke-direct {v0, v1}, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;-><init>(Landroid/graphics/Bitmap;)V

    .line 88
    iput-object v0, p0, Lcom/miui/maml/elements/VirtualScreen;->mVersionedBitmap:Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    .line 91
    return-void
    .line 93
.end method
