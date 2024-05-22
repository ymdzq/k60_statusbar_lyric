.class public abstract Lcom/miui/maml/elements/ElementGroupRC;
.super Lcom/miui/maml/elements/ElementGroup;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field protected mController:Lcom/miui/maml/RendererController;

.field private mFrameRate:F


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/ElementGroup;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 2
    const-string p2, "frameRate"

    .line 5
    const/4 v0, 0x0

    .line 7
    invoke-static {p1, p2, v0}, Lcom/miui/maml/util/Utils;->getAttrAsFloat(Lorg/w3c/dom/Element;Ljava/lang/String;F)F

    .line 8
    move-result p1

    .line 11
    iput p1, p0, Lcom/miui/maml/elements/ElementGroupRC;->mFrameRate:F

    .line 12
    cmpl-float p1, p1, v0

    .line 14
    if-ltz p1, :cond_0

    .line 16
    new-instance p1, Lcom/miui/maml/RendererController;

    .line 18
    invoke-direct {p1}, Lcom/miui/maml/RendererController;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/miui/maml/elements/ElementGroupRC;->mController:Lcom/miui/maml/RendererController;

    .line 23
    invoke-virtual {p0, p1}, Lcom/miui/maml/elements/ElementGroupRC;->onControllerCreated(Lcom/miui/maml/RendererController;)V

    .line 25
    iget-object p0, p0, Lcom/miui/maml/elements/ElementGroupRC;->mController:Lcom/miui/maml/RendererController;

    .line 28
    invoke-virtual {p0}, Lcom/miui/maml/RendererController;->init()V

    .line 30
    :cond_0
    return-void
    .line 33
.end method


# virtual methods
.method public getRendererController()Lcom/miui/maml/RendererController;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/ElementGroupRC;->mController:Lcom/miui/maml/RendererController;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    goto :goto_0

    .line 6
    :cond_0
    invoke-super {p0}, Lcom/miui/maml/elements/ScreenElement;->getRendererController()Lcom/miui/maml/RendererController;

    .line 7
    move-result-object v0

    .line 10
    :goto_0
    return-object v0
    .line 11
.end method

.method public init()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/miui/maml/elements/ElementGroup;->init()V

    .line 2
    iget v0, p0, Lcom/miui/maml/elements/ElementGroupRC;->mFrameRate:F

    .line 5
    invoke-virtual {p0, v0}, Lcom/miui/maml/elements/ScreenElement;->requestFramerate(F)V

    .line 7
    return-void
    .line 10
.end method

.method public abstract onControllerCreated(Lcom/miui/maml/RendererController;)V
.end method
