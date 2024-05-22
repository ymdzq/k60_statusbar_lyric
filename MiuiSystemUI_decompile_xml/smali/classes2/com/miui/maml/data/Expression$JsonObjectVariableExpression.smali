.class Lcom/miui/maml/data/Expression$JsonObjectVariableExpression;
.super Lcom/miui/maml/data/Expression$VariableExpression;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


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

.method public evaluateJsonObject()Lorg/json/JSONObject;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/data/Expression$VariableExpression;->mIndexedVar:Lcom/miui/maml/data/IndexedVariable;

    .line 2
    invoke-virtual {v0}, Lcom/miui/maml/data/IndexedVariable;->get()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 7
    instance-of v1, v0, Lorg/json/JSONObject;

    .line 8
    if-eqz v1, :cond_0

    .line 10
    check-cast v0, Lorg/json/JSONObject;

    .line 12
    return-object v0

    .line 14
    :cond_0
    invoke-super {p0}, Lcom/miui/maml/data/Expression;->evaluateJsonObject()Lorg/json/JSONObject;

    .line 15
    move-result-object p0

    .line 18
    return-object p0
    .line 19
.end method

.method public evaluateStr()Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/data/Expression$JsonObjectVariableExpression;->evaluateJsonObject()Lorg/json/JSONObject;

    .line 2
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

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
