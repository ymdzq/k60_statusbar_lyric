.class Lcom/miui/maml/ActionCommand$ExternCommand;
.super Lcom/miui/maml/ActionCommand;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "ExternCommand"


# instance fields
.field private mCommand:Ljava/lang/String;

.field private mNumParaExp:Lcom/miui/maml/data/Expression;

.field private mStrParaExp:Lcom/miui/maml/data/Expression;


# direct methods
.method public constructor <init>(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/miui/maml/ActionCommand;-><init>(Lcom/miui/maml/elements/ScreenElement;)V

    .line 2
    const-string p1, "command"

    .line 5
    invoke-interface {p2, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    move-result-object p1

    .line 10
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$ExternCommand;->mCommand:Ljava/lang/String;

    .line 11
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand;->getVariables()Lcom/miui/maml/data/Variables;

    .line 13
    move-result-object p1

    .line 16
    const-string v0, "numPara"

    .line 17
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 22
    invoke-static {p1, v0}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 23
    move-result-object p1

    .line 26
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$ExternCommand;->mNumParaExp:Lcom/miui/maml/data/Expression;

    .line 27
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand;->getVariables()Lcom/miui/maml/data/Variables;

    .line 29
    move-result-object p1

    .line 32
    const-string/jumbo v0, "strPara"

    .line 33
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 36
    move-result-object p2

    .line 39
    invoke-static {p1, p2}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 40
    move-result-object p1

    .line 43
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$ExternCommand;->mStrParaExp:Lcom/miui/maml/data/Expression;

    .line 44
    return-void
    .line 46
.end method


# virtual methods
.method public doPerform()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    .line 2
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$ExternCommand;->mCommand:Ljava/lang/String;

    .line 6
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$ExternCommand;->mNumParaExp:Lcom/miui/maml/data/Expression;

    .line 8
    const/4 v3, 0x0

    .line 10
    if-nez v2, :cond_0

    .line 11
    move-object v2, v3

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {v2}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 15
    move-result-wide v4

    .line 18
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 19
    move-result-object v2

    .line 22
    :goto_0
    iget-object p0, p0, Lcom/miui/maml/ActionCommand$ExternCommand;->mStrParaExp:Lcom/miui/maml/data/Expression;

    .line 23
    if-nez p0, :cond_1

    .line 25
    goto :goto_1

    .line 27
    :cond_1
    invoke-virtual {p0}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    .line 28
    move-result-object v3

    .line 31
    :goto_1
    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/maml/ScreenElementRoot;->issueExternCommand(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;)V

    .line 32
    return-void
    .line 35
.end method
