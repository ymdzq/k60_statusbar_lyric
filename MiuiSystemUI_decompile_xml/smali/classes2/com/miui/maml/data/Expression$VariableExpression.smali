.class abstract Lcom/miui/maml/data/Expression$VariableExpression;
.super Lcom/miui/maml/data/Expression;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field protected mIndexedVar:Lcom/miui/maml/data/IndexedVariable;

.field protected mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/miui/maml/data/Variables;Ljava/lang/String;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/miui/maml/data/Expression;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/miui/maml/data/Expression$VariableExpression;->mName:Ljava/lang/String;

    .line 5
    new-instance v0, Lcom/miui/maml/data/IndexedVariable;

    .line 7
    invoke-direct {v0, p2, p1, p3}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 9
    iput-object v0, p0, Lcom/miui/maml/data/Expression$VariableExpression;->mIndexedVar:Lcom/miui/maml/data/IndexedVariable;

    .line 12
    return-void
    .line 14
.end method


# virtual methods
.method public getIndex()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/data/Expression$VariableExpression;->mIndexedVar:Lcom/miui/maml/data/IndexedVariable;

    .line 2
    invoke-virtual {p0}, Lcom/miui/maml/data/IndexedVariable;->getIndex()I

    .line 4
    move-result p0

    .line 7
    return p0
    .line 8
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/data/Expression$VariableExpression;->mName:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public getVersion()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/data/Expression$VariableExpression;->mIndexedVar:Lcom/miui/maml/data/IndexedVariable;

    .line 2
    invoke-virtual {p0}, Lcom/miui/maml/data/IndexedVariable;->getVersion()I

    .line 4
    move-result p0

    .line 7
    return p0
    .line 8
.end method
