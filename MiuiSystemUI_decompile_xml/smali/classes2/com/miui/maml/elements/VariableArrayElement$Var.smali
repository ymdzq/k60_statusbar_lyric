.class Lcom/miui/maml/elements/VariableArrayElement$Var;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field private mConst:Z

.field private mCurrentItemIsExpression:Z

.field private mIndex:I

.field private mIndexExpression:Lcom/miui/maml/data/Expression;

.field private mName:Ljava/lang/String;

.field private mVar:Lcom/miui/maml/data/IndexedVariable;

.field final synthetic this$0:Lcom/miui/maml/elements/VariableArrayElement;


# direct methods
.method public constructor <init>(Lcom/miui/maml/elements/VariableArrayElement;Lcom/miui/maml/data/Variables;Lorg/w3c/dom/Element;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/miui/maml/elements/VariableArrayElement$Var;->this$0:Lcom/miui/maml/elements/VariableArrayElement;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, -0x1

    .line 7
    iput v0, p0, Lcom/miui/maml/elements/VariableArrayElement$Var;->mIndex:I

    .line 8
    if-eqz p3, :cond_1

    .line 10
    const-string v0, "name"

    .line 12
    invoke-interface {p3, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 17
    iput-object v0, p0, Lcom/miui/maml/elements/VariableArrayElement$Var;->mName:Ljava/lang/String;

    .line 18
    const-string v0, "index"

    .line 20
    invoke-interface {p3, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    move-result-object v0

    .line 25
    invoke-static {p2, v0}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 26
    move-result-object p2

    .line 29
    iput-object p2, p0, Lcom/miui/maml/elements/VariableArrayElement$Var;->mIndexExpression:Lcom/miui/maml/data/Expression;

    .line 30
    const-string p2, "const"

    .line 32
    invoke-interface {p3, p2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    move-result-object p2

    .line 37
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 38
    move-result p2

    .line 41
    iput-boolean p2, p0, Lcom/miui/maml/elements/VariableArrayElement$Var;->mConst:Z

    .line 42
    new-instance p2, Lcom/miui/maml/data/IndexedVariable;

    .line 44
    iget-object p3, p0, Lcom/miui/maml/elements/VariableArrayElement$Var;->mName:Ljava/lang/String;

    .line 46
    invoke-virtual {p1}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 48
    move-result-object v0

    .line 51
    iget-object p1, p1, Lcom/miui/maml/elements/VariableArrayElement;->mType:Lcom/miui/maml/elements/VariableArrayElement$Type;

    .line 52
    sget-object v1, Lcom/miui/maml/elements/VariableArrayElement$Type;->STRING:Lcom/miui/maml/elements/VariableArrayElement$Type;

    .line 54
    if-eq p1, v1, :cond_0

    .line 56
    const/4 p1, 0x1

    .line 58
    goto :goto_0

    .line 59
    :cond_0
    const/4 p1, 0x0

    .line 60
    :goto_0
    invoke-direct {p2, p3, v0, p1}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 61
    iput-object p2, p0, Lcom/miui/maml/elements/VariableArrayElement$Var;->mVar:Lcom/miui/maml/data/IndexedVariable;

    .line 64
    :cond_1
    return-void
    .line 66
.end method

.method private update()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/VariableArrayElement$Var;->mIndexExpression:Lcom/miui/maml/data/Expression;

    .line 2
    if-nez v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 7
    move-result-wide v0

    .line 10
    double-to-int v0, v0

    .line 11
    if-ltz v0, :cond_6

    .line 12
    iget-object v1, p0, Lcom/miui/maml/elements/VariableArrayElement$Var;->this$0:Lcom/miui/maml/elements/VariableArrayElement;

    .line 14
    invoke-static {v1}, Lcom/miui/maml/elements/VariableArrayElement;->access$000(Lcom/miui/maml/elements/VariableArrayElement;)Ljava/util/ArrayList;

    .line 16
    move-result-object v1

    .line 19
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 20
    move-result v1

    .line 23
    if-lt v0, v1, :cond_1

    .line 24
    goto :goto_1

    .line 26
    :cond_1
    iget v1, p0, Lcom/miui/maml/elements/VariableArrayElement$Var;->mIndex:I

    .line 27
    if-ne v1, v0, :cond_2

    .line 29
    iget-boolean v1, p0, Lcom/miui/maml/elements/VariableArrayElement$Var;->mCurrentItemIsExpression:Z

    .line 31
    if-nez v1, :cond_2

    .line 33
    return-void

    .line 35
    :cond_2
    iget-object v1, p0, Lcom/miui/maml/elements/VariableArrayElement$Var;->this$0:Lcom/miui/maml/elements/VariableArrayElement;

    .line 36
    invoke-static {v1}, Lcom/miui/maml/elements/VariableArrayElement;->access$000(Lcom/miui/maml/elements/VariableArrayElement;)Ljava/util/ArrayList;

    .line 38
    move-result-object v1

    .line 41
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 42
    move-result-object v1

    .line 45
    check-cast v1, Lcom/miui/maml/elements/VariableArrayElement$Item;

    .line 46
    iget v2, p0, Lcom/miui/maml/elements/VariableArrayElement$Var;->mIndex:I

    .line 48
    if-eq v2, v0, :cond_3

    .line 50
    iput v0, p0, Lcom/miui/maml/elements/VariableArrayElement$Var;->mIndex:I

    .line 52
    invoke-virtual {v1}, Lcom/miui/maml/elements/VariableArrayElement$Item;->isExpression()Z

    .line 54
    move-result v0

    .line 57
    iput-boolean v0, p0, Lcom/miui/maml/elements/VariableArrayElement$Var;->mCurrentItemIsExpression:Z

    .line 58
    :cond_3
    iget-object v0, p0, Lcom/miui/maml/elements/VariableArrayElement$Var;->this$0:Lcom/miui/maml/elements/VariableArrayElement;

    .line 60
    iget-object v0, v0, Lcom/miui/maml/elements/VariableArrayElement;->mType:Lcom/miui/maml/elements/VariableArrayElement$Type;

    .line 62
    sget-object v2, Lcom/miui/maml/elements/VariableArrayElement$Type;->STRING:Lcom/miui/maml/elements/VariableArrayElement$Type;

    .line 64
    if-ne v0, v2, :cond_4

    .line 66
    iget-object p0, p0, Lcom/miui/maml/elements/VariableArrayElement$Var;->mVar:Lcom/miui/maml/data/IndexedVariable;

    .line 68
    invoke-virtual {v1}, Lcom/miui/maml/elements/VariableArrayElement$Item;->evaluateStr()Ljava/lang/String;

    .line 70
    move-result-object v0

    .line 73
    invoke-virtual {p0, v0}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 74
    goto :goto_0

    .line 77
    :cond_4
    sget-object v2, Lcom/miui/maml/elements/VariableArrayElement$Type;->DOUBLE:Lcom/miui/maml/elements/VariableArrayElement$Type;

    .line 78
    if-ne v0, v2, :cond_5

    .line 80
    iget-object p0, p0, Lcom/miui/maml/elements/VariableArrayElement$Var;->mVar:Lcom/miui/maml/data/IndexedVariable;

    .line 82
    invoke-virtual {v1}, Lcom/miui/maml/elements/VariableArrayElement$Item;->evaluate()Ljava/lang/Double;

    .line 84
    move-result-object v0

    .line 87
    invoke-virtual {p0, v0}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 88
    :cond_5
    :goto_0
    return-void

    .line 91
    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/miui/maml/elements/VariableArrayElement$Var;->this$0:Lcom/miui/maml/elements/VariableArrayElement;

    .line 92
    iget-object v0, v0, Lcom/miui/maml/elements/VariableArrayElement;->mType:Lcom/miui/maml/elements/VariableArrayElement$Type;

    .line 94
    sget-object v1, Lcom/miui/maml/elements/VariableArrayElement$Type;->STRING:Lcom/miui/maml/elements/VariableArrayElement$Type;

    .line 96
    if-ne v0, v1, :cond_7

    .line 98
    iget-object p0, p0, Lcom/miui/maml/elements/VariableArrayElement$Var;->mVar:Lcom/miui/maml/data/IndexedVariable;

    .line 100
    const/4 v0, 0x0

    .line 102
    invoke-virtual {p0, v0}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 103
    goto :goto_2

    .line 106
    :cond_7
    sget-object v1, Lcom/miui/maml/elements/VariableArrayElement$Type;->DOUBLE:Lcom/miui/maml/elements/VariableArrayElement$Type;

    .line 107
    if-ne v0, v1, :cond_8

    .line 109
    iget-object p0, p0, Lcom/miui/maml/elements/VariableArrayElement$Var;->mVar:Lcom/miui/maml/data/IndexedVariable;

    .line 111
    const-wide/16 v0, 0x0

    .line 113
    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 115
    :cond_8
    :goto_2
    return-void
    .line 118
.end method


# virtual methods
.method public init()V
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/miui/maml/elements/VariableArrayElement$Var;->mIndex:I

    .line 3
    invoke-direct {p0}, Lcom/miui/maml/elements/VariableArrayElement$Var;->update()V

    .line 5
    return-void
    .line 8
.end method

.method public tick()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/elements/VariableArrayElement$Var;->mConst:Z

    .line 2
    if-nez v0, :cond_0

    .line 4
    invoke-direct {p0}, Lcom/miui/maml/elements/VariableArrayElement$Var;->update()V

    .line 6
    :cond_0
    return-void
    .line 9
.end method
