.class public Lcom/miui/maml/data/IndexedVariable;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field protected mIndex:I

.field private mIsNumber:Z

.field protected mVars:Lcom/miui/maml/data/Variables;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p3, p0, Lcom/miui/maml/data/IndexedVariable;->mIsNumber:Z

    .line 5
    if-eqz p3, :cond_0

    .line 7
    invoke-virtual {p2, p1}, Lcom/miui/maml/data/Variables;->registerDoubleVariable(Ljava/lang/String;)I

    .line 9
    move-result p1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {p2, p1}, Lcom/miui/maml/data/Variables;->registerVariable(Ljava/lang/String;)I

    .line 14
    move-result p1

    .line 17
    :goto_0
    iput p1, p0, Lcom/miui/maml/data/IndexedVariable;->mIndex:I

    .line 18
    iput-object p2, p0, Lcom/miui/maml/data/IndexedVariable;->mVars:Lcom/miui/maml/data/Variables;

    .line 20
    return-void
    .line 22
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/maml/data/IndexedVariable;->mVars:Lcom/miui/maml/data/Variables;

    .line 2
    iget p0, p0, Lcom/miui/maml/data/IndexedVariable;->mIndex:I

    .line 4
    invoke-virtual {v0, p0}, Lcom/miui/maml/data/Variables;->get(I)Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 9
    return-object p0
    .line 10
.end method

