.class public abstract Lcom/miui/maml/elements/ViewHolderScreenElement;
.super Lcom/miui/maml/elements/ElementGroupRC;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field protected static final LAYER_BOTTOM:I = 0x2

.field protected static final LAYER_TOP:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "MAML ViewHolderScreenElement"


# instance fields
.field private mHardware:Z

.field protected mLayer:I

.field private mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

.field protected mUpdatePosition:Z

.field protected mUpdateSize:Z

.field protected mUpdateTranslation:Z

.field protected mViewAdded:Z


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/ElementGroupRC;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 2
    const/4 p2, 0x2

    .line 5
    iput p2, p0, Lcom/miui/maml/elements/ViewHolderScreenElement;->mLayer:I

    .line 6
    const-string v0, "layerType"

    .line 8
    invoke-virtual {p0, p1, v0}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 13
    const-string v1, "hardware"

    .line 14
    invoke-virtual {p0, p1, v1}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    .line 16
    move-result-object v1

    .line 19
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 20
    move-result v1

    .line 23
    iput-boolean v1, p0, Lcom/miui/maml/elements/ViewHolderScreenElement;->mHardware:Z

    .line 24
    const-string/jumbo v1, "updatePosition"

    .line 26
    invoke-virtual {p0, p1, v1}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    .line 29
    move-result-object v1

    .line 32
    const/4 v2, 0x1

    .line 33
    invoke-static {v1, v2}, Lcom/miui/maml/elements/ViewHolderScreenElement;->getAttrAsBoolean(Ljava/lang/String;Z)Z

    .line 34
    move-result v1

    .line 37
    iput-boolean v1, p0, Lcom/miui/maml/elements/ViewHolderScreenElement;->mUpdatePosition:Z

    .line 38
    const-string/jumbo v1, "updateSize"

    .line 40
    invoke-virtual {p0, p1, v1}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    .line 43
    move-result-object v1

    .line 46
    invoke-static {v1, v2}, Lcom/miui/maml/elements/ViewHolderScreenElement;->getAttrAsBoolean(Ljava/lang/String;Z)Z

    .line 47
    move-result v1

    .line 50
    iput-boolean v1, p0, Lcom/miui/maml/elements/ViewHolderScreenElement;->mUpdateSize:Z

    .line 51
    const-string/jumbo v1, "updateTranslation"

    .line 53
    invoke-virtual {p0, p1, v1}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    .line 56
    move-result-object p1

    .line 59
    invoke-static {p1, v2}, Lcom/miui/maml/elements/ViewHolderScreenElement;->getAttrAsBoolean(Ljava/lang/String;Z)Z

    .line 60
    move-result p1

    .line 63
    iput-boolean p1, p0, Lcom/miui/maml/elements/ViewHolderScreenElement;->mUpdateTranslation:Z

    .line 64
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 66
    move-result p1

    .line 69
    if-nez p1, :cond_1

    .line 70
    const-string/jumbo p1, "top"

    .line 72
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 75
    move-result p1

    .line 78
    if-eqz p1, :cond_0

    .line 79
    goto :goto_0

    .line 81
    :cond_0
    const-string p1, "bottom"

    .line 82
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 84
    move-result p1

    .line 87
    if-eqz p1, :cond_2

    .line 88
    iput p2, p0, Lcom/miui/maml/elements/ViewHolderScreenElement;->mLayer:I

    .line 90
    goto :goto_1

    .line 92
    :cond_1
    :goto_0
    iput v2, p0, Lcom/miui/maml/elements/ViewHolderScreenElement;->mLayer:I

    .line 93
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/miui/maml/elements/ViewHolderScreenElement;->getLayoutParam()Landroid/view/ViewGroup$LayoutParams;

    .line 95
    move-result-object p1

    .line 98
    iput-object p1, p0, Lcom/miui/maml/elements/ViewHolderScreenElement;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 99
    return-void
    .line 101
.end method

