.class public Lcom/miui/maml/elements/CanvasDrawerElement;
.super Lcom/miui/maml/elements/AnimatedScreenElement;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "CanvasDrawer"


# instance fields
.field private mCanvasVar:Lcom/miui/maml/data/IndexedVariable;

.field private mDrawCommands:Lcom/miui/maml/CommandTrigger;

.field private mHVar:Lcom/miui/maml/data/IndexedVariable;

.field private mWVar:Lcom/miui/maml/data/IndexedVariable;

.field private mXVar:Lcom/miui/maml/data/IndexedVariable;

.field private mYVar:Lcom/miui/maml/data/IndexedVariable;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/AnimatedScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 2
    iget-object p1, p0, Lcom/miui/maml/elements/ScreenElement;->mTriggers:Lcom/miui/maml/CommandTriggers;

    .line 5
    if-eqz p1, :cond_0

    .line 7
    const-string p2, "draw"

    .line 9
    invoke-virtual {p1, p2}, Lcom/miui/maml/CommandTriggers;->find(Ljava/lang/String;)Lcom/miui/maml/CommandTrigger;

    .line 11
    move-result-object p1

    .line 14
    iput-object p1, p0, Lcom/miui/maml/elements/CanvasDrawerElement;->mDrawCommands:Lcom/miui/maml/CommandTrigger;

    .line 15
    :cond_0
    iget-object p1, p0, Lcom/miui/maml/elements/CanvasDrawerElement;->mDrawCommands:Lcom/miui/maml/CommandTrigger;

    .line 17
    if-nez p1, :cond_1

    .line 19
    const-string p1, "CanvasDrawer"

    .line 21
    const-string p2, "no draw commands."

    .line 23
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    :cond_1
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 28
    move-result-object p1

    .line 31
    new-instance p2, Lcom/miui/maml/data/IndexedVariable;

    .line 32
    const-string v0, "__x"

    .line 34
    const/4 v1, 0x1

    .line 36
    invoke-direct {p2, v0, p1, v1}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 37
    iput-object p2, p0, Lcom/miui/maml/elements/CanvasDrawerElement;->mXVar:Lcom/miui/maml/data/IndexedVariable;

    .line 40
    new-instance p2, Lcom/miui/maml/data/IndexedVariable;

    .line 42
    const-string v0, "__y"

    .line 44
    invoke-direct {p2, v0, p1, v1}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 46
    iput-object p2, p0, Lcom/miui/maml/elements/CanvasDrawerElement;->mYVar:Lcom/miui/maml/data/IndexedVariable;

    .line 49
    new-instance p2, Lcom/miui/maml/data/IndexedVariable;

    .line 51
    const-string v0, "__w"

    .line 53
    invoke-direct {p2, v0, p1, v1}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 55
    iput-object p2, p0, Lcom/miui/maml/elements/CanvasDrawerElement;->mWVar:Lcom/miui/maml/data/IndexedVariable;

    .line 58
    new-instance p2, Lcom/miui/maml/data/IndexedVariable;

    .line 60
    const-string v0, "__h"

    .line 62
    invoke-direct {p2, v0, p1, v1}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 64
    iput-object p2, p0, Lcom/miui/maml/elements/CanvasDrawerElement;->mHVar:Lcom/miui/maml/data/IndexedVariable;

    .line 67
    new-instance p1, Lcom/miui/maml/data/IndexedVariable;

    .line 69
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 71
    move-result-object p2

    .line 74
    const/4 v0, 0x0

    .line 75
    const-string v1, "__objCanvas"

    .line 76
    invoke-direct {p1, v1, p2, v0}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 78
    iput-object p1, p0, Lcom/miui/maml/elements/CanvasDrawerElement;->mCanvasVar:Lcom/miui/maml/data/IndexedVariable;

    .line 81
    return-void
    .line 83
.end method


# virtual methods
.method public doRender(Landroid/graphics/Canvas;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/CanvasDrawerElement;->mDrawCommands:Lcom/miui/maml/CommandTrigger;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getWidthRaw()F

    .line 6
    move-result v0

    .line 9
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getHeightRaw()F

    .line 10
    move-result v1

    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-virtual {p0, v2, v0}, Lcom/miui/maml/elements/ScreenElement;->getLeft(FF)F

    .line 15
    move-result v3

    .line 18
    invoke-virtual {p0, v2, v1}, Lcom/miui/maml/elements/ScreenElement;->getTop(FF)F

    .line 19
    move-result v2

    .line 22
    iget-object v4, p0, Lcom/miui/maml/elements/CanvasDrawerElement;->mXVar:Lcom/miui/maml/data/IndexedVariable;

    .line 23
    float-to-double v5, v3

    .line 25
    invoke-virtual {v4, v5, v6}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 26
    iget-object v3, p0, Lcom/miui/maml/elements/CanvasDrawerElement;->mYVar:Lcom/miui/maml/data/IndexedVariable;

    .line 29
    float-to-double v4, v2

    .line 31
    invoke-virtual {v3, v4, v5}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 32
    iget-object v2, p0, Lcom/miui/maml/elements/CanvasDrawerElement;->mWVar:Lcom/miui/maml/data/IndexedVariable;

    .line 35
    float-to-double v3, v0

    .line 37
    invoke-virtual {v2, v3, v4}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 38
    iget-object v0, p0, Lcom/miui/maml/elements/CanvasDrawerElement;->mHVar:Lcom/miui/maml/data/IndexedVariable;

    .line 41
    float-to-double v1, v1

    .line 43
    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 44
    iget-object v0, p0, Lcom/miui/maml/elements/CanvasDrawerElement;->mCanvasVar:Lcom/miui/maml/data/IndexedVariable;

    .line 47
    invoke-virtual {v0, p1}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 49
    iget-object p1, p0, Lcom/miui/maml/elements/CanvasDrawerElement;->mDrawCommands:Lcom/miui/maml/CommandTrigger;

    .line 52
    invoke-virtual {p1}, Lcom/miui/maml/CommandTrigger;->perform()V

    .line 54
    iget-object p0, p0, Lcom/miui/maml/elements/CanvasDrawerElement;->mCanvasVar:Lcom/miui/maml/data/IndexedVariable;

    .line 57
    const/4 p1, 0x0

    .line 59
    invoke-virtual {p0, p1}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 60
    :cond_0
    return-void
    .line 63
.end method
