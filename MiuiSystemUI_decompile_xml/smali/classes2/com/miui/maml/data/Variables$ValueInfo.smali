.class Lcom/miui/maml/data/Variables$ValueInfo;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field mValue:Ljava/lang/Object;

.field mVarType:I

.field mVersion:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/miui/maml/data/Variables$ValueInfo;->mValue:Ljava/lang/Object;

    .line 5
    iput p2, p0, Lcom/miui/maml/data/Variables$ValueInfo;->mVersion:I

    .line 7
    const/4 p1, 0x1

    .line 9
    if-ne p3, p1, :cond_0

    .line 10
    goto :goto_0

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    :goto_0
    iput p1, p0, Lcom/miui/maml/data/Variables$ValueInfo;->mVarType:I

    .line 14
    return-void
    .line 16
.end method


# virtual methods
.method public reset()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/miui/maml/data/Variables$ValueInfo;->mValue:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, [D

    .line 4
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_0

    .line 7
    check-cast v0, [D

    .line 9
    :goto_0
    array-length p0, v0

    .line 11
    if-ge v2, p0, :cond_4

    .line 12
    const-wide/16 v3, 0x0

    .line 14
    aput-wide v3, v0, v2

    .line 16
    add-int/lit8 v2, v2, 0x1

    .line 18
    goto :goto_0

    .line 20
    :cond_0
    instance-of v1, v0, [F

    .line 21
    if-eqz v1, :cond_1

    .line 23
    check-cast v0, [F

    .line 25
    :goto_1
    array-length p0, v0

    .line 27
    if-ge v2, p0, :cond_4

    .line 28
    const/4 p0, 0x0

    .line 30
    aput p0, v0, v2

    .line 31
    add-int/lit8 v2, v2, 0x1

    .line 33
    goto :goto_1

    .line 35
    :cond_1
    instance-of v1, v0, [I

    .line 36
    if-eqz v1, :cond_2

    .line 38
    check-cast v0, [I

    .line 40
    move p0, v2

    .line 42
    :goto_2
    array-length v1, v0

    .line 43
    if-ge p0, v1, :cond_4

    .line 44
    aput v2, v0, p0

    .line 46
    add-int/lit8 p0, p0, 0x1

    .line 48
    goto :goto_2

    .line 50
    :cond_2
    instance-of v1, v0, [Ljava/lang/Object;

    .line 51
    const/4 v3, 0x0

    .line 53
    if-eqz v1, :cond_3

    .line 54
    check-cast v0, [Ljava/lang/Object;

    .line 56
    :goto_3
    array-length p0, v0

    .line 58
    if-ge v2, p0, :cond_4

    .line 59
    aput-object v3, v0, v2

    .line 61
    add-int/lit8 v2, v2, 0x1

    .line 63
    goto :goto_3

    .line 65
    :cond_3
    invoke-virtual {p0, v3}, Lcom/miui/maml/data/Variables$ValueInfo;->setValue(Ljava/lang/Object;)V

    .line 66
    :cond_4
    return-void
    .line 69
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/miui/maml/data/Variables$ValueInfo;->setValue(Ljava/lang/Object;I)V

    return-void
.end method

.method public setValue(Ljava/lang/Object;I)V
    .locals 1

    .line 2
    iget v0, p0, Lcom/miui/maml/data/Variables$ValueInfo;->mVarType:I

    if-le p2, v0, :cond_0

    .line 3
    iput p2, p0, Lcom/miui/maml/data/Variables$ValueInfo;->mVarType:I

    .line 4
    :cond_0
    iget v0, p0, Lcom/miui/maml/data/Variables$ValueInfo;->mVarType:I

    if-ne p2, v0, :cond_1

    .line 5
    iput-object p1, p0, Lcom/miui/maml/data/Variables$ValueInfo;->mValue:Ljava/lang/Object;

    .line 6
    iget p1, p0, Lcom/miui/maml/data/Variables$ValueInfo;->mVersion:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/miui/maml/data/Variables$ValueInfo;->mVersion:I

    :cond_1
    return-void
.end method
