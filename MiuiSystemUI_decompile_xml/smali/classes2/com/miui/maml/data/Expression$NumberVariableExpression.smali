.class Lcom/miui/maml/data/Expression$NumberVariableExpression;
.super Lcom/miui/maml/data/Expression$VariableExpression;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# direct methods
.method public constructor <init>(Lcom/miui/maml/data/Variables;Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/maml/data/Expression$VariableExpression;-><init>(Lcom/miui/maml/data/Variables;Ljava/lang/String;Z)V

    .line 3
    return-void
    .line 6
.end method


# virtual methods
.method public evaluate()D
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/miui/maml/data/Expression$VariableExpression;->mIndexedVar:Lcom/miui/maml/data/IndexedVariable;

    .line 2
    invoke-virtual {p0}, Lcom/miui/maml/data/IndexedVariable;->getDouble()D

    .line 4
    move-result-wide v0

    .line 7
    return-wide v0
    .line 8
.end method

.method public evaluateStr()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/data/Expression$NumberVariableExpression;->evaluate()D

    .line 2
    move-result-wide v0

    .line 5
    invoke-static {v0, v1}, Lcom/miui/maml/util/Utils;->doubleToString(D)Ljava/lang/String;

    .line 6
    move-result-object p0

    .line 9
    return-object p0
    .line 10
.end method

.method public isNull()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/data/Expression$VariableExpression;->mIndexedVar:Lcom/miui/maml/data/IndexedVariable;

    .line 2
    invoke-virtual {p0}, Lcom/miui/maml/data/IndexedVariable;->isNull()Z

    .line 4
    move-result p0

    .line 7
    return p0
    .line 8
.end method
