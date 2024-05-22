.class public Lcom/miui/maml/elements/MirrorScreenElement;
.super Lcom/miui/maml/elements/AnimatedScreenElement;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "MirrorScreenElement"

.field public static final TAG_NAME:Ljava/lang/String; = "Mirror"


# instance fields
.field private mMirrorTranslation:Z

.field private mTarget:Lcom/miui/maml/elements/ScreenElement;

.field private mTargetName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/AnimatedScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 2
    const-string/jumbo p2, "target"

    .line 5
    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object p2

    .line 11
    iput-object p2, p0, Lcom/miui/maml/elements/MirrorScreenElement;->mTargetName:Ljava/lang/String;

    .line 12
    const-string p2, "mirrorTranslation"

    .line 14
    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    move-result-object p1

    .line 19
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 20
    move-result p1

    .line 23
    iput-boolean p1, p0, Lcom/miui/maml/elements/MirrorScreenElement;->mMirrorTranslation:Z

    .line 24
    return-void
    .line 26
.end method


# virtual methods
.method public doRender(Landroid/graphics/Canvas;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/MirrorScreenElement;->mTarget:Lcom/miui/maml/elements/ScreenElement;

    .line 2
    if-eqz v0, :cond_1

    .line 4
    iget-boolean p0, p0, Lcom/miui/maml/elements/MirrorScreenElement;->mMirrorTranslation:Z

    .line 6
    if-eqz p0, :cond_0

    .line 8
    instance-of p0, v0, Lcom/miui/maml/elements/AnimatedScreenElement;

    .line 10
    if-eqz p0, :cond_0

    .line 12
    check-cast v0, Lcom/miui/maml/elements/AnimatedScreenElement;

    .line 14
    invoke-virtual {v0, p1}, Lcom/miui/maml/elements/AnimatedScreenElement;->doRenderWithTranslation(Landroid/graphics/Canvas;)V

    .line 16
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {v0, p1}, Lcom/miui/maml/elements/ScreenElement;->doRender(Landroid/graphics/Canvas;)V

    .line 20
    :cond_1
    :goto_0
    return-void
    .line 23
.end method

.method public init()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->init()V

    .line 2
    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 5
    iget-object v1, p0, Lcom/miui/maml/elements/MirrorScreenElement;->mTargetName:Ljava/lang/String;

    .line 7
    invoke-virtual {v0, v1}, Lcom/miui/maml/ScreenElementRoot;->findElement(Ljava/lang/String;)Lcom/miui/maml/elements/ScreenElement;

    .line 9
    move-result-object v0

    .line 12
    iput-object v0, p0, Lcom/miui/maml/elements/MirrorScreenElement;->mTarget:Lcom/miui/maml/elements/ScreenElement;

    .line 13
    if-nez v0, :cond_0

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    .line 17
    const-string/jumbo v1, "the target does not exist: "

    .line 19
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    iget-object p0, p0, Lcom/miui/maml/elements/MirrorScreenElement;->mTargetName:Ljava/lang/String;

    .line 25
    const-string v1, "MirrorScreenElement"

    .line 27
    invoke-static {v0, p0, v1}, Landroidx/constraintlayout/helper/widget/CircularFlow$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    :cond_0
    return-void
.end method
