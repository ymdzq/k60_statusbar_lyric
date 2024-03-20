.class public Lcom/miui/maml/elements/FolmeStateElement;
.super Lcom/miui/maml/elements/StateElement;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "FolmeState"


# instance fields
.field private mAttrs:Landroid/util/ArrayMap;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .locals 4

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/StateElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 2
    new-instance p2, Landroid/util/ArrayMap;

    .line 5
    invoke-direct {p2}, Landroid/util/ArrayMap;-><init>()V

    .line 7
    iput-object p2, p0, Lcom/miui/maml/elements/FolmeStateElement;->mAttrs:Landroid/util/ArrayMap;

    .line 10
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    .line 12
    move-result-object p1

    .line 15
    invoke-interface {p1}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    .line 16
    move-result p2

    .line 19
    const/4 v0, 0x0

    .line 20
    :goto_0
    if-ge v0, p2, :cond_1

    .line 21
    invoke-interface {p1, v0}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    .line 23
    move-result-object v1

    .line 26
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 27
    move-result-object v2

    .line 30
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    .line 31
    move-result-object v3

    .line 34
    invoke-static {v2, v3}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 35
    move-result-object v2

    .line 38
    if-eqz v2, :cond_0

    .line 39
    iget-object v3, p0, Lcom/miui/maml/elements/FolmeStateElement;->mAttrs:Landroid/util/ArrayMap;

    .line 41
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    .line 43
    move-result-object v1

    .line 46
    invoke-virtual {v3, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 50
    goto :goto_0

    .line 52
    :cond_1
    return-void
    .line 53
.end method


# virtual methods
.method public getAnimState(Ljava/lang/String;)Lmiuix/animation/controller/AnimState;
    .locals 9

    .line 1
    new-instance v0, Lmiuix/animation/controller/AnimState;

    .line 2
    invoke-direct {v0, p1}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    .line 4
    iget-object p0, p0, Lcom/miui/maml/elements/FolmeStateElement;->mAttrs:Landroid/util/ArrayMap;

    .line 7
    invoke-virtual {p0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    .line 9
    move-result-object p0

    .line 12
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 13
    move-result-object p0

    .line 16
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    move-result p1

    .line 20
    if-eqz p1, :cond_2

    .line 21
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    move-result-object p1

    .line 26
    check-cast p1, Ljava/util/Map$Entry;

    .line 27
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 29
    move-result-object v1

    .line 32
    check-cast v1, Ljava/lang/String;

    .line 33
    invoke-static {v1}, Lcom/miui/maml/folme/AnimatedProperty;->getPropertyByName(Ljava/lang/String;)Lmiuix/animation/property/FloatProperty;

    .line 35
    move-result-object v1

    .line 38
    if-eqz v1, :cond_0

    .line 39
    instance-of v2, v1, Lmiuix/animation/property/ColorProperty;

    .line 41
    const-wide/16 v3, 0x2

    .line 43
    const/4 v5, 0x0

    .line 45
    const/4 v6, 0x1

    .line 46
    if-eqz v2, :cond_1

    .line 47
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 49
    move-result-object p1

    .line 52
    check-cast p1, Lcom/miui/maml/data/Expression;

    .line 53
    invoke-virtual {p1}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 55
    move-result-wide v7

    .line 58
    double-to-long v7, v7

    .line 59
    long-to-int p1, v7

    .line 60
    new-array v2, v6, [J

    .line 61
    aput-wide v3, v2, v5

    .line 63
    invoke-virtual {v0, v1, p1, v2}, Lmiuix/animation/controller/AnimState;->add(Lmiuix/animation/property/FloatProperty;I[J)Lmiuix/animation/controller/AnimState;

    .line 65
    goto :goto_0

    .line 68
    :cond_1
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 69
    move-result-object p1

    .line 72
    check-cast p1, Lcom/miui/maml/data/Expression;

    .line 73
    invoke-virtual {p1}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 75
    move-result-wide v7

    .line 78
    double-to-float p1, v7

    .line 79
    new-array v2, v6, [J

    .line 80
    aput-wide v3, v2, v5

    .line 82
    invoke-virtual {v0, v1, p1, v2}, Lmiuix/animation/controller/AnimState;->add(Lmiuix/animation/property/FloatProperty;F[J)Lmiuix/animation/controller/AnimState;

    .line 84
    goto :goto_0

    .line 87
    :cond_2
    return-object v0
    .line 88
.end method

.method public getProperties()Ljava/util/Collection;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/FolmeStateElement;->mAttrs:Landroid/util/ArrayMap;

    .line 2
    invoke-virtual {p0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    .line 4
    move-result-object p0

    .line 7
    return-object p0
    .line 8
.end method
