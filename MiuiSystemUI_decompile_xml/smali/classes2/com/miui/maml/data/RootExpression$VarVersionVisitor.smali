.class Lcom/miui/maml/data/RootExpression$VarVersionVisitor;
.super Lcom/miui/maml/data/ExpressionVisitor;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field private mRoot:Lcom/miui/maml/data/RootExpression;


# direct methods
.method public constructor <init>(Lcom/miui/maml/data/RootExpression;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/miui/maml/data/ExpressionVisitor;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/miui/maml/data/RootExpression$VarVersionVisitor;->mRoot:Lcom/miui/maml/data/RootExpression;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public visit(Lcom/miui/maml/data/Expression;)V
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/miui/maml/data/Expression$VariableExpression;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    move-object v0, p1

    .line 6
    check-cast v0, Lcom/miui/maml/data/Expression$VariableExpression;

    .line 7
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 9
    iget-object p0, p0, Lcom/miui/maml/data/RootExpression$VarVersionVisitor;->mRoot:Lcom/miui/maml/data/RootExpression;

    .line 12
    new-instance v1, Lcom/miui/maml/data/RootExpression$VarVersion;

    .line 14
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression$VariableExpression;->getIndex()I

    .line 16
    move-result v2

    .line 19
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression$VariableExpression;->getVersion()I

    .line 20
    move-result v0

    .line 23
    instance-of p1, p1, Lcom/miui/maml/data/Expression$NumberVariableExpression;

    .line 24
    invoke-direct {v1, v2, v0, p1}, Lcom/miui/maml/data/RootExpression$VarVersion;-><init>(IIZ)V

    .line 26
    invoke-virtual {p0, v1}, Lcom/miui/maml/data/RootExpression;->addVarVersion(Lcom/miui/maml/data/RootExpression$VarVersion;)V

    .line 29
    goto :goto_0

    .line 32
    :cond_0
    instance-of v0, p1, Lcom/miui/maml/data/Expression$FunctionExpression;

    .line 33
    if-eqz v0, :cond_2

    .line 35
    check-cast p1, Lcom/miui/maml/data/Expression$FunctionExpression;

    .line 37
    invoke-virtual {p1}, Lcom/miui/maml/data/Expression$FunctionExpression;->getFunName()Ljava/lang/String;

    .line 39
    move-result-object p1

    .line 42
    const-string v0, "rand"

    .line 43
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    move-result v0

    .line 48
    if-nez v0, :cond_1

    .line 49
    const-string v0, "eval"

    .line 51
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    move-result v0

    .line 56
    if-nez v0, :cond_1

    .line 57
    const-string v0, "preciseeval"

    .line 59
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 61
    move-result v0

    .line 64
    if-nez v0, :cond_1

    .line 65
    const-string v0, "newJsonObject"

    .line 67
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 69
    move-result v0

    .line 72
    if-nez v0, :cond_1

    .line 73
    const-string v0, "newJsonArray"

    .line 75
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 77
    move-result p1

    .line 80
    if-eqz p1, :cond_2

    .line 81
    :cond_1
    iget-object p0, p0, Lcom/miui/maml/data/RootExpression$VarVersionVisitor;->mRoot:Lcom/miui/maml/data/RootExpression;

    .line 83
    const/4 p1, 0x1

    .line 85
    invoke-static {p0, p1}, Lcom/miui/maml/data/RootExpression;->access$002(Lcom/miui/maml/data/RootExpression;Z)Z

    .line 86
    :cond_2
    :goto_0
    return-void
    .line 89
.end method
