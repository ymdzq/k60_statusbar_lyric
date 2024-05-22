.class Lcom/miui/maml/data/Variables$VarBucket;
.super Lcom/miui/maml/data/Variables$BaseVarBucket;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field private mArray:Ljava/util/ArrayList;


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/miui/maml/data/Variables$BaseVarBucket;-><init>(Lcom/miui/maml/data/Variables$1;)V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/maml/data/Variables$VarBucket;->mArray:Ljava/util/ArrayList;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/miui/maml/data/Variables$1;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/miui/maml/data/Variables$VarBucket;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized get(I)Ljava/lang/Object;
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/miui/maml/data/Variables$VarBucket;->mArray:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 9
    check-cast p1, Lcom/miui/maml/data/Variables$ValueInfo;

    .line 10
    if-nez p1, :cond_0

    .line 12
    goto :goto_0

    .line 14
    :cond_0
    iget-object v0, p1, Lcom/miui/maml/data/Variables$ValueInfo;->mValue:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    :goto_0
    monitor-exit p0

    .line 17
    return-object v0

    .line 18
    :catchall_0
    move-exception p1

    .line 19
    monitor-exit p0

    .line 20
    throw p1

    .line 21
    :catch_0
    monitor-exit p0

    .line 22
    return-object v0
    .line 23
.end method

.method public declared-synchronized getVer(I)I
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, -0x1

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/miui/maml/data/Variables$VarBucket;->mArray:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 9
    check-cast p1, Lcom/miui/maml/data/Variables$ValueInfo;

    .line 10
    if-nez p1, :cond_0

    .line 12
    goto :goto_0

    .line 14
    :cond_0
    iget v0, p1, Lcom/miui/maml/data/Variables$ValueInfo;->mVersion:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    :goto_0
    monitor-exit p0

    .line 17
    return v0

    .line 18
    :catchall_0
    move-exception p1

    .line 19
    monitor-exit p0

    .line 20
    throw p1

    .line 21
    :catch_0
    monitor-exit p0

    .line 22
    return v0
    .line 23
.end method

.method public onAddItem(I)V
    .locals 2

    .line 1
    :goto_0
    iget-object v0, p0, Lcom/miui/maml/data/Variables$VarBucket;->mArray:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    move-result v0

    .line 7
    if-gt v0, p1, :cond_0

    .line 8
    iget-object v0, p0, Lcom/miui/maml/data/Variables$VarBucket;->mArray:Ljava/util/ArrayList;

    .line 10
    const/4 v1, 0x0

    .line 12
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    goto :goto_0

    .line 16
    :cond_0
    return-void
    .line 17
.end method

.method public final declared-synchronized put(ILjava/lang/Object;I)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    if-gez p1, :cond_0

    .line 3
    monitor-exit p0

    .line 5
    return-void

    .line 6
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/miui/maml/data/Variables$VarBucket;->mArray:Ljava/util/ArrayList;

    .line 7
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 9
    move-result-object v0

    .line 12
    check-cast v0, Lcom/miui/maml/data/Variables$ValueInfo;

    .line 13
    if-nez v0, :cond_1

    .line 15
    new-instance v0, Lcom/miui/maml/data/Variables$ValueInfo;

    .line 17
    const/4 v1, 0x0

    .line 19
    invoke-direct {v0, p2, v1, p3}, Lcom/miui/maml/data/Variables$ValueInfo;-><init>(Ljava/lang/Object;II)V

    .line 20
    iget-object p2, p0, Lcom/miui/maml/data/Variables$VarBucket;->mArray:Ljava/util/ArrayList;

    .line 23
    invoke-virtual {p2, p1, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 25
    goto :goto_0

    .line 28
    :cond_1
    invoke-virtual {v0, p2, p3}, Lcom/miui/maml/data/Variables$ValueInfo;->setValue(Ljava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    goto :goto_0

    .line 32
    :catchall_0
    move-exception p1

    .line 33
    monitor-exit p0

    .line 34
    throw p1

    .line 35
    :catch_0
    :goto_0
    monitor-exit p0

    .line 36
    return-void
    .line 37
.end method

.method public reset()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/data/Variables$VarBucket;->mArray:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    if-ge v1, v0, :cond_1

    .line 9
    iget-object v2, p0, Lcom/miui/maml/data/Variables$VarBucket;->mArray:Ljava/util/ArrayList;

    .line 11
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 13
    move-result-object v2

    .line 16
    check-cast v2, Lcom/miui/maml/data/Variables$ValueInfo;

    .line 17
    if-eqz v2, :cond_0

    .line 19
    invoke-virtual {v2}, Lcom/miui/maml/data/Variables$ValueInfo;->reset()V

    .line 21
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 24
    goto :goto_0

    .line 26
    :cond_1
    return-void
    .line 27
.end method
