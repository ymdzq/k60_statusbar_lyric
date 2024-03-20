.class Lcom/miui/maml/ActionCommand$IfCommand;
.super Lcom/miui/maml/ActionCommand;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field private static final ALTERNATE:Ljava/lang/String; = "Alternate"

.field private static final CONSEQUENT:Ljava/lang/String; = "Consequent"

.field public static final TAG_NAME:Ljava/lang/String; = "IfCommand"


# instance fields
.field private mAlternateCommand:Lcom/miui/maml/ActionCommand$MultiCommand;

.field private mCondition:Lcom/miui/maml/data/Expression;

.field private mConsequentCommand:Lcom/miui/maml/ActionCommand$MultiCommand;


# direct methods
.method public constructor <init>(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Lcom/miui/maml/ActionCommand;-><init>(Lcom/miui/maml/elements/ScreenElement;)V

    .line 2
    invoke-virtual {p1}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 5
    move-result-object v0

    .line 8
    const-string v1, "ifCondition"

    .line 9
    invoke-interface {p2, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    move-result-object v1

    .line 14
    invoke-static {v0, v1}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 15
    move-result-object v0

    .line 18
    iput-object v0, p0, Lcom/miui/maml/ActionCommand$IfCommand;->mCondition:Lcom/miui/maml/data/Expression;

    .line 19
    invoke-interface {p2}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    .line 21
    move-result-object p2

    .line 24
    const/4 v0, 0x0

    .line 25
    :goto_0
    invoke-interface {p2}, Lorg/w3c/dom/NodeList;->getLength()I

    .line 26
    move-result v1

    .line 29
    if-ge v0, v1, :cond_2

    .line 30
    invoke-interface {p2, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    .line 32
    move-result-object v1

    .line 35
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    .line 36
    move-result v1

    .line 39
    const/4 v2, 0x1

    .line 40
    if-ne v1, v2, :cond_1

    .line 41
    invoke-interface {p2, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    .line 43
    move-result-object v1

    .line 46
    check-cast v1, Lorg/w3c/dom/Element;

    .line 47
    invoke-interface {v1}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    .line 49
    move-result-object v2

    .line 52
    const-string v3, "Consequent"

    .line 53
    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 55
    move-result v3

    .line 58
    if-eqz v3, :cond_0

    .line 59
    iget-object v3, p0, Lcom/miui/maml/ActionCommand$IfCommand;->mConsequentCommand:Lcom/miui/maml/ActionCommand$MultiCommand;

    .line 61
    if-nez v3, :cond_0

    .line 63
    new-instance v2, Lcom/miui/maml/ActionCommand$MultiCommand;

    .line 65
    invoke-direct {v2, p1, v1}, Lcom/miui/maml/ActionCommand$MultiCommand;-><init>(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V

    .line 67
    iput-object v2, p0, Lcom/miui/maml/ActionCommand$IfCommand;->mConsequentCommand:Lcom/miui/maml/ActionCommand$MultiCommand;

    .line 70
    goto :goto_1

    .line 72
    :cond_0
    const-string v3, "Alternate"

    .line 73
    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 75
    move-result v2

    .line 78
    if-eqz v2, :cond_1

    .line 79
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$IfCommand;->mAlternateCommand:Lcom/miui/maml/ActionCommand$MultiCommand;

    .line 81
    if-nez v2, :cond_1

    .line 83
    new-instance v2, Lcom/miui/maml/ActionCommand$MultiCommand;

    .line 85
    invoke-direct {v2, p1, v1}, Lcom/miui/maml/ActionCommand$MultiCommand;-><init>(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V

    .line 87
    iput-object v2, p0, Lcom/miui/maml/ActionCommand$IfCommand;->mAlternateCommand:Lcom/miui/maml/ActionCommand$MultiCommand;

    .line 90
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 92
    goto :goto_0

    .line 94
    :cond_2
    return-void
    .line 95
.end method


# virtual methods
.method public doPerform()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$IfCommand;->mCondition:Lcom/miui/maml/data/Expression;

    .line 2
    if-eqz v0, :cond_1

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
    iget-object p0, p0, Lcom/miui/maml/ActionCommand$IfCommand;->mAlternateCommand:Lcom/miui/maml/ActionCommand$MultiCommand;

    .line 16
    if-eqz p0, :cond_1

    .line 18
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand;->perform()V

    .line 20
    goto :goto_0

    .line 23
    :cond_0
    iget-object p0, p0, Lcom/miui/maml/ActionCommand$IfCommand;->mConsequentCommand:Lcom/miui/maml/ActionCommand$MultiCommand;

    .line 24
    if-eqz p0, :cond_1

    .line 26
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand;->perform()V

    .line 28
    :cond_1
    :goto_0
    return-void
    .line 31
.end method

.method public finish()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$IfCommand;->mAlternateCommand:Lcom/miui/maml/ActionCommand$MultiCommand;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/miui/maml/ActionCommand$MultiCommand;->finish()V

    .line 6
    :cond_0
    iget-object p0, p0, Lcom/miui/maml/ActionCommand$IfCommand;->mConsequentCommand:Lcom/miui/maml/ActionCommand$MultiCommand;

    .line 9
    if-eqz p0, :cond_1

    .line 11
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand$MultiCommand;->finish()V

    .line 13
    :cond_1
    return-void
    .line 16
.end method

.method public init()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$IfCommand;->mAlternateCommand:Lcom/miui/maml/ActionCommand$MultiCommand;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/miui/maml/ActionCommand$MultiCommand;->init()V

    .line 6
    :cond_0
    iget-object p0, p0, Lcom/miui/maml/ActionCommand$IfCommand;->mConsequentCommand:Lcom/miui/maml/ActionCommand$MultiCommand;

    .line 9
    if-eqz p0, :cond_1

    .line 11
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand$MultiCommand;->init()V

    .line 13
    :cond_1
    return-void
    .line 16
.end method

.method public pause()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$IfCommand;->mAlternateCommand:Lcom/miui/maml/ActionCommand$MultiCommand;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/miui/maml/ActionCommand$MultiCommand;->pause()V

    .line 6
    :cond_0
    iget-object p0, p0, Lcom/miui/maml/ActionCommand$IfCommand;->mConsequentCommand:Lcom/miui/maml/ActionCommand$MultiCommand;

    .line 9
    if-eqz p0, :cond_1

    .line 11
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand$MultiCommand;->pause()V

    .line 13
    :cond_1
    return-void
    .line 16
.end method

.method public resume()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$IfCommand;->mAlternateCommand:Lcom/miui/maml/ActionCommand$MultiCommand;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/miui/maml/ActionCommand$MultiCommand;->resume()V

    .line 6
    :cond_0
    iget-object p0, p0, Lcom/miui/maml/ActionCommand$IfCommand;->mConsequentCommand:Lcom/miui/maml/ActionCommand$MultiCommand;

    .line 9
    if-eqz p0, :cond_1

    .line 11
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand$MultiCommand;->resume()V

    .line 13
    :cond_1
    return-void
    .line 16
.end method