.method public final getArr(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/maml/data/IndexedVariable;->mVars:Lcom/miui/maml/data/Variables;

    .line 2
    iget p0, p0, Lcom/miui/maml/data/IndexedVariable;->mIndex:I

    .line 4
    invoke-virtual {v0, p0, p1}, Lcom/miui/maml/data/Variables;->getArr(II)Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 9
    return-object p0
    .line 10
.end method

.method public final getArrDouble(I)D
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/maml/data/IndexedVariable;->mVars:Lcom/miui/maml/data/Variables;

    .line 2
    iget p0, p0, Lcom/miui/maml/data/IndexedVariable;->mIndex:I

    .line 4
    invoke-virtual {v0, p0, p1}, Lcom/miui/maml/data/Variables;->getArrDouble(II)D

    .line 6
    move-result-wide p0

    .line 9
    return-wide p0
    .line 10
.end method

.method public final getArrString(I)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/maml/data/IndexedVariable;->mVars:Lcom/miui/maml/data/Variables;

    .line 2
    iget p0, p0, Lcom/miui/maml/data/IndexedVariable;->mIndex:I

    .line 4
    invoke-virtual {v0, p0, p1}, Lcom/miui/maml/data/Variables;->getArrString(II)Ljava/lang/String;

    .line 6
    move-result-object p0

    .line 9
    return-object p0
    .line 10
.end method

.method public final getDouble()D
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/data/IndexedVariable;->mVars:Lcom/miui/maml/data/Variables;

    .line 2
    iget p0, p0, Lcom/miui/maml/data/IndexedVariable;->mIndex:I

    .line 4
    invoke-virtual {v0, p0}, Lcom/miui/maml/data/Variables;->getDouble(I)D

    .line 6
    move-result-wide v0

    .line 9
    return-wide v0
    .line 10
.end method

.method public final getIndex()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/maml/data/IndexedVariable;->mIndex:I

    .line 2
    return p0
    .line 4
.end method

.method public final getString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/maml/data/IndexedVariable;->mVars:Lcom/miui/maml/data/Variables;

    .line 2
    iget p0, p0, Lcom/miui/maml/data/IndexedVariable;->mIndex:I

    .line 4
    invoke-virtual {v0, p0}, Lcom/miui/maml/data/Variables;->getString(I)Ljava/lang/String;

    .line 6
    move-result-object p0

    .line 9
    return-object p0
    .line 10
.end method

.method public final getVariables()Lcom/miui/maml/data/Variables;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/data/IndexedVariable;->mVars:Lcom/miui/maml/data/Variables;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getVersion()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/data/IndexedVariable;->mVars:Lcom/miui/maml/data/Variables;

    .line 2
    iget v1, p0, Lcom/miui/maml/data/IndexedVariable;->mIndex:I

    .line 4
    iget-boolean p0, p0, Lcom/miui/maml/data/IndexedVariable;->mIsNumber:Z

    .line 6
    invoke-virtual {v0, v1, p0}, Lcom/miui/maml/data/Variables;->getVer(IZ)I

    .line 8
    move-result p0

    .line 11
    return p0
    .line 12
.end method

.method public final isNull()Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/data/IndexedVariable;->mIsNumber:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/maml/data/IndexedVariable;->mVars:Lcom/miui/maml/data/Variables;

    iget p0, p0, Lcom/miui/maml/data/IndexedVariable;->mIndex:I

    invoke-virtual {v0, p0}, Lcom/miui/maml/data/Variables;->existsDouble(I)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/maml/data/IndexedVariable;->mVars:Lcom/miui/maml/data/Variables;

    iget p0, p0, Lcom/miui/maml/data/IndexedVariable;->mIndex:I

    invoke-virtual {v0, p0}, Lcom/miui/maml/data/Variables;->get(I)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    return v1
.end method

.method public final isNull(I)Z
    .locals 3

    .line 2
    iget-boolean v0, p0, Lcom/miui/maml/data/IndexedVariable;->mIsNumber:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/maml/data/IndexedVariable;->mVars:Lcom/miui/maml/data/Variables;

    iget p0, p0, Lcom/miui/maml/data/IndexedVariable;->mIndex:I

    invoke-virtual {v0, p0, p1}, Lcom/miui/maml/data/Variables;->existsArrItem(II)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/maml/data/IndexedVariable;->mVars:Lcom/miui/maml/data/Variables;

    iget p0, p0, Lcom/miui/maml/data/IndexedVariable;->mIndex:I

    invoke-virtual {v0, p0, p1}, Lcom/miui/maml/data/Variables;->getArr(II)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    return v1
.end method

.method public final set(D)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/maml/data/IndexedVariable;->mVars:Lcom/miui/maml/data/Variables;

    iget p0, p0, Lcom/miui/maml/data/IndexedVariable;->mIndex:I

    invoke-virtual {v0, p0, p1, p2}, Lcom/miui/maml/data/Variables;->put(ID)V

    return-void
.end method

.method public final set(Ljava/lang/Object;)Z
    .locals 1

    .line 2
    iget-boolean v0, p0, Lcom/miui/maml/data/IndexedVariable;->mIsNumber:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/miui/maml/data/IndexedVariable;->mVars:Lcom/miui/maml/data/Variables;

    iget p0, p0, Lcom/miui/maml/data/IndexedVariable;->mIndex:I

    invoke-virtual {v0, p0, p1}, Lcom/miui/maml/data/Variables;->putDouble(ILjava/lang/Object;)Z

    move-result p0

    return p0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/data/IndexedVariable;->mVars:Lcom/miui/maml/data/Variables;

    iget p0, p0, Lcom/miui/maml/data/IndexedVariable;->mIndex:I

    invoke-virtual {v0, p0, p1}, Lcom/miui/maml/data/Variables;->put(ILjava/lang/Object;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final setArr(ID)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/maml/data/IndexedVariable;->mVars:Lcom/miui/maml/data/Variables;

    iget p0, p0, Lcom/miui/maml/data/IndexedVariable;->mIndex:I

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/miui/maml/data/Variables;->putArr(IID)Z

    move-result p0

    return p0
.end method

.method public final setArr(ILjava/lang/Object;)Z
    .locals 1

    .line 2
    iget-boolean v0, p0, Lcom/miui/maml/data/IndexedVariable;->mIsNumber:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/maml/data/IndexedVariable;->mVars:Lcom/miui/maml/data/Variables;

    iget p0, p0, Lcom/miui/maml/data/IndexedVariable;->mIndex:I

    invoke-virtual {v0, p0, p1, p2}, Lcom/miui/maml/data/Variables;->putArrDouble(IILjava/lang/Object;)Z

    move-result p0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/maml/data/IndexedVariable;->mVars:Lcom/miui/maml/data/Variables;

    iget p0, p0, Lcom/miui/maml/data/IndexedVariable;->mIndex:I

    invoke-virtual {v0, p0, p1, p2}, Lcom/miui/maml/data/Variables;->putArr(IILjava/lang/Object;)Z

    move-result p0

    :goto_0
    return p0
.end method
