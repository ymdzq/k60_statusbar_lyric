.class abstract Lcom/miui/maml/data/Variables$BaseVarBucket;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field private mIndices:Ljava/util/HashMap;

.field private mNextIndex:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/maml/data/Variables$BaseVarBucket;->mIndices:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/miui/maml/data/Variables$BaseVarBucket;->mNextIndex:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/miui/maml/data/Variables$1;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lcom/miui/maml/data/Variables$BaseVarBucket;-><init>()V

    return-void
.end method


# virtual methods
.method public exists(Ljava/lang/String;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/data/Variables$BaseVarBucket;->mIndices:Ljava/util/HashMap;

    .line 2
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 4
    move-result p0

    .line 7
    return p0
    .line 8
.end method

.method public abstract onAddItem(I)V
.end method

.method public declared-synchronized registerVariable(Ljava/lang/String;)I
    .locals 4

    .line 1
    const-string v0, "registerVariable: "

    .line 2
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/miui/maml/data/Variables$BaseVarBucket;->mIndices:Ljava/util/HashMap;

    .line 5
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    move-result-object v1

    .line 10
    check-cast v1, Ljava/lang/Integer;

    .line 11
    if-nez v1, :cond_0

    .line 13
    iget v1, p0, Lcom/miui/maml/data/Variables$BaseVarBucket;->mNextIndex:I

    .line 15
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    move-result-object v1

    .line 20
    iget-object v2, p0, Lcom/miui/maml/data/Variables$BaseVarBucket;->mIndices:Ljava/util/HashMap;

    .line 21
    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    iget v2, p0, Lcom/miui/maml/data/Variables$BaseVarBucket;->mNextIndex:I

    .line 26
    invoke-virtual {p0, v2}, Lcom/miui/maml/data/Variables$BaseVarBucket;->onAddItem(I)V

    .line 28
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 31
    move-result v2

    .line 34
    iget v3, p0, Lcom/miui/maml/data/Variables$BaseVarBucket;->mNextIndex:I

    .line 35
    if-ne v2, v3, :cond_1

    .line 37
    add-int/lit8 v3, v3, 0x1

    .line 39
    iput v3, p0, Lcom/miui/maml/data/Variables$BaseVarBucket;->mNextIndex:I

    .line 41
    :cond_1
    invoke-static {}, Lcom/miui/maml/data/Variables;->access$000()Z

    .line 43
    move-result v2

    .line 46
    if-eqz v2, :cond_2

    .line 47
    const-string v2, "Variables"

    .line 49
    new-instance v3, Ljava/lang/StringBuilder;

    .line 51
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    const-string p1, "  index:"

    .line 59
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    move-result-object p1

    .line 70
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 74
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    monitor-exit p0

    .line 78
    return p1

    .line 79
    :catchall_0
    move-exception p1

    .line 80
    monitor-exit p0

    .line 81
    throw p1
    .line 82
.end method
