.class public Lcom/miui/maml/data/RootExpression$VarVersion;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field mIndex:I

.field private mIsNumber:Z

.field mVersion:I


# direct methods
.method public constructor <init>(IIZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/miui/maml/data/RootExpression$VarVersion;->mIndex:I

    .line 5
    iput p2, p0, Lcom/miui/maml/data/RootExpression$VarVersion;->mVersion:I

    .line 7
    iput-boolean p3, p0, Lcom/miui/maml/data/RootExpression$VarVersion;->mIsNumber:Z

    .line 9
    return-void
    .line 11
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/miui/maml/data/RootExpression$VarVersion;

    .line 2
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    check-cast p1, Lcom/miui/maml/data/RootExpression$VarVersion;

    .line 7
    iget-boolean v0, p1, Lcom/miui/maml/data/RootExpression$VarVersion;->mIsNumber:Z

    .line 9
    iget-boolean v2, p0, Lcom/miui/maml/data/RootExpression$VarVersion;->mIsNumber:Z

    .line 11
    if-ne v0, v2, :cond_0

    .line 13
    iget p1, p1, Lcom/miui/maml/data/RootExpression$VarVersion;->mIndex:I

    .line 15
    iget p0, p0, Lcom/miui/maml/data/RootExpression$VarVersion;->mIndex:I

    .line 17
    if-ne p1, p0, :cond_0

    .line 19
    const/4 v1, 0x1

    .line 21
    :cond_0
    return v1
    .line 22
.end method

.method public getVer(Lcom/miui/maml/data/Variables;)I
    .locals 1

    .line 1
    iget v0, p0, Lcom/miui/maml/data/RootExpression$VarVersion;->mIndex:I

    .line 2
    iget-boolean p0, p0, Lcom/miui/maml/data/RootExpression$VarVersion;->mIsNumber:Z

    .line 4
    invoke-virtual {p1, v0, p0}, Lcom/miui/maml/data/Variables;->getVer(IZ)I

    .line 6
    move-result p0

    .line 9
    return p0
    .line 10
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/data/RootExpression$VarVersion;->mIsNumber:Z

    .line 2
    iget p0, p0, Lcom/miui/maml/data/RootExpression$VarVersion;->mIndex:I

    .line 4
    if-eqz v0, :cond_0

    .line 6
    goto :goto_0

    .line 8
    :cond_0
    neg-int p0, p0

    .line 9
    add-int/lit8 p0, p0, -0x1

    .line 10
    :goto_0
    return p0
    .line 12
.end method
