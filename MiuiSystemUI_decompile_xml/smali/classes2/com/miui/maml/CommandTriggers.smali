.class public Lcom/miui/maml/CommandTriggers;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "CommandTriggers"

.field public static final TAG_NAME:Ljava/lang/String; = "Triggers"


# instance fields
.field private mTriggers:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/elements/ScreenElement;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/miui/maml/CommandTriggers;->mTriggers:Ljava/util/ArrayList;

    .line 10
    if-eqz p1, :cond_0

    .line 12
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/CommandTriggers;->load(Lorg/w3c/dom/Element;Lcom/miui/maml/elements/ScreenElement;)V

    .line 14
    :cond_0
    return-void
    .line 17
.end method

.method private load(Lorg/w3c/dom/Element;Lcom/miui/maml/elements/ScreenElement;)V
    .locals 4

    .line 1
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    .line 2
    move-result-object p1

    .line 5
    const/4 v0, 0x0

    .line 6
    :goto_0
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    .line 7
    move-result v1

    .line 10
    if-ge v0, v1, :cond_2

    .line 11
    invoke-interface {p1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    .line 13
    move-result-object v1

    .line 16
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    .line 17
    move-result v1

    .line 20
    const/4 v2, 0x1

    .line 21
    if-ne v1, v2, :cond_1

    .line 22
    invoke-interface {p1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    .line 24
    move-result-object v1

    .line 27
    check-cast v1, Lorg/w3c/dom/Element;

    .line 28
    invoke-interface {v1}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    .line 30
    move-result-object v2

    .line 33
    const-string v3, "Trigger"

    .line 34
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    move-result v2

    .line 39
    if-nez v2, :cond_0

    .line 40
    goto :goto_1

    .line 42
    :cond_0
    iget-object v2, p0, Lcom/miui/maml/CommandTriggers;->mTriggers:Ljava/util/ArrayList;

    .line 43
    new-instance v3, Lcom/miui/maml/CommandTrigger;

    .line 45
    invoke-direct {v3, v1, p2}, Lcom/miui/maml/CommandTrigger;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/elements/ScreenElement;)V

    .line 47
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 53
    goto :goto_0

    .line 55
    :cond_2
    return-void
    .line 56
.end method


# virtual methods
.method public add(Lcom/miui/maml/CommandTrigger;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/CommandTriggers;->mTriggers:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    return-void
    .line 7
.end method

.method public find(Ljava/lang/String;)Lcom/miui/maml/CommandTrigger;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/miui/maml/CommandTriggers;->mTriggers:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    move-result-object p0

    .line 7
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 17
    check-cast v0, Lcom/miui/maml/CommandTrigger;

    .line 18
    invoke-virtual {v0, p1}, Lcom/miui/maml/CommandTrigger;->isAction(Ljava/lang/String;)Z

    .line 20
    move-result v1

    .line 23
    if-eqz v1, :cond_0

    .line 24
    return-object v0

    .line 26
    :cond_1
    const/4 p0, 0x0

    .line 27
    return-object p0
    .line 28
.end method

.method public finish()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/miui/maml/CommandTriggers;->mTriggers:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    move-result-object p0

    .line 7
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 17
    check-cast v0, Lcom/miui/maml/CommandTrigger;

    .line 18
    invoke-virtual {v0}, Lcom/miui/maml/CommandTrigger;->finish()V

    .line 20
    goto :goto_0

    .line 23
    :cond_0
    return-void
    .line 24
.end method

.method public init()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/miui/maml/CommandTriggers;->mTriggers:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    move-result-object p0

    .line 7
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 17
    check-cast v0, Lcom/miui/maml/CommandTrigger;

    .line 18
    invoke-virtual {v0}, Lcom/miui/maml/CommandTrigger;->init()V

    .line 20
    goto :goto_0

    .line 23
    :cond_0
    return-void
    .line 24
.end method

.method public onAction(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/miui/maml/CommandTriggers;->mTriggers:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    move-result-object p0

    .line 7
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 17
    check-cast v0, Lcom/miui/maml/CommandTrigger;

    .line 18
    invoke-virtual {v0, p1}, Lcom/miui/maml/CommandTrigger;->onAction(Ljava/lang/String;)V

    .line 20
    goto :goto_0

    .line 23
    :cond_0
    return-void
    .line 24
.end method

.method public pause()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/miui/maml/CommandTriggers;->mTriggers:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    move-result-object p0

    .line 7
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 17
    check-cast v0, Lcom/miui/maml/CommandTrigger;

    .line 18
    invoke-virtual {v0}, Lcom/miui/maml/CommandTrigger;->pause()V

    .line 20
    goto :goto_0

    .line 23
    :cond_0
    return-void
    .line 24
.end method

.method public resume()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/miui/maml/CommandTriggers;->mTriggers:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    move-result-object p0

    .line 7
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 17
    check-cast v0, Lcom/miui/maml/CommandTrigger;

    .line 18
    invoke-virtual {v0}, Lcom/miui/maml/CommandTrigger;->resume()V

    .line 20
    goto :goto_0

    .line 23
    :cond_0
    return-void
    .line 24
.end method
