.class public Lcom/miui/maml/data/Expression$FunctionExpression;
.super Lcom/miui/maml/data/Expression;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field protected static sFunMap:Ljava/util/HashMap;


# instance fields
.field private mFun:Lcom/miui/maml/data/Expression$FunctionImpl;

.field private mFunName:Ljava/lang/String;

.field private mParaExps:[Lcom/miui/maml/data/Expression;

.field private mVariables:Lcom/miui/maml/data/Variables;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    sput-object v0, Lcom/miui/maml/data/Expression$FunctionExpression;->sFunMap:Ljava/util/HashMap;

    .line 7
    invoke-static {}, Lcom/miui/maml/data/FunctionsLoader;->load()V

    .line 9
    return-void
    .line 12
.end method

.method public constructor <init>(Lcom/miui/maml/data/Variables;[Lcom/miui/maml/data/Expression;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/miui/maml/data/Expression;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/miui/maml/data/Expression$FunctionExpression;->mVariables:Lcom/miui/maml/data/Variables;

    .line 5
    iput-object p2, p0, Lcom/miui/maml/data/Expression$FunctionExpression;->mParaExps:[Lcom/miui/maml/data/Expression;

    .line 7
    iput-object p3, p0, Lcom/miui/maml/data/Expression$FunctionExpression;->mFunName:Ljava/lang/String;

    .line 9
    invoke-direct {p0, p3}, Lcom/miui/maml/data/Expression$FunctionExpression;->parseFunction(Ljava/lang/String;)V

    .line 11
    return-void
    .line 14
.end method

.method private parseFunction(Ljava/lang/String;)V
    .locals 6

    .line 1
    sget-object v0, Lcom/miui/maml/data/Expression$FunctionExpression;->sFunMap:Ljava/util/HashMap;

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, Lcom/miui/maml/data/Expression$FunctionImpl;

    .line 8
    const/4 v1, 0x1

    .line 10
    const/4 v2, 0x0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    move v3, v1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move v3, v2

    .line 16
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    .line 17
    const-string v5, "invalid function:"

    .line 19
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    move-result-object v4

    .line 30
    invoke-static {v3, v4}, Lcom/miui/maml/util/Utils;->asserts(ZLjava/lang/String;)V

    .line 31
    iput-object v0, p0, Lcom/miui/maml/data/Expression$FunctionExpression;->mFun:Lcom/miui/maml/data/Expression$FunctionImpl;

    .line 34
    iget-object p0, p0, Lcom/miui/maml/data/Expression$FunctionExpression;->mParaExps:[Lcom/miui/maml/data/Expression;

    .line 36
    array-length p0, p0

    .line 38
    iget v0, v0, Lcom/miui/maml/data/Expression$FunctionImpl;->params:I

    .line 39
    if-lt p0, v0, :cond_1

    .line 41
    goto :goto_1

    .line 43
    :cond_1
    move v1, v2

    .line 44
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 45
    const-string v0, "parameters count not matching for function: "

    .line 47
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    move-result-object p0

    .line 58
    invoke-static {v1, p0}, Lcom/miui/maml/util/Utils;->asserts(ZLjava/lang/String;)V

    .line 59
    return-void
    .line 62
.end method

.method public static registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/miui/maml/data/Expression$FunctionExpression;->sFunMap:Ljava/util/HashMap;

    .line 2
    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    move-result-object p1

    .line 7
    check-cast p1, Lcom/miui/maml/data/Expression$FunctionImpl;

    .line 8
    if-eqz p1, :cond_0

    .line 10
    const-string p1, "duplicated function name registation: "

    .line 12
    const-string v0, "Expression"

    .line 14
    invoke-static {p1, p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    :cond_0
    return-void
    .line 19
.end method

.method public static removeFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V
    .locals 0

    .line 1
    sget-object p1, Lcom/miui/maml/data/Expression$FunctionExpression;->sFunMap:Ljava/util/HashMap;

    .line 2
    invoke-virtual {p1, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    return-void
    .line 7
.end method

.method public static resetFunctions()V
    .locals 2

    .line 1
    sget-object v0, Lcom/miui/maml/data/Expression$FunctionExpression;->sFunMap:Ljava/util/HashMap;

    .line 2
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 4
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 8
    move-result-object v0

    .line 11
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    move-result-object v1

    .line 21
    check-cast v1, Ljava/util/Map$Entry;

    .line 22
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 24
    move-result-object v1

    .line 27
    check-cast v1, Lcom/miui/maml/data/Expression$FunctionImpl;

    .line 28
    invoke-virtual {v1}, Lcom/miui/maml/data/Expression$FunctionImpl;->reset()V

    .line 30
    goto :goto_0

    .line 33
    :cond_0
    return-void
    .line 34
.end method


# virtual methods
.method public accept(Lcom/miui/maml/data/ExpressionVisitor;)V
    .locals 3

    .line 1
    invoke-virtual {p1, p0}, Lcom/miui/maml/data/ExpressionVisitor;->visit(Lcom/miui/maml/data/Expression;)V

    .line 2
    const/4 v0, 0x0

    .line 5
    :goto_0
    iget-object v1, p0, Lcom/miui/maml/data/Expression$FunctionExpression;->mParaExps:[Lcom/miui/maml/data/Expression;

    .line 6
    array-length v2, v1

    .line 8
    if-ge v0, v2, :cond_0

    .line 9
    aget-object v1, v1, v0

    .line 11
    invoke-virtual {v1, p1}, Lcom/miui/maml/data/Expression;->accept(Lcom/miui/maml/data/ExpressionVisitor;)V

    .line 13
    add-int/lit8 v0, v0, 0x1

    .line 16
    goto :goto_0

    .line 18
    :cond_0
    return-void
    .line 19
.end method

.method public evaluate()D
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/data/Expression$FunctionExpression;->mFun:Lcom/miui/maml/data/Expression$FunctionImpl;

    .line 2
    iget-object v1, p0, Lcom/miui/maml/data/Expression$FunctionExpression;->mParaExps:[Lcom/miui/maml/data/Expression;

    .line 4
    iget-object p0, p0, Lcom/miui/maml/data/Expression$FunctionExpression;->mVariables:Lcom/miui/maml/data/Variables;

    .line 6
    invoke-virtual {v0, v1, p0}, Lcom/miui/maml/data/Expression$FunctionImpl;->evaluate([Lcom/miui/maml/data/Expression;Lcom/miui/maml/data/Variables;)D

    .line 8
    move-result-wide v0

    .line 11
    return-wide v0
    .line 12
.end method

.method public evaluateJsonArray()Lorg/json/JSONArray;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/data/Expression$FunctionExpression;->mFun:Lcom/miui/maml/data/Expression$FunctionImpl;

    .line 2
    iget-object v1, p0, Lcom/miui/maml/data/Expression$FunctionExpression;->mParaExps:[Lcom/miui/maml/data/Expression;

    .line 4
    iget-object p0, p0, Lcom/miui/maml/data/Expression$FunctionExpression;->mVariables:Lcom/miui/maml/data/Variables;

    .line 6
    invoke-virtual {v0, v1, p0}, Lcom/miui/maml/data/Expression$FunctionImpl;->evaluateJsonArray([Lcom/miui/maml/data/Expression;Lcom/miui/maml/data/Variables;)Lorg/json/JSONArray;

    .line 8
    move-result-object p0

    .line 11
    return-object p0
    .line 12
.end method

.method public evaluateJsonObject()Lorg/json/JSONObject;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/data/Expression$FunctionExpression;->mFun:Lcom/miui/maml/data/Expression$FunctionImpl;

    .line 2
    iget-object v1, p0, Lcom/miui/maml/data/Expression$FunctionExpression;->mParaExps:[Lcom/miui/maml/data/Expression;

    .line 4
    iget-object p0, p0, Lcom/miui/maml/data/Expression$FunctionExpression;->mVariables:Lcom/miui/maml/data/Variables;

    .line 6
    invoke-virtual {v0, v1, p0}, Lcom/miui/maml/data/Expression$FunctionImpl;->evaluateJsonObject([Lcom/miui/maml/data/Expression;Lcom/miui/maml/data/Variables;)Lorg/json/JSONObject;

    .line 8
    move-result-object p0

    .line 11
    return-object p0
    .line 12
.end method

.method public evaluateStr()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/data/Expression$FunctionExpression;->mFun:Lcom/miui/maml/data/Expression$FunctionImpl;

    .line 2
    iget-object v1, p0, Lcom/miui/maml/data/Expression$FunctionExpression;->mParaExps:[Lcom/miui/maml/data/Expression;

    .line 4
    iget-object p0, p0, Lcom/miui/maml/data/Expression$FunctionExpression;->mVariables:Lcom/miui/maml/data/Variables;

    .line 6
    invoke-virtual {v0, v1, p0}, Lcom/miui/maml/data/Expression$FunctionImpl;->evaluateStr([Lcom/miui/maml/data/Expression;Lcom/miui/maml/data/Variables;)Ljava/lang/String;

    .line 8
    move-result-object p0

    .line 11
    return-object p0
    .line 12
.end method

.method public getFunName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/data/Expression$FunctionExpression;->mFunName:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method
