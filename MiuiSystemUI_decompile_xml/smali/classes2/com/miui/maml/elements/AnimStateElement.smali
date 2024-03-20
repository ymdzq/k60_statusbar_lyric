.class public Lcom/miui/maml/elements/AnimStateElement;
.super Lcom/miui/maml/elements/StateElement;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "AnimState"


# instance fields
.field private mAttrs:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .locals 9

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/StateElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 2
    new-instance p2, Ljava/util/concurrent/ConcurrentHashMap;

    .line 5
    invoke-direct {p2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 7
    iput-object p2, p0, Lcom/miui/maml/elements/AnimStateElement;->mAttrs:Ljava/util/concurrent/ConcurrentHashMap;

    .line 10
    iget-boolean p2, p0, Lcom/miui/maml/elements/ScreenElement;->mHasName:Z

    .line 12
    if-nez p2, :cond_0

    .line 14
    return-void

    .line 16
    :cond_0
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    .line 17
    move-result-object p1

    .line 20
    invoke-interface {p1}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    .line 21
    move-result p2

    .line 24
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 25
    move-result-object v0

    .line 28
    const/4 v1, 0x0

    .line 29
    :goto_0
    if-ge v1, p2, :cond_3

    .line 30
    invoke-interface {p1, v1}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    .line 32
    move-result-object v2

    .line 35
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    .line 36
    move-result-object v3

    .line 39
    const-string v4, "name"

    .line 40
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    move-result v4

    .line 45
    if-nez v4, :cond_2

    .line 46
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    .line 48
    move-result-object v2

    .line 51
    invoke-static {v0, v2}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 52
    move-result-object v2

    .line 55
    if-eqz v2, :cond_1

    .line 56
    invoke-virtual {v2}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 58
    move-result-wide v4

    .line 61
    goto :goto_1

    .line 62
    :cond_1
    const-wide/16 v4, 0x0

    .line 63
    :goto_1
    new-instance v2, Lcom/miui/maml/data/IndexedVariable;

    .line 65
    new-instance v6, Ljava/lang/StringBuilder;

    .line 67
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    iget-object v7, p0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 72
    const-string v8, "."

    .line 74
    invoke-static {v6, v7, v8, v3}, Landroidx/fragment/app/BackStackRecord$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 76
    move-result-object v6

    .line 79
    const/4 v7, 0x1

    .line 80
    invoke-direct {v2, v6, v0, v7}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 81
    invoke-virtual {v2, v4, v5}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 84
    iget-object v4, p0, Lcom/miui/maml/elements/AnimStateElement;->mAttrs:Ljava/util/concurrent/ConcurrentHashMap;

    .line 87
    invoke-virtual {v4, v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 92
    goto :goto_0

    .line 94
    :cond_3
    return-void
    .line 95
.end method


# virtual methods
.method public clear()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/AnimStateElement;->mAttrs:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    .line 4
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 8
    move-result-object v0

    .line 11
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    move-result-object v1

    .line 21
    check-cast v1, Lcom/miui/maml/data/IndexedVariable;

    .line 22
    const-wide/16 v2, 0x0

    .line 24
    invoke-virtual {v1, v2, v3}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 26
    goto :goto_0

    .line 29
    :cond_0
    iget-object p0, p0, Lcom/miui/maml/elements/AnimStateElement;->mAttrs:Ljava/util/concurrent/ConcurrentHashMap;

    .line 30
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 32
    return-void
    .line 35
.end method

.method public getAnimState(Ljava/lang/String;)Lmiuix/animation/controller/AnimState;
    .locals 9

    .line 1
    new-instance v0, Lmiuix/animation/controller/AnimState;

    .line 2
    invoke-direct {v0, p1}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    .line 4
    iget-object p0, p0, Lcom/miui/maml/elements/AnimStateElement;->mAttrs:Ljava/util/concurrent/ConcurrentHashMap;

    .line 7
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

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
    check-cast p1, Lcom/miui/maml/data/IndexedVariable;

    .line 53
    invoke-virtual {p1}, Lcom/miui/maml/data/IndexedVariable;->getDouble()D

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
    check-cast p1, Lcom/miui/maml/data/IndexedVariable;

    .line 73
    invoke-virtual {p1}, Lcom/miui/maml/data/IndexedVariable;->getDouble()D

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
    iget-object p0, p0, Lcom/miui/maml/elements/AnimStateElement;->mAttrs:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    .line 4
    move-result-object p0

    .line 7
    return-object p0
    .line 8
.end method

.method public removeAttr([Ljava/lang/String;)V
    .locals 6

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    if-ge v1, v0, :cond_1

    .line 4
    aget-object v2, p1, v1

    .line 6
    iget-object v3, p0, Lcom/miui/maml/elements/AnimStateElement;->mAttrs:Ljava/util/concurrent/ConcurrentHashMap;

    .line 8
    invoke-virtual {v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object v3

    .line 13
    check-cast v3, Lcom/miui/maml/data/IndexedVariable;

    .line 14
    if-eqz v3, :cond_0

    .line 16
    const-wide/16 v4, 0x0

    .line 18
    invoke-virtual {v3, v4, v5}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 20
    iget-object v3, p0, Lcom/miui/maml/elements/AnimStateElement;->mAttrs:Ljava/util/concurrent/ConcurrentHashMap;

    .line 23
    invoke-virtual {v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 28
    goto :goto_0

    .line 30
    :cond_1
    return-void
    .line 31
.end method

.method public updateAttr([Ljava/lang/String;[D)V
    .locals 6

    .line 1
    if-eqz p1, :cond_1

    .line 2
    if-eqz p2, :cond_1

    .line 4
    array-length v0, p1

    .line 6
    array-length v1, p2

    .line 7
    if-ne v0, v1, :cond_1

    .line 8
    array-length v0, p1

    .line 10
    const/4 v1, 0x0

    .line 11
    :goto_0
    if-ge v1, v0, :cond_1

    .line 12
    iget-object v2, p0, Lcom/miui/maml/elements/AnimStateElement;->mAttrs:Ljava/util/concurrent/ConcurrentHashMap;

    .line 14
    aget-object v3, p1, v1

    .line 16
    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    move-result-object v2

    .line 21
    check-cast v2, Lcom/miui/maml/data/IndexedVariable;

    .line 22
    if-nez v2, :cond_0

    .line 24
    new-instance v2, Lcom/miui/maml/data/IndexedVariable;

    .line 26
    new-instance v3, Ljava/lang/StringBuilder;

    .line 28
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    iget-object v4, p0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 33
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    const-string v4, "."

    .line 38
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    aget-object v4, p1, v1

    .line 43
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    move-result-object v3

    .line 51
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 52
    move-result-object v4

    .line 55
    const/4 v5, 0x1

    .line 56
    invoke-direct {v2, v3, v4, v5}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 57
    iget-object v3, p0, Lcom/miui/maml/elements/AnimStateElement;->mAttrs:Ljava/util/concurrent/ConcurrentHashMap;

    .line 60
    aget-object v4, p1, v1

    .line 62
    invoke-virtual {v3, v4, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    :cond_0
    aget-wide v3, p2, v1

    .line 67
    invoke-virtual {v2, v3, v4}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 69
    add-int/lit8 v1, v1, 0x1

    .line 72
    goto :goto_0

    .line 74
    :cond_1
    return-void
    .line 75
.end method
