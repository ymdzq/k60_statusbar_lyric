.class Lcom/miui/maml/data/Expression$UnaryExpression;
.super Lcom/miui/maml/data/Expression;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field private mExp:Lcom/miui/maml/data/Expression;

.field private mOpe:Lcom/miui/maml/data/Expression$Ope;


# direct methods
.method public constructor <init>(Lcom/miui/maml/data/Expression;Lcom/miui/maml/data/Expression$Ope;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/miui/maml/data/Expression;-><init>()V

    .line 2
    sget-object v0, Lcom/miui/maml/data/Expression$Ope;->INVALID:Lcom/miui/maml/data/Expression$Ope;

    .line 5
    iput-object p1, p0, Lcom/miui/maml/data/Expression$UnaryExpression;->mExp:Lcom/miui/maml/data/Expression;

    .line 7
    iput-object p2, p0, Lcom/miui/maml/data/Expression$UnaryExpression;->mOpe:Lcom/miui/maml/data/Expression$Ope;

    .line 9
    if-ne p2, v0, :cond_0

    .line 11
    new-instance p0, Ljava/lang/StringBuilder;

    .line 13
    const-string p1, "UnaryExpression: invalid operator:"

    .line 15
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    move-result-object p0

    .line 26
    const-string p1, "Expression"

    .line 27
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    :cond_0
    return-void
    .line 32
.end method


# virtual methods
.method public accept(Lcom/miui/maml/data/ExpressionVisitor;)V
    .locals 0

    .line 1
    invoke-virtual {p1, p0}, Lcom/miui/maml/data/ExpressionVisitor;->visit(Lcom/miui/maml/data/Expression;)V

    .line 2
    iget-object p0, p0, Lcom/miui/maml/data/Expression$UnaryExpression;->mExp:Lcom/miui/maml/data/Expression;

    .line 5
    invoke-virtual {p0, p1}, Lcom/miui/maml/data/Expression;->accept(Lcom/miui/maml/data/ExpressionVisitor;)V

    .line 7
    return-void
    .line 10
.end method

.method public evaluate()D
    .locals 4

    .line 1
    sget-object v0, Lcom/miui/maml/data/Expression$1;->$SwitchMap$com$miui$maml$data$Expression$Ope:[I

    .line 2
    iget-object v1, p0, Lcom/miui/maml/data/Expression$UnaryExpression;->mOpe:Lcom/miui/maml/data/Expression$Ope;

    .line 4
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 6
    move-result v1

    .line 9
    aget v0, v0, v1

    .line 10
    const/4 v1, 0x1

    .line 12
    const-wide/16 v2, 0x0

    .line 13
    if-eq v0, v1, :cond_3

    .line 15
    const/4 v1, 0x2

    .line 17
    if-eq v0, v1, :cond_1

    .line 18
    const/4 v1, 0x3

    .line 20
    if-eq v0, v1, :cond_0

    .line 21
    const-string v0, "Expression"

    .line 23
    const-string v1, "fail to evalute UnaryExpression, invalid operator"

    .line 25
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    iget-object p0, p0, Lcom/miui/maml/data/Expression$UnaryExpression;->mExp:Lcom/miui/maml/data/Expression;

    .line 30
    invoke-virtual {p0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 32
    move-result-wide v0

    .line 35
    return-wide v0

    .line 36
    :cond_0
    iget-object p0, p0, Lcom/miui/maml/data/Expression$UnaryExpression;->mExp:Lcom/miui/maml/data/Expression;

    .line 37
    invoke-virtual {p0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 39
    move-result-wide v0

    .line 42
    double-to-int p0, v0

    .line 43
    not-int p0, p0

    .line 44
    int-to-double v0, p0

    .line 45
    return-wide v0

    .line 46
    :cond_1
    iget-object p0, p0, Lcom/miui/maml/data/Expression$UnaryExpression;->mExp:Lcom/miui/maml/data/Expression;

    .line 47
    invoke-virtual {p0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 49
    move-result-wide v0

    .line 52
    cmpg-double p0, v0, v2

    .line 53
    if-gtz p0, :cond_2

    .line 55
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 57
    :cond_2
    return-wide v2

    .line 59
    :cond_3
    iget-object p0, p0, Lcom/miui/maml/data/Expression$UnaryExpression;->mExp:Lcom/miui/maml/data/Expression;

    .line 60
    invoke-virtual {p0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 62
    move-result-wide v0

    .line 65
    sub-double/2addr v2, v0

    .line 66
    return-wide v2
    .line 67
.end method

.method public evaluateStr()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/data/Expression$UnaryExpression;->evaluate()D

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
    iget-object p0, p0, Lcom/miui/maml/data/Expression$UnaryExpression;->mExp:Lcom/miui/maml/data/Expression;

    .line 2
    invoke-virtual {p0}, Lcom/miui/maml/data/Expression;->isNull()Z

    .line 4
    move-result p0

    .line 7
    return p0
    .line 8
.end method
