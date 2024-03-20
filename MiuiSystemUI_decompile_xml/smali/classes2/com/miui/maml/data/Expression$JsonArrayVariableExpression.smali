.class Lcom/miui/maml/data/Expression$JsonArrayVariableExpression;
.super Lcom/miui/maml/data/Expression$VariableExpression;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# direct methods
.method public constructor <init>(Lcom/miui/maml/data/Variables;Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

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
    const-wide/16 v0, 0x0

    .line 2
    return-wide v0
    .line 4
.end method

.method public evaluateJsonArray()Lorg/json/JSONArray;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/data/Expression$VariableExpression;->mIndexedVar:Lcom/miui/maml/data/IndexedVariable;

    .line 2
    invoke-virtual {v0}, Lcom/miui/maml/data/IndexedVariable;->get()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 7
    instance-of v1, v0, Lorg/json/JSONArray;

    .line 8
    if-eqz v1, :cond_0

    .line 10
    check-cast v0, Lorg/json/JSONArray;

    .line 12
    return-object v0

    .line 14
    :cond_0
    invoke-super {p0}, Lcom/miui/maml/data/Expression;->evaluateJsonArray()Lorg/json/JSONArray;

    .line 15
    move-result-object p0

    .line 18
    return-object p0
    .line 19
.end method

.method public evaluateStr()Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/data/Expression$JsonArrayVariableExpression;->evaluateJsonArray()Lorg/json/JSONArray;

    .line 2
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    invoke-virtual {p0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    .line 8
    move-result-object p0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    :goto_0
    return-object p0
    .line 14
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
