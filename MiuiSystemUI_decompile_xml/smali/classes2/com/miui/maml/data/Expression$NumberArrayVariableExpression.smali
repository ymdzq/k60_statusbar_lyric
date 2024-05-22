.class Lcom/miui/maml/data/Expression$NumberArrayVariableExpression;
.super Lcom/miui/maml/data/Expression$ArrayVariableExpression;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# direct methods
.method public constructor <init>(Lcom/miui/maml/data/Variables;Ljava/lang/String;Lcom/miui/maml/data/Expression;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/maml/data/Expression$ArrayVariableExpression;-><init>(Lcom/miui/maml/data/Variables;Ljava/lang/String;Lcom/miui/maml/data/Expression;)V

    .line 2
    return-void
    .line 5
.end method


# virtual methods
.method public evaluate()D
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/data/Expression$VariableExpression;->mIndexedVar:Lcom/miui/maml/data/IndexedVariable;

    .line 2
    iget-object p0, p0, Lcom/miui/maml/data/Expression$ArrayVariableExpression;->mIndexExp:Lcom/miui/maml/data/Expression;

    .line 4
    invoke-virtual {p0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 6
    move-result-wide v1

    .line 9
    double-to-int p0, v1

    .line 10
    invoke-virtual {v0, p0}, Lcom/miui/maml/data/IndexedVariable;->getArrDouble(I)D

    .line 11
    move-result-wide v0

    .line 14
    return-wide v0
    .line 15
.end method

.method public evaluateStr()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/data/Expression$NumberArrayVariableExpression;->evaluate()D

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
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/data/Expression$VariableExpression;->mIndexedVar:Lcom/miui/maml/data/IndexedVariable;

    .line 2
    iget-object p0, p0, Lcom/miui/maml/data/Expression$ArrayVariableExpression;->mIndexExp:Lcom/miui/maml/data/Expression;

    .line 4
    invoke-virtual {p0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 6
    move-result-wide v1

    .line 9
    double-to-int p0, v1

    .line 10
    invoke-virtual {v0, p0}, Lcom/miui/maml/data/IndexedVariable;->isNull(I)Z

    .line 11
    move-result p0

    .line 14
    return p0
    .line 15
.end method
