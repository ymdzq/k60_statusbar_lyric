.class Lcom/miui/maml/data/Variables$DoubleInfo;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field mValue:D

.field mVarType:I

.field mVersion:I


# direct methods
.method public constructor <init>(DII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/miui/maml/data/Variables$DoubleInfo;->mValue:D

    .line 5
    iput p3, p0, Lcom/miui/maml/data/Variables$DoubleInfo;->mVersion:I

    .line 7
    const/4 p1, 0x1

    .line 9
    if-ne p4, p1, :cond_0

    .line 10
    goto :goto_0

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    :goto_0
    iput p1, p0, Lcom/miui/maml/data/Variables$DoubleInfo;->mVarType:I

    .line 14
    return-void
    .line 16
.end method


# virtual methods
.method public setValue(D)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/maml/data/Variables$DoubleInfo;->setValue(DI)V

    return-void
.end method

.method public setValue(DI)V
    .locals 1

    .line 2
    iget v0, p0, Lcom/miui/maml/data/Variables$DoubleInfo;->mVarType:I

    if-le p3, v0, :cond_0

    .line 3
    iput p3, p0, Lcom/miui/maml/data/Variables$DoubleInfo;->mVarType:I

    .line 4
    :cond_0
    iget v0, p0, Lcom/miui/maml/data/Variables$DoubleInfo;->mVarType:I

    if-ne p3, v0, :cond_1

    .line 5
    iput-wide p1, p0, Lcom/miui/maml/data/Variables$DoubleInfo;->mValue:D

    .line 6
    iget p1, p0, Lcom/miui/maml/data/Variables$DoubleInfo;->mVersion:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/miui/maml/data/Variables$DoubleInfo;->mVersion:I

    :cond_1
    return-void
.end method
