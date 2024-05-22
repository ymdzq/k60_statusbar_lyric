.class Lcom/miui/maml/ActionCommand$ConditionCommand;
.super Lcom/miui/maml/ActionCommand;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field private mCommand:Lcom/miui/maml/ActionCommand;

.field private mCondition:Lcom/miui/maml/data/Expression;


# direct methods
.method public constructor <init>(Lcom/miui/maml/ActionCommand;Lcom/miui/maml/data/Expression;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/miui/maml/ActionCommand;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    .line 2
    move-result-object v0

    .line 5
    invoke-direct {p0, v0}, Lcom/miui/maml/ActionCommand;-><init>(Lcom/miui/maml/elements/ScreenElement;)V

    .line 6
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$ConditionCommand;->mCommand:Lcom/miui/maml/ActionCommand;

    .line 9
    iput-object p2, p0, Lcom/miui/maml/ActionCommand$ConditionCommand;->mCondition:Lcom/miui/maml/data/Expression;

    .line 11
    return-void
    .line 13
.end method


# virtual methods
.method public doPerform()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$ConditionCommand;->mCondition:Lcom/miui/maml/data/Expression;

    .line 2
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 4
    move-result-wide v0

    .line 7
    const-wide/16 v2, 0x0

    .line 8
    cmpl-double v0, v0, v2

    .line 10
    if-lez v0, :cond_0

    .line 12
    iget-object p0, p0, Lcom/miui/maml/ActionCommand$ConditionCommand;->mCommand:Lcom/miui/maml/ActionCommand;

    .line 14
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand;->perform()V

    .line 16
    :cond_0
    return-void
    .line 19
.end method

.method public init()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/ActionCommand$ConditionCommand;->mCommand:Lcom/miui/maml/ActionCommand;

    .line 2
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand;->init()V

    .line 4
    return-void
    .line 7
.end method
