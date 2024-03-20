.class Lcom/miui/maml/data/BaseFunctions$NullObjFunction;
.super Lcom/miui/maml/data/Expression$FunctionImpl;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field private mObjName:Ljava/lang/String;

.field private mVarIndex:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Lcom/miui/maml/data/Expression$FunctionImpl;-><init>(I)V

    .line 3
    const/4 v0, -0x1

    .line 6
    iput v0, p0, Lcom/miui/maml/data/BaseFunctions$NullObjFunction;->mVarIndex:I

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public evaluate([Lcom/miui/maml/data/Expression;Lcom/miui/maml/data/Variables;)D
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    aget-object p1, p1, v0

    .line 3
    invoke-virtual {p1}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    .line 5
    move-result-object p1

    .line 8
    iget-object v0, p0, Lcom/miui/maml/data/BaseFunctions$NullObjFunction;->mObjName:Ljava/lang/String;

    .line 9
    const/4 v1, -0x1

    .line 11
    if-eq p1, v0, :cond_2

    .line 12
    iput-object p1, p0, Lcom/miui/maml/data/BaseFunctions$NullObjFunction;->mObjName:Ljava/lang/String;

    .line 14
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 16
    move-result p1

    .line 19
    if-nez p1, :cond_1

    .line 20
    iget-object p1, p0, Lcom/miui/maml/data/BaseFunctions$NullObjFunction;->mObjName:Ljava/lang/String;

    .line 22
    invoke-virtual {p2, p1}, Lcom/miui/maml/data/Variables;->existsObj(Ljava/lang/String;)Z

    .line 24
    move-result p1

    .line 27
    if-nez p1, :cond_0

    .line 28
    goto :goto_0

    .line 30
    :cond_0
    iget-object p1, p0, Lcom/miui/maml/data/BaseFunctions$NullObjFunction;->mObjName:Ljava/lang/String;

    .line 31
    invoke-virtual {p2, p1}, Lcom/miui/maml/data/Variables;->registerVariable(Ljava/lang/String;)I

    .line 33
    move-result p1

    .line 36
    iput p1, p0, Lcom/miui/maml/data/BaseFunctions$NullObjFunction;->mVarIndex:I

    .line 37
    goto :goto_1

    .line 39
    :cond_1
    :goto_0
    iput v1, p0, Lcom/miui/maml/data/BaseFunctions$NullObjFunction;->mVarIndex:I

    .line 40
    :cond_2
    :goto_1
    iget p0, p0, Lcom/miui/maml/data/BaseFunctions$NullObjFunction;->mVarIndex:I

    .line 42
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 44
    if-ne p0, v1, :cond_3

    .line 46
    return-wide v2

    .line 48
    :cond_3
    invoke-virtual {p2, p0}, Lcom/miui/maml/data/Variables;->get(I)Ljava/lang/Object;

    .line 49
    move-result-object p0

    .line 52
    if-nez p0, :cond_4

    .line 53
    goto :goto_2

    .line 55
    :cond_4
    const-wide/16 v2, 0x0

    .line 56
    :goto_2
    return-wide v2
    .line 58
.end method

.method public evaluateStr([Lcom/miui/maml/data/Expression;Lcom/miui/maml/data/Variables;)Ljava/lang/String;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
    .line 3
.end method

.method public reset()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/miui/maml/data/BaseFunctions$NullObjFunction;->mObjName:Ljava/lang/String;

    .line 3
    return-void
    .line 5
.end method
