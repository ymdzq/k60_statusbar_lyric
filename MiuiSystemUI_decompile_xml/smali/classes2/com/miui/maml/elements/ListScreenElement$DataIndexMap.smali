.class Lcom/miui/maml/elements/ListScreenElement$DataIndexMap;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public mData:[Ljava/lang/Object;

.field public mElementIndex:I

.field public mNeedRebind:Z


# direct methods
.method public constructor <init>([Ljava/lang/Object;)V
    .locals 1

    const/4 v0, -0x1

    .line 4
    invoke-direct {p0, p1, v0}, Lcom/miui/maml/elements/ListScreenElement$DataIndexMap;-><init>([Ljava/lang/Object;I)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/miui/maml/elements/ListScreenElement$DataIndexMap;->mData:[Ljava/lang/Object;

    .line 3
    iput p2, p0, Lcom/miui/maml/elements/ListScreenElement$DataIndexMap;->mElementIndex:I

    return-void
.end method


# virtual methods
.method public setData(ILjava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/ListScreenElement$DataIndexMap;->mData:[Ljava/lang/Object;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    array-length v1, v0

    .line 6
    if-le v1, p1, :cond_0

    .line 7
    aput-object p2, v0, p1

    .line 9
    const/4 p1, 0x1

    .line 11
    iput-boolean p1, p0, Lcom/miui/maml/elements/ListScreenElement$DataIndexMap;->mNeedRebind:Z

    .line 12
    :cond_0
    return-void
    .line 14
.end method