.method private final finishView()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/elements/ViewHolderScreenElement;->mViewAdded:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/miui/maml/elements/ViewHolderScreenElement;->getView()Landroid/view/View;

    .line 6
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 12
    move-result-object v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    instance-of v2, v1, Landroid/view/ViewGroup;

    .line 18
    if-eqz v2, :cond_0

    .line 20
    check-cast v1, Landroid/view/ViewGroup;

    .line 22
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 24
    const/4 v1, 0x0

    .line 27
    iput-boolean v1, p0, Lcom/miui/maml/elements/ViewHolderScreenElement;->mViewAdded:Z

    .line 28
    invoke-virtual {p0, v0}, Lcom/miui/maml/elements/ViewHolderScreenElement;->onViewRemoved(Landroid/view/View;)V

    .line 30
    :cond_0
    return-void
    .line 33
.end method

.method private static getAttrAsBoolean(Ljava/lang/String;Z)Z
    .locals 1

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    return p1

    .line 8
    :cond_0
    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 9
    move-result p0

    .line 12
    return p0
    .line 13
.end method

.method private final initView()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/elements/ViewHolderScreenElement;->mViewAdded:Z

    .line 2
    if-nez v0, :cond_2

    .line 4
    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 6
    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->getViewManager()Lcom/miui/maml/util/MamlViewManager;

    .line 8
    move-result-object v0

    .line 11
    if-eqz v0, :cond_2

    .line 12
    invoke-virtual {p0}, Lcom/miui/maml/elements/ViewHolderScreenElement;->getView()Landroid/view/View;

    .line 14
    move-result-object v1

    .line 17
    invoke-virtual {p0, v1}, Lcom/miui/maml/elements/ViewHolderScreenElement;->onUpdateView(Landroid/view/View;)V

    .line 18
    iget v2, p0, Lcom/miui/maml/elements/ViewHolderScreenElement;->mLayer:I

    .line 21
    const/4 v3, 0x2

    .line 23
    if-ne v2, v3, :cond_0

    .line 24
    const/4 v2, 0x0

    .line 26
    iget-object v4, p0, Lcom/miui/maml/elements/ViewHolderScreenElement;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 27
    invoke-interface {v0, v1, v2, v4}, Lcom/miui/maml/util/MamlViewManager;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 29
    goto :goto_0

    .line 32
    :cond_0
    iget-object v2, p0, Lcom/miui/maml/elements/ViewHolderScreenElement;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 33
    invoke-interface {v0, v1, v2}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 35
    :goto_0
    iget-boolean v0, p0, Lcom/miui/maml/elements/ViewHolderScreenElement;->mHardware:Z

    .line 38
    if-eqz v0, :cond_1

    .line 40
    const/4 v0, 0x0

    .line 42
    invoke-virtual {v1, v3, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 43
    :cond_1
    const/4 v0, 0x1

    .line 46
    iput-boolean v0, p0, Lcom/miui/maml/elements/ViewHolderScreenElement;->mViewAdded:Z

    .line 47
    invoke-virtual {p0, v1}, Lcom/miui/maml/elements/ViewHolderScreenElement;->onViewAdded(Landroid/view/View;)V

    .line 49
    :cond_2
    return-void
    .line 52
.end method

.method private updateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getWidth()F

    .line 2
    move-result v0

    .line 5
    float-to-int v0, v0

    .line 6
    iget v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 7
    const/4 v2, 0x1

    .line 9
    if-eq v1, v0, :cond_0

    .line 10
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 12
    move v0, v2

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getHeight()F

    .line 17
    move-result p0

    .line 20
    float-to-int p0, p0

    .line 21
    iget v1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 22
    if-eq v1, p0, :cond_1

    .line 24
    iput p0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 26
    goto :goto_1

    .line 28
    :cond_1
    move v2, v0

    .line 29
    :goto_1
    return v2
    .line 30
.end method


# virtual methods
.method public doTick(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/ElementGroupRC;->mController:Lcom/miui/maml/RendererController;

    .line 2
    if-nez v0, :cond_0

    .line 4
    invoke-super {p0, p1, p2}, Lcom/miui/maml/elements/ElementGroup;->doTick(J)V

    .line 6
    invoke-virtual {p0}, Lcom/miui/maml/elements/ViewHolderScreenElement;->getView()Landroid/view/View;

    .line 9
    move-result-object p1

    .line 12
    invoke-virtual {p1}, Landroid/view/View;->postInvalidate()V

    .line 13
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/elements/ViewHolderScreenElement;->doTickSelf(J)V

    .line 17
    :goto_0
    invoke-virtual {p0}, Lcom/miui/maml/elements/ViewHolderScreenElement;->updateView()V

    .line 20
    return-void
    .line 23
.end method

.method public doTickSelf(J)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mAnimations:Ljava/util/ArrayList;

    .line 2
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 7
    move-result v0

    .line 10
    move v2, v1

    .line 11
    :goto_0
    if-ge v2, v0, :cond_0

    .line 12
    iget-object v3, p0, Lcom/miui/maml/elements/ScreenElement;->mAnimations:Ljava/util/ArrayList;

    .line 14
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 16
    move-result-object v3

    .line 19
    check-cast v3, Lcom/miui/maml/animation/BaseAnimation;

    .line 20
    invoke-virtual {v3, p1, p2}, Lcom/miui/maml/animation/BaseAnimation;->tick(J)V

    .line 22
    add-int/lit8 v2, v2, 0x1

    .line 25
    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->evaluateAlpha()I

    .line 28
    move-result p1

    .line 31
    iput p1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mAlpha:I

    .line 32
    if-gez p1, :cond_1

    .line 34
    goto :goto_1

    .line 36
    :cond_1
    move v1, p1

    .line 37
    :goto_1
    iput v1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mAlpha:I

    .line 38
    iget-object p0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mTickListener:Lcom/miui/maml/elements/FunctionElement;

    .line 40
    if-eqz p0, :cond_2

    .line 42
    invoke-virtual {p0}, Lcom/miui/maml/elements/FunctionElement;->perform()V

    .line 44
    :cond_2
    return-void
    .line 47
.end method

.method public finish()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/miui/maml/elements/ElementGroup;->finish()V

    .line 2
    invoke-direct {p0}, Lcom/miui/maml/elements/ViewHolderScreenElement;->finishView()V

    .line 5
    return-void
    .line 8
.end method

.method public getLayoutParam()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 1
    new-instance p0, Landroid/widget/FrameLayout$LayoutParams;

    .line 2
    const/4 v0, -0x1

    .line 4
    invoke-direct {p0, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 5
    return-object p0
    .line 8
.end method

.method public abstract getView()Landroid/view/View;
.end method

.method public init()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/miui/maml/elements/ElementGroupRC;->init()V

    .line 2
    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 5
    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->getViewManager()Lcom/miui/maml/util/MamlViewManager;

    .line 7
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    invoke-direct {p0}, Lcom/miui/maml/elements/ViewHolderScreenElement;->initView()V

    .line 13
    goto :goto_0

    .line 16
    :cond_0
    const-string p0, "MAML ViewHolderScreenElement"

    .line 17
    const-string v0, "ViewManager must be set before init"

    .line 19
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    :goto_0
    return-void
    .line 24
.end method

.method public isViewAdded()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/miui/maml/elements/ViewHolderScreenElement;->mViewAdded:Z

    .line 2
    return p0
    .line 4
.end method

.method public onControllerCreated(Lcom/miui/maml/RendererController;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/miui/maml/elements/ViewHolderScreenElement$ProxyListener;

    .line 2
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/miui/maml/elements/ViewHolderScreenElement$ProxyListener;-><init>(Lcom/miui/maml/elements/ViewHolderScreenElement;Lcom/miui/maml/elements/ViewHolderScreenElement$1;)V

    .line 5
    invoke-virtual {p1, v0}, Lcom/miui/maml/RendererController;->setListener(Lcom/miui/maml/RendererController$Listener;)V

    .line 8
    return-void
    .line 11
.end method

.method public onUpdateView(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/elements/ViewHolderScreenElement;->mUpdatePosition:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getAbsoluteLeft()F

    .line 6
    move-result v0

    .line 9
    invoke-virtual {p1, v0}, Landroid/view/View;->setX(F)V

    .line 10
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getAbsoluteTop()F

    .line 13
    move-result v0

    .line 16
    invoke-virtual {p1, v0}, Landroid/view/View;->setY(F)V

    .line 17
    :cond_0
    iget-boolean v0, p0, Lcom/miui/maml/elements/ViewHolderScreenElement;->mUpdateTranslation:Z

    .line 20
    if-eqz v0, :cond_1

    .line 22
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getPivotX()F

    .line 24
    move-result v0

    .line 27
    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotX(F)V

    .line 28
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getPivotY()F

    .line 31
    move-result v0

    .line 34
    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotY(F)V

    .line 35
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getRotation()F

    .line 38
    move-result v0

    .line 41
    invoke-virtual {p1, v0}, Landroid/view/View;->setRotation(F)V

    .line 42
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getRotationX()F

    .line 45
    move-result v0

    .line 48
    invoke-virtual {p1, v0}, Landroid/view/View;->setRotationX(F)V

    .line 49
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getRotationY()F

    .line 52
    move-result v0

    .line 55
    invoke-virtual {p1, v0}, Landroid/view/View;->setRotationY(F)V

    .line 56
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getAlpha()I

    .line 59
    move-result v0

    .line 62
    int-to-float v0, v0

    .line 63
    const/high16 v1, 0x437f0000    # 255.0f

    .line 64
    div-float/2addr v0, v1

    .line 66
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 67
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getScaleX()F

    .line 70
    move-result v0

    .line 73
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 74
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getScaleY()F

    .line 77
    move-result v0

    .line 80
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 81
    :cond_1
    iget-boolean v0, p0, Lcom/miui/maml/elements/ViewHolderScreenElement;->mUpdateSize:Z

    .line 84
    if-eqz v0, :cond_2

    .line 86
    iget-object v0, p0, Lcom/miui/maml/elements/ViewHolderScreenElement;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 88
    invoke-direct {p0, v0}, Lcom/miui/maml/elements/ViewHolderScreenElement;->updateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    .line 90
    move-result v0

    .line 93
    if-eqz v0, :cond_2

    .line 94
    iget-object p0, p0, Lcom/miui/maml/elements/ViewHolderScreenElement;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 96
    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 98
    :cond_2
    return-void
    .line 101
.end method

.method public onViewAdded(Landroid/view/View;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public onVisibilityChange(Z)V
    .locals 1

    .line 1
    new-instance v0, Lcom/miui/maml/elements/ViewHolderScreenElement$2;

    .line 2
    invoke-direct {v0, p0, p1}, Lcom/miui/maml/elements/ViewHolderScreenElement$2;-><init>(Lcom/miui/maml/elements/ViewHolderScreenElement;Z)V

    .line 4
    invoke-virtual {p0, v0}, Lcom/miui/maml/elements/ScreenElement;->postInMainThread(Ljava/lang/Runnable;)V

    .line 7
    return-void
    .line 10
.end method

.method public render(Landroid/graphics/Canvas;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public setHardwareLayer(Z)V
    .locals 1

    .line 1
    new-instance v0, Lcom/miui/maml/elements/ViewHolderScreenElement$1;

    .line 2
    invoke-direct {v0, p0, p1}, Lcom/miui/maml/elements/ViewHolderScreenElement$1;-><init>(Lcom/miui/maml/elements/ViewHolderScreenElement;Z)V

    .line 4
    invoke-virtual {p0, v0}, Lcom/miui/maml/elements/ScreenElement;->postInMainThread(Ljava/lang/Runnable;)V

    .line 7
    return-void
    .line 10
.end method

.method public updateView()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/elements/ViewHolderScreenElement;->mUpdatePosition:Z

    .line 2
    if-nez v0, :cond_0

    .line 4
    iget-boolean v0, p0, Lcom/miui/maml/elements/ViewHolderScreenElement;->mUpdateTranslation:Z

    .line 6
    if-nez v0, :cond_0

    .line 8
    iget-boolean v0, p0, Lcom/miui/maml/elements/ViewHolderScreenElement;->mUpdateSize:Z

    .line 10
    if-eqz v0, :cond_1

    .line 12
    :cond_0
    iget-boolean v0, p0, Lcom/miui/maml/elements/ViewHolderScreenElement;->mViewAdded:Z

    .line 14
    if-eqz v0, :cond_1

    .line 16
    invoke-virtual {p0}, Lcom/miui/maml/elements/ViewHolderScreenElement;->getView()Landroid/view/View;

    .line 18
    move-result-object v0

    .line 21
    invoke-virtual {p0, v0}, Lcom/miui/maml/elements/ViewHolderScreenElement;->onUpdateView(Landroid/view/View;)V

    .line 22
    :cond_1
    return-void
    .line 25
.end method
