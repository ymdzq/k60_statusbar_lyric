.class public Lcom/miui/maml/CommandTrigger;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "Trigger"


# instance fields
.field private mActionStrings:[Ljava/lang/String;

.field private mCommands:Ljava/util/ArrayList;

.field private mCondition:Lcom/miui/maml/data/Expression;

.field private mPropertyCommand:Lcom/miui/maml/ActionCommand$PropertyCommand;

.field private mScreenElement:Lcom/miui/maml/elements/ScreenElement;


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
    iput-object v0, p0, Lcom/miui/maml/CommandTrigger;->mCommands:Ljava/util/ArrayList;

    .line 10
    if-eqz p1, :cond_0

    .line 12
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/CommandTrigger;->load(Lorg/w3c/dom/Element;Lcom/miui/maml/elements/ScreenElement;)V

    .line 14
    :cond_0
    return-void
    .line 17
.end method

.method public static fromElement(Lorg/w3c/dom/Element;Lcom/miui/maml/elements/ScreenElement;)Lcom/miui/maml/CommandTrigger;
    .locals 1

    .line 1
    if-nez p0, :cond_0

    .line 2
    const/4 p0, 0x0

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    new-instance v0, Lcom/miui/maml/CommandTrigger;

    .line 6
    invoke-direct {v0, p0, p1}, Lcom/miui/maml/CommandTrigger;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/elements/ScreenElement;)V

    .line 8
    move-object p0, v0

    .line 11
    :goto_0
    return-object p0
    .line 12
.end method

.method public static fromParentElement(Lorg/w3c/dom/Element;Lcom/miui/maml/elements/ScreenElement;)Lcom/miui/maml/CommandTrigger;
    .locals 1

    .line 1
    const-string v0, "Trigger"

    .line 2
    invoke-static {p0, v0}, Lcom/miui/maml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    .line 4
    move-result-object p0

    .line 7
    invoke-static {p0, p1}, Lcom/miui/maml/CommandTrigger;->fromElement(Lorg/w3c/dom/Element;Lcom/miui/maml/elements/ScreenElement;)Lcom/miui/maml/CommandTrigger;

    .line 8
    move-result-object p0

    .line 11
    return-object p0
    .line 12
.end method

