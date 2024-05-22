.class public Lcom/miui/maml/folme/PropertyWrapper;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field private mDefaultValue:D

.field private mExpression:Lcom/miui/maml/data/Expression;

.field private mInFolmeMode:Z

.field private mValue:Lcom/miui/maml/data/IndexedVariable;

.field private mVelocity:Lcom/miui/maml/data/IndexedVariable;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Lcom/miui/maml/data/Expression;ZD)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p4, p0, Lcom/miui/maml/folme/PropertyWrapper;->mInFolmeMode:Z

    .line 5
    if-eqz p4, :cond_0

    .line 7
    new-instance p4, Lcom/miui/maml/data/IndexedVariable;

    .line 9
    const/4 v0, 0x1

    .line 11
    invoke-direct {p4, p1, p2, v0}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 12
    iput-object p4, p0, Lcom/miui/maml/folme/PropertyWrapper;->mValue:Lcom/miui/maml/data/IndexedVariable;

    .line 15
    new-instance p4, Lcom/miui/maml/data/IndexedVariable;

    .line 17
    const-string v1, "_v"

    .line 19
    invoke-static {p1, v1}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 21
    move-result-object p1

    .line 24
    invoke-direct {p4, p1, p2, v0}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 25
    iput-object p4, p0, Lcom/miui/maml/folme/PropertyWrapper;->mVelocity:Lcom/miui/maml/data/IndexedVariable;

    .line 28
    :cond_0
    iput-object p3, p0, Lcom/miui/maml/folme/PropertyWrapper;->mExpression:Lcom/miui/maml/data/Expression;

    .line 30
    iput-wide p5, p0, Lcom/miui/maml/folme/PropertyWrapper;->mDefaultValue:D

    .line 32
    return-void
    .line 34
.end method


# virtual methods
.method public getValue()D
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/folme/PropertyWrapper;->mInFolmeMode:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget-object p0, p0, Lcom/miui/maml/folme/PropertyWrapper;->mValue:Lcom/miui/maml/data/IndexedVariable;

    .line 6
    invoke-virtual {p0}, Lcom/miui/maml/data/IndexedVariable;->getDouble()D

    .line 8
    move-result-wide v0

    .line 11
    return-wide v0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/folme/PropertyWrapper;->mExpression:Lcom/miui/maml/data/Expression;

    .line 13
    if-eqz v0, :cond_1

    .line 15
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 17
    move-result-wide v0

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    iget-wide v0, p0, Lcom/miui/maml/folme/PropertyWrapper;->mDefaultValue:D

    .line 22
    :goto_0
    return-wide v0
    .line 24
.end method

.method public getVelocity()D
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/folme/PropertyWrapper;->mInFolmeMode:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget-object p0, p0, Lcom/miui/maml/folme/PropertyWrapper;->mVelocity:Lcom/miui/maml/data/IndexedVariable;

    .line 6
    invoke-virtual {p0}, Lcom/miui/maml/data/IndexedVariable;->getDouble()D

    .line 8
    move-result-wide v0

    .line 11
    return-wide v0

    .line 12
    :cond_0
    const-wide/16 v0, 0x0

    .line 13
    return-wide v0
    .line 15
.end method

.method public init()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/folme/PropertyWrapper;->mInFolmeMode:Z

    .line 2
    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/miui/maml/folme/PropertyWrapper;->mValue:Lcom/miui/maml/data/IndexedVariable;

    .line 6
    iget-object v1, p0, Lcom/miui/maml/folme/PropertyWrapper;->mExpression:Lcom/miui/maml/data/Expression;

    .line 8
    if-eqz v1, :cond_0

    .line 10
    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 12
    move-result-wide v1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-wide v1, p0, Lcom/miui/maml/folme/PropertyWrapper;->mDefaultValue:D

    .line 17
    :goto_0
    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 19
    :cond_1
    return-void
    .line 22
.end method

.method public setValue(D)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/folme/PropertyWrapper;->mInFolmeMode:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget-object p0, p0, Lcom/miui/maml/folme/PropertyWrapper;->mValue:Lcom/miui/maml/data/IndexedVariable;

    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 8
    goto :goto_0

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/folme/PropertyWrapper;->mExpression:Lcom/miui/maml/data/Expression;

    .line 12
    if-eqz v0, :cond_1

    .line 14
    instance-of v1, v0, Lcom/miui/maml/data/Expression$NumberExpression;

    .line 16
    if-eqz v1, :cond_1

    .line 18
    check-cast v0, Lcom/miui/maml/data/Expression$NumberExpression;

    .line 20
    invoke-virtual {v0, p1, p2}, Lcom/miui/maml/data/Expression$NumberExpression;->setValue(D)V

    .line 22
    goto :goto_0

    .line 25
    :cond_1
    new-instance v0, Lcom/miui/maml/data/Expression$NumberExpression;

    .line 26
    invoke-direct {v0, p1, p2}, Lcom/miui/maml/data/Expression$NumberExpression;-><init>(D)V

    .line 28
    iput-object v0, p0, Lcom/miui/maml/folme/PropertyWrapper;->mExpression:Lcom/miui/maml/data/Expression;

    .line 31
    :goto_0
    return-void
    .line 33
.end method

.method public setVelocity(D)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/folme/PropertyWrapper;->mInFolmeMode:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget-object p0, p0, Lcom/miui/maml/folme/PropertyWrapper;->mVelocity:Lcom/miui/maml/data/IndexedVariable;

    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 8
    :cond_0
    return-void
    .line 11
.end method
