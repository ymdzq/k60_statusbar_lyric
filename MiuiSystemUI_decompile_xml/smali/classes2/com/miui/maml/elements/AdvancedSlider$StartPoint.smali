.class Lcom/miui/maml/elements/AdvancedSlider$StartPoint;
.super Lcom/miui/maml/elements/AdvancedSlider$SliderPoint;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "StartPoint"


# instance fields
.field private mAnchorX:F

.field private mAnchorY:F

.field protected mOffsetX:F

.field protected mOffsetY:F

.field public mReboundController:Lcom/miui/maml/elements/AdvancedSlider$InterpolatorController;

.field final synthetic this$0:Lcom/miui/maml/elements/AdvancedSlider;


# direct methods
.method public constructor <init>(Lcom/miui/maml/elements/AdvancedSlider;Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/miui/maml/elements/AdvancedSlider$StartPoint;->this$0:Lcom/miui/maml/elements/AdvancedSlider;

    .line 2
    const-string v0, "StartPoint"

    .line 4
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/miui/maml/elements/AdvancedSlider$SliderPoint;-><init>(Lcom/miui/maml/elements/AdvancedSlider;Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;Ljava/lang/String;)V

    .line 6
    const-string p3, "anchorX"

    .line 9
    const/4 v0, 0x0

    .line 11
    invoke-static {p2, p3, v0}, Lcom/miui/maml/util/Utils;->getAttrAsFloat(Lorg/w3c/dom/Element;Ljava/lang/String;F)F

    .line 12
    move-result p3

    .line 15
    iput p3, p0, Lcom/miui/maml/elements/AdvancedSlider$StartPoint;->mAnchorX:F

    .line 16
    const-string p3, "anchorY"

    .line 18
    invoke-static {p2, p3, v0}, Lcom/miui/maml/util/Utils;->getAttrAsFloat(Lorg/w3c/dom/Element;Ljava/lang/String;F)F

    .line 20
    move-result p3

    .line 23
    iput p3, p0, Lcom/miui/maml/elements/AdvancedSlider$StartPoint;->mAnchorY:F

    .line 24
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 26
    move-result-object p3

    .line 29
    invoke-static {p3, p2}, Lcom/miui/maml/animation/interpolater/InterpolatorHelper;->create(Lcom/miui/maml/data/Variables;Lorg/w3c/dom/Element;)Lcom/miui/maml/animation/interpolater/InterpolatorHelper;

    .line 30
    move-result-object p3

    .line 33
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 34
    move-result-object v0

    .line 37
    const-string v1, "easeTime"

    .line 38
    invoke-interface {p2, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 40
    move-result-object p2

    .line 43
    invoke-static {v0, p2}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 44
    move-result-object p2

    .line 47
    if-eqz p3, :cond_0

    .line 48
    if-eqz p2, :cond_0

    .line 50
    new-instance v0, Lcom/miui/maml/elements/AdvancedSlider$InterpolatorController;

    .line 52
    invoke-direct {v0, p1, p3, p2}, Lcom/miui/maml/elements/AdvancedSlider$InterpolatorController;-><init>(Lcom/miui/maml/elements/AdvancedSlider;Lcom/miui/maml/animation/interpolater/InterpolatorHelper;Lcom/miui/maml/data/Expression;)V

    .line 54
    iput-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider$StartPoint;->mReboundController:Lcom/miui/maml/elements/AdvancedSlider$InterpolatorController;

    .line 57
    :cond_0
    return-void
    .line 59
.end method


# virtual methods
.method public doRender(Landroid/graphics/Canvas;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2
    move-result v0

    .line 5
    iget v1, p0, Lcom/miui/maml/elements/AdvancedSlider$StartPoint;->mOffsetX:F

    .line 6
    iget v2, p0, Lcom/miui/maml/elements/AdvancedSlider$StartPoint;->mOffsetY:F

    .line 8
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 10
    invoke-super {p0, p1}, Lcom/miui/maml/elements/AdvancedSlider$SliderPoint;->doRender(Landroid/graphics/Canvas;)V

    .line 13
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 16
    return-void
    .line 19
.end method

.method public doTick(J)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/miui/maml/elements/ElementGroup;->doTick(J)V

    .line 2
    iget-object p0, p0, Lcom/miui/maml/elements/AdvancedSlider$StartPoint;->mReboundController:Lcom/miui/maml/elements/AdvancedSlider$InterpolatorController;

    .line 5
    if-eqz p0, :cond_0

    .line 7
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->tick(J)V

    .line 9
    :cond_0
    return-void
    .line 12
.end method

.method public getAnchorX()F
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getLeft()F

    .line 2
    move-result v0

    .line 5
    iget p0, p0, Lcom/miui/maml/elements/AdvancedSlider$StartPoint;->mAnchorX:F

    .line 6
    add-float/2addr v0, p0

    .line 8
    return v0
    .line 9
.end method

.method public getAnchorY()F
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getTop()F

    .line 2
    move-result v0

    .line 5
    iget p0, p0, Lcom/miui/maml/elements/AdvancedSlider$StartPoint;->mAnchorY:F

    .line 6
    add-float/2addr v0, p0

    .line 8
    return v0
    .line 9
.end method

.method public getOffsetX()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/maml/elements/AdvancedSlider$StartPoint;->mOffsetX:F

    .line 2
    return p0
    .line 4
.end method

.method public getOffsetY()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/maml/elements/AdvancedSlider$StartPoint;->mOffsetY:F

    .line 2
    return p0
    .line 4
.end method

.method public init()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/miui/maml/elements/AdvancedSlider$SliderPoint;->init()V

    .line 2
    iget-object p0, p0, Lcom/miui/maml/elements/AdvancedSlider$StartPoint;->mReboundController:Lcom/miui/maml/elements/AdvancedSlider$InterpolatorController;

    .line 5
    if-eqz p0, :cond_0

    .line 7
    invoke-virtual {p0}, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->init()V

    .line 9
    :cond_0
    return-void
    .line 12
.end method

.method public moveTo(FF)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/miui/maml/elements/AdvancedSlider$StartPoint;->mOffsetX:F

    .line 2
    iput p2, p0, Lcom/miui/maml/elements/AdvancedSlider$StartPoint;->mOffsetY:F

    .line 4
    return-void
    .line 6
.end method

.method public onStateChange(Lcom/miui/maml/elements/AdvancedSlider$State;Lcom/miui/maml/elements/AdvancedSlider$State;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/miui/maml/elements/AdvancedSlider$State;->Invalid:Lcom/miui/maml/elements/AdvancedSlider$State;

    .line 2
    if-ne p1, v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    sget-object v0, Lcom/miui/maml/elements/AdvancedSlider$1;->$SwitchMap$com$miui$maml$elements$AdvancedSlider$State:[I

    .line 7
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 9
    move-result v1

    .line 12
    aget v0, v0, v1

    .line 13
    const/4 v1, 0x1

    .line 15
    if-eq v0, v1, :cond_2

    .line 16
    const/4 v1, 0x2

    .line 18
    if-eq v0, v1, :cond_1

    .line 19
    goto :goto_0

    .line 21
    :cond_1
    iget-boolean v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mPressed:Z

    .line 22
    if-nez v0, :cond_3

    .line 24
    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 26
    iget-object v1, p0, Lcom/miui/maml/elements/AdvancedSlider$SliderPoint;->mPressedSound:Ljava/lang/String;

    .line 28
    invoke-virtual {v0, v1}, Lcom/miui/maml/ScreenElementRoot;->playSound(Ljava/lang/String;)I

    .line 30
    goto :goto_0

    .line 33
    :cond_2
    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 34
    iget-object v1, p0, Lcom/miui/maml/elements/AdvancedSlider$SliderPoint;->mNormalSound:Ljava/lang/String;

    .line 36
    invoke-virtual {v0, v1}, Lcom/miui/maml/ScreenElementRoot;->playSound(Ljava/lang/String;)I

    .line 38
    :cond_3
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/miui/maml/elements/AdvancedSlider$SliderPoint;->onStateChange(Lcom/miui/maml/elements/AdvancedSlider$State;Lcom/miui/maml/elements/AdvancedSlider$State;)V

    .line 41
    return-void
    .line 44
.end method
