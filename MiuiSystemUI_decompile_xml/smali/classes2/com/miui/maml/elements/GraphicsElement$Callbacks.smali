.class Lcom/miui/maml/elements/GraphicsElement$Callbacks;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "OnDraw"


# instance fields
.field private mCommands:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/elements/ScreenElement;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/miui/maml/elements/GraphicsElement$Callbacks;->mCommands:Ljava/util/ArrayList;

    .line 10
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    .line 12
    move-result-object p1

    .line 15
    const/4 v0, 0x0

    .line 16
    :goto_0
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    .line 17
    move-result v1

    .line 20
    if-ge v0, v1, :cond_1

    .line 21
    invoke-interface {p1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    .line 23
    move-result-object v1

    .line 26
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    .line 27
    move-result v1

    .line 30
    const/4 v2, 0x1

    .line 31
    if-ne v1, v2, :cond_0

    .line 32
    invoke-interface {p1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    .line 34
    move-result-object v1

    .line 37
    check-cast v1, Lorg/w3c/dom/Element;

    .line 38
    invoke-static {v1, p2}, Lcom/miui/maml/ActionCommand;->create(Lorg/w3c/dom/Element;Lcom/miui/maml/elements/ScreenElement;)Lcom/miui/maml/ActionCommand;

    .line 40
    move-result-object v1

    .line 43
    if-eqz v1, :cond_0

    .line 44
    iget-object v2, p0, Lcom/miui/maml/elements/GraphicsElement$Callbacks;->mCommands:Ljava/util/ArrayList;

    .line 46
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 51
    goto :goto_0

    .line 53
    :cond_1
    return-void
    .line 54
.end method


# virtual methods
.method public finish()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/GraphicsElement$Callbacks;->mCommands:Ljava/util/ArrayList;

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
    check-cast v0, Lcom/miui/maml/ActionCommand;

    .line 18
    invoke-virtual {v0}, Lcom/miui/maml/ActionCommand;->finish()V

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
    iget-object p0, p0, Lcom/miui/maml/elements/GraphicsElement$Callbacks;->mCommands:Ljava/util/ArrayList;

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
    check-cast v0, Lcom/miui/maml/ActionCommand;

    .line 18
    invoke-virtual {v0}, Lcom/miui/maml/ActionCommand;->init()V

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
    iget-object p0, p0, Lcom/miui/maml/elements/GraphicsElement$Callbacks;->mCommands:Ljava/util/ArrayList;

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
    check-cast v0, Lcom/miui/maml/ActionCommand;

    .line 18
    invoke-virtual {v0}, Lcom/miui/maml/ActionCommand;->pause()V

    .line 20
    goto :goto_0

    .line 23
    :cond_0
    return-void
    .line 24
.end method

.method public perform()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/GraphicsElement$Callbacks;->mCommands:Ljava/util/ArrayList;

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
    check-cast v0, Lcom/miui/maml/ActionCommand;

    .line 18
    invoke-virtual {v0}, Lcom/miui/maml/ActionCommand;->perform()V

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
    iget-object p0, p0, Lcom/miui/maml/elements/GraphicsElement$Callbacks;->mCommands:Ljava/util/ArrayList;

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
    check-cast v0, Lcom/miui/maml/ActionCommand;

    .line 18
    invoke-virtual {v0}, Lcom/miui/maml/ActionCommand;->resume()V

    .line 20
    goto :goto_0

    .line 23
    :cond_0
    return-void
    .line 24
.end method
