.class public final Lcom/android/systemui/shared/shadow/DoubleShadowIconDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mCanvasSize:I

.field public final mDoubleShadowNode:Landroid/graphics/RenderNode;

.field public final mIconDrawable:Landroid/graphics/drawable/InsetDrawable;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;Landroid/graphics/drawable/Drawable;II)V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 2
    mul-int/lit8 v0, p5, 0x2

    .line 5
    add-int/2addr v0, p4

    .line 7
    iput v0, p0, Lcom/android/systemui/shared/shadow/DoubleShadowIconDrawable;->mCanvasSize:I

    .line 8
    const/4 p4, 0x0

    .line 10
    invoke-virtual {p0, p4, p4, v0, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 11
    new-instance v1, Landroid/graphics/drawable/InsetDrawable;

    .line 14
    invoke-direct {v1, p3, p5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;I)V

    .line 16
    iput-object v1, p0, Lcom/android/systemui/shared/shadow/DoubleShadowIconDrawable;->mIconDrawable:Landroid/graphics/drawable/InsetDrawable;

    .line 19
    invoke-virtual {v1, p4, p4, v0, v0}, Landroid/graphics/drawable/InsetDrawable;->setBounds(IIII)V

    .line 21
    new-instance p3, Landroid/graphics/RenderNode;

    .line 24
    const-string p5, "DoubleShadowNode"

    .line 26
    invoke-direct {p3, p5}, Landroid/graphics/RenderNode;-><init>(Ljava/lang/String;)V

    .line 28
    invoke-virtual {p3, p4, p4, v0, v0}, Landroid/graphics/RenderNode;->setPosition(IIII)Z

    .line 31
    iget p4, p2, Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;->offsetY:F

    .line 34
    new-instance p5, Landroid/graphics/PorterDuffColorFilter;

    .line 36
    iget v0, p2, Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;->alpha:F

    .line 38
    const/4 v1, 0x0

    .line 40
    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(FFFF)I

    .line 41
    move-result v0

    .line 44
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    .line 45
    invoke-direct {p5, v0, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 47
    sget-object v0, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 50
    iget v2, p2, Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;->blur:F

    .line 52
    invoke-static {v2, v2, v0}, Landroid/graphics/RenderEffect;->createBlurEffect(FFLandroid/graphics/Shader$TileMode;)Landroid/graphics/RenderEffect;

    .line 54
    move-result-object v0

    .line 57
    iget p2, p2, Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;->offsetX:F

    .line 58
    invoke-static {p2, p4, v0}, Landroid/graphics/RenderEffect;->createOffsetEffect(FFLandroid/graphics/RenderEffect;)Landroid/graphics/RenderEffect;

    .line 60
    move-result-object p2

    .line 63
    invoke-static {p5, p2}, Landroid/graphics/RenderEffect;->createColorFilterEffect(Landroid/graphics/ColorFilter;Landroid/graphics/RenderEffect;)Landroid/graphics/RenderEffect;

    .line 64
    move-result-object p2

    .line 67
    iget p4, p1, Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;->offsetY:F

    .line 68
    new-instance p5, Landroid/graphics/PorterDuffColorFilter;

    .line 70
    iget v0, p1, Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;->alpha:F

    .line 72
    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(FFFF)I

    .line 74
    move-result v0

    .line 77
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    .line 78
    invoke-direct {p5, v0, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 80
    sget-object v0, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 83
    iget v1, p1, Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;->blur:F

    .line 85
    invoke-static {v1, v1, v0}, Landroid/graphics/RenderEffect;->createBlurEffect(FFLandroid/graphics/Shader$TileMode;)Landroid/graphics/RenderEffect;

    .line 87
    move-result-object v0

    .line 90
    iget p1, p1, Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;->offsetX:F

    .line 91
    invoke-static {p1, p4, v0}, Landroid/graphics/RenderEffect;->createOffsetEffect(FFLandroid/graphics/RenderEffect;)Landroid/graphics/RenderEffect;

    .line 93
    move-result-object p1

    .line 96
    invoke-static {p5, p1}, Landroid/graphics/RenderEffect;->createColorFilterEffect(Landroid/graphics/ColorFilter;Landroid/graphics/RenderEffect;)Landroid/graphics/RenderEffect;

    .line 97
    move-result-object p1

    .line 100
    sget-object p4, Landroid/graphics/BlendMode;->DST_ATOP:Landroid/graphics/BlendMode;

    .line 101
    invoke-static {p2, p1, p4}, Landroid/graphics/RenderEffect;->createBlendModeEffect(Landroid/graphics/RenderEffect;Landroid/graphics/RenderEffect;Landroid/graphics/BlendMode;)Landroid/graphics/RenderEffect;

    .line 103
    move-result-object p1

    .line 106
    invoke-virtual {p3, p1}, Landroid/graphics/RenderNode;->setRenderEffect(Landroid/graphics/RenderEffect;)Z

    .line 107
    iput-object p3, p0, Lcom/android/systemui/shared/shadow/DoubleShadowIconDrawable;->mDoubleShadowNode:Landroid/graphics/RenderNode;

    .line 110
    return-void
    .line 112
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/android/systemui/shared/shadow/DoubleShadowIconDrawable;->mDoubleShadowNode:Landroid/graphics/RenderNode;

    .line 8
    invoke-virtual {v0}, Landroid/graphics/RenderNode;->hasDisplayList()Z

    .line 10
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    iget-object v0, p0, Lcom/android/systemui/shared/shadow/DoubleShadowIconDrawable;->mDoubleShadowNode:Landroid/graphics/RenderNode;

    .line 16
    invoke-virtual {v0}, Landroid/graphics/RenderNode;->beginRecording()Landroid/graphics/RecordingCanvas;

    .line 18
    move-result-object v0

    .line 21
    iget-object v1, p0, Lcom/android/systemui/shared/shadow/DoubleShadowIconDrawable;->mIconDrawable:Landroid/graphics/drawable/InsetDrawable;

    .line 22
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/InsetDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 24
    iget-object v0, p0, Lcom/android/systemui/shared/shadow/DoubleShadowIconDrawable;->mDoubleShadowNode:Landroid/graphics/RenderNode;

    .line 27
    invoke-virtual {v0}, Landroid/graphics/RenderNode;->endRecording()V

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/shared/shadow/DoubleShadowIconDrawable;->mDoubleShadowNode:Landroid/graphics/RenderNode;

    .line 32
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawRenderNode(Landroid/graphics/RenderNode;)V

    .line 34
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/shared/shadow/DoubleShadowIconDrawable;->mIconDrawable:Landroid/graphics/drawable/InsetDrawable;

    .line 37
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/InsetDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 39
    return-void
    .line 42
.end method

.method public final getIntrinsicHeight()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/systemui/shared/shadow/DoubleShadowIconDrawable;->mCanvasSize:I

    .line 2
    return p0
    .line 4
.end method

.method public final getIntrinsicWidth()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/systemui/shared/shadow/DoubleShadowIconDrawable;->mCanvasSize:I

    .line 2
    return p0
    .line 4
.end method

.method public final getOpacity()I
    .locals 0

    .line 1
    const/4 p0, -0x2

    .line 2
    return p0
    .line 3
.end method

.method public final setAlpha(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/shared/shadow/DoubleShadowIconDrawable;->mIconDrawable:Landroid/graphics/drawable/InsetDrawable;

    .line 2
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/InsetDrawable;->setAlpha(I)V

    .line 4
    return-void
    .line 7
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/shared/shadow/DoubleShadowIconDrawable;->mIconDrawable:Landroid/graphics/drawable/InsetDrawable;

    .line 2
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/InsetDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 4
    return-void
    .line 7
.end method

.method public final setTint(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/shared/shadow/DoubleShadowIconDrawable;->mIconDrawable:Landroid/graphics/drawable/InsetDrawable;

    .line 2
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/InsetDrawable;->setTint(I)V

    .line 4
    return-void
    .line 7
.end method

.method public final setTintList(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/shared/shadow/DoubleShadowIconDrawable;->mIconDrawable:Landroid/graphics/drawable/InsetDrawable;

    .line 2
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/InsetDrawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 4
    return-void
    .line 7
.end method