.method private load(Lorg/w3c/dom/Element;Lcom/miui/maml/elements/ScreenElement;)V
    .locals 4

    .line 1
    iput-object p2, p0, Lcom/miui/maml/CommandTrigger;->mScreenElement:Lcom/miui/maml/elements/ScreenElement;

    .line 2
    const-string/jumbo v0, "target"

    .line 4
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    move-result-object v0

    .line 10
    const-string v1, "property"

    .line 11
    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    move-result-object v1

    .line 16
    const-string/jumbo v2, "value"

    .line 17
    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    move-result-object v2

    .line 23
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 24
    move-result v3

    .line 27
    if-nez v3, :cond_0

    .line 28
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 30
    move-result v3

    .line 33
    if-nez v3, :cond_0

    .line 34
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 36
    move-result v3

    .line 39
    if-nez v3, :cond_0

    .line 40
    new-instance v3, Ljava/lang/StringBuilder;

    .line 42
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    const-string v0, "."

    .line 50
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    move-result-object v0

    .line 61
    invoke-static {p2, v0, v2}, Lcom/miui/maml/ActionCommand$PropertyCommand;->create(Lcom/miui/maml/elements/ScreenElement;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/maml/ActionCommand$PropertyCommand;

    .line 62
    move-result-object v0

    .line 65
    iput-object v0, p0, Lcom/miui/maml/CommandTrigger;->mPropertyCommand:Lcom/miui/maml/ActionCommand$PropertyCommand;

    .line 66
    :cond_0
    const-string v0, "action"

    .line 68
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 70
    move-result-object v0

    .line 73
    const-string v1, ","

    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 76
    move-result-object v0

    .line 79
    iput-object v0, p0, Lcom/miui/maml/CommandTrigger;->mActionStrings:[Ljava/lang/String;

    .line 80
    iget-object v0, p0, Lcom/miui/maml/CommandTrigger;->mScreenElement:Lcom/miui/maml/elements/ScreenElement;

    .line 82
    invoke-virtual {v0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 84
    move-result-object v0

    .line 87
    const-string v1, "condition"

    .line 88
    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 90
    move-result-object v1

    .line 93
    invoke-static {v0, v1}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 94
    move-result-object v0

    .line 97
    iput-object v0, p0, Lcom/miui/maml/CommandTrigger;->mCondition:Lcom/miui/maml/data/Expression;

    .line 98
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    .line 100
    move-result-object p1

    .line 103
    const/4 v0, 0x0

    .line 104
    :goto_0
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    .line 105
    move-result v1

    .line 108
    if-ge v0, v1, :cond_2

    .line 109
    invoke-interface {p1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    .line 111
    move-result-object v1

    .line 114
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    .line 115
    move-result v1

    .line 118
    const/4 v2, 0x1

    .line 119
    if-ne v1, v2, :cond_1

    .line 120
    invoke-interface {p1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    .line 122
    move-result-object v1

    .line 125
    check-cast v1, Lorg/w3c/dom/Element;

    .line 126
    invoke-static {v1, p2}, Lcom/miui/maml/ActionCommand;->create(Lorg/w3c/dom/Element;Lcom/miui/maml/elements/ScreenElement;)Lcom/miui/maml/ActionCommand;

    .line 128
    move-result-object v1

    .line 131
    if-eqz v1, :cond_1

    .line 132
    iget-object v2, p0, Lcom/miui/maml/CommandTrigger;->mCommands:Ljava/util/ArrayList;

    .line 134
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 139
    goto :goto_0

    .line 141
    :cond_2
    return-void
    .line 142
.end method


# virtual methods
.method public finish()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/maml/CommandTrigger;->mPropertyCommand:Lcom/miui/maml/ActionCommand$PropertyCommand;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/miui/maml/ActionCommand;->finish()V

    .line 6
    :cond_0
    iget-object p0, p0, Lcom/miui/maml/CommandTrigger;->mCommands:Ljava/util/ArrayList;

    .line 9
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 11
    move-result-object p0

    .line 14
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    move-result-object v0

    .line 24
    check-cast v0, Lcom/miui/maml/ActionCommand;

    .line 25
    invoke-virtual {v0}, Lcom/miui/maml/ActionCommand;->finish()V

    .line 27
    goto :goto_0

    .line 30
    :cond_1
    return-void
    .line 31
.end method

.method public init()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/maml/CommandTrigger;->mPropertyCommand:Lcom/miui/maml/ActionCommand$PropertyCommand;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/miui/maml/ActionCommand$PropertyCommand;->init()V

    .line 6
    :cond_0
    iget-object p0, p0, Lcom/miui/maml/CommandTrigger;->mCommands:Ljava/util/ArrayList;

    .line 9
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 11
    move-result-object p0

    .line 14
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    move-result-object v0

    .line 24
    check-cast v0, Lcom/miui/maml/ActionCommand;

    .line 25
    invoke-virtual {v0}, Lcom/miui/maml/ActionCommand;->init()V

    .line 27
    goto :goto_0

    .line 30
    :cond_1
    return-void
    .line 31
.end method

.method public isAction(Ljava/lang/String;)Z
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/miui/maml/CommandTrigger;->mActionStrings:[Ljava/lang/String;

    .line 2
    array-length v0, p0

    .line 4
    const/4 v1, 0x0

    .line 5
    move v2, v1

    .line 6
    :goto_0
    if-ge v2, v0, :cond_1

    .line 7
    aget-object v3, p0, v2

    .line 9
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 11
    move-result v3

    .line 14
    if-eqz v3, :cond_0

    .line 15
    const/4 p0, 0x1

    .line 17
    return p0

    .line 18
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 19
    goto :goto_0

    .line 21
    :cond_1
    return v1
    .line 22
.end method

.method public onAction(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/miui/maml/CommandTrigger;->isAction(Ljava/lang/String;)Z

    .line 2
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p0}, Lcom/miui/maml/CommandTrigger;->perform()V

    .line 8
    :cond_0
    return-void
    .line 11
.end method

.method public pause()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/maml/CommandTrigger;->mPropertyCommand:Lcom/miui/maml/ActionCommand$PropertyCommand;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/miui/maml/ActionCommand;->pause()V

    .line 6
    :cond_0
    iget-object p0, p0, Lcom/miui/maml/CommandTrigger;->mCommands:Ljava/util/ArrayList;

    .line 9
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 11
    move-result-object p0

    .line 14
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    move-result-object v0

    .line 24
    check-cast v0, Lcom/miui/maml/ActionCommand;

    .line 25
    invoke-virtual {v0}, Lcom/miui/maml/ActionCommand;->pause()V

    .line 27
    goto :goto_0

    .line 30
    :cond_1
    return-void
    .line 31
.end method

.method public perform()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/miui/maml/CommandTrigger;->mCondition:Lcom/miui/maml/data/Expression;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 6
    move-result-wide v0

    .line 9
    const-wide/16 v2, 0x0

    .line 10
    cmpg-double v0, v0, v2

    .line 12
    if-gtz v0, :cond_0

    .line 14
    return-void

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/CommandTrigger;->mPropertyCommand:Lcom/miui/maml/ActionCommand$PropertyCommand;

    .line 17
    if-eqz v0, :cond_1

    .line 19
    invoke-virtual {v0}, Lcom/miui/maml/ActionCommand$PropertyCommand;->perform()V

    .line 21
    :cond_1
    iget-object p0, p0, Lcom/miui/maml/CommandTrigger;->mCommands:Ljava/util/ArrayList;

    .line 24
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 26
    move-result-object p0

    .line 29
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    move-result v0

    .line 33
    if-eqz v0, :cond_2

    .line 34
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    move-result-object v0

    .line 39
    check-cast v0, Lcom/miui/maml/ActionCommand;

    .line 40
    invoke-virtual {v0}, Lcom/miui/maml/ActionCommand;->perform()V

    .line 42
    goto :goto_0

    .line 45
    :cond_2
    return-void
    .line 46
.end method

.method public resume()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/maml/CommandTrigger;->mPropertyCommand:Lcom/miui/maml/ActionCommand$PropertyCommand;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/miui/maml/ActionCommand;->resume()V

    .line 6
    :cond_0
    iget-object p0, p0, Lcom/miui/maml/CommandTrigger;->mCommands:Ljava/util/ArrayList;

    .line 9
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 11
    move-result-object p0

    .line 14
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    move-result-object v0

    .line 24
    check-cast v0, Lcom/miui/maml/ActionCommand;

    .line 25
    invoke-virtual {v0}, Lcom/miui/maml/ActionCommand;->resume()V

    .line 27
    goto :goto_0

    .line 30
    :cond_1
    return-void
    .line 31
.end method
