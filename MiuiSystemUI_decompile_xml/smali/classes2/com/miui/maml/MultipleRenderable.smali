.class public Lcom/miui/maml/MultipleRenderable;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/miui/maml/RendererController$IRenderable;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "MultipleRenderable"


# instance fields
.field private mActiveCount:I

.field private mList:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/miui/maml/MultipleRenderable;->mList:Ljava/util/ArrayList;

    .line 10
    return-void
    .line 12
.end method

.method private find(Lcom/miui/maml/RendererController$IRenderable;)Lcom/miui/maml/MultipleRenderable$RenderableInfo;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/miui/maml/MultipleRenderable;->mList:Ljava/util/ArrayList;

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
    iget-object v2, p0, Lcom/miui/maml/MultipleRenderable;->mList:Ljava/util/ArrayList;

    .line 11
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 13
    move-result-object v2

    .line 16
    check-cast v2, Lcom/miui/maml/MultipleRenderable$RenderableInfo;

    .line 17
    iget-object v3, v2, Lcom/miui/maml/MultipleRenderable$RenderableInfo;->r:Ljava/lang/ref/WeakReference;

    .line 19
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 21
    move-result-object v3

    .line 24
    if-ne v3, p1, :cond_0

    .line 25
    return-object v2

    .line 27
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 28
    goto :goto_0

    .line 30
    :cond_1
    const/4 p0, 0x0

    .line 31
    return-object p0
.end method

.method private setPause(Lcom/miui/maml/RendererController$IRenderable;Z)I
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string/jumbo v1, "setPause: "

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 10
    const-string v1, " "

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    move-result-object v0

    .line 24
    const-string v1, "MultipleRenderable"

    .line 25
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    invoke-direct {p0, p1}, Lcom/miui/maml/MultipleRenderable;->find(Lcom/miui/maml/RendererController$IRenderable;)Lcom/miui/maml/MultipleRenderable$RenderableInfo;

    .line 30
    move-result-object p1

    .line 33
    if-nez p1, :cond_0

    .line 34
    iget p0, p0, Lcom/miui/maml/MultipleRenderable;->mActiveCount:I

    .line 36
    return p0

    .line 38
    :cond_0
    iget-boolean v0, p1, Lcom/miui/maml/MultipleRenderable$RenderableInfo;->paused:Z

    .line 39
    if-eq v0, p2, :cond_2

    .line 41
    iput-boolean p2, p1, Lcom/miui/maml/MultipleRenderable$RenderableInfo;->paused:Z

    .line 43
    iget p1, p0, Lcom/miui/maml/MultipleRenderable;->mActiveCount:I

    .line 45
    if-eqz p2, :cond_1

    .line 47
    add-int/lit8 p1, p1, -0x1

    .line 49
    goto :goto_0

    .line 51
    :cond_1
    add-int/lit8 p1, p1, 0x1

    .line 52
    :goto_0
    iput p1, p0, Lcom/miui/maml/MultipleRenderable;->mActiveCount:I

    .line 54
    :cond_2
    iget p0, p0, Lcom/miui/maml/MultipleRenderable;->mActiveCount:I

    .line 56
    return p0
    .line 58
.end method


# virtual methods
.method public declared-synchronized add(Lcom/miui/maml/RendererController$IRenderable;)V
    .locals 3

    .line 1
    const-string v0, "add: "

    .line 2
    monitor-enter p0

    .line 4
    :try_start_0
    invoke-direct {p0, p1}, Lcom/miui/maml/MultipleRenderable;->find(Lcom/miui/maml/RendererController$IRenderable;)Lcom/miui/maml/MultipleRenderable$RenderableInfo;

    .line 5
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    monitor-exit p0

    .line 11
    return-void

    .line 12
    :cond_0
    :try_start_1
    const-string v1, "MultipleRenderable"

    .line 13
    new-instance v2, Ljava/lang/StringBuilder;

    .line 15
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    move-result-object v0

    .line 26
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    iget-object v0, p0, Lcom/miui/maml/MultipleRenderable;->mList:Ljava/util/ArrayList;

    .line 30
    new-instance v1, Lcom/miui/maml/MultipleRenderable$RenderableInfo;

    .line 32
    invoke-direct {v1, p1}, Lcom/miui/maml/MultipleRenderable$RenderableInfo;-><init>(Lcom/miui/maml/RendererController$IRenderable;)V

    .line 34
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    iget p1, p0, Lcom/miui/maml/MultipleRenderable;->mActiveCount:I

    .line 40
    add-int/lit8 p1, p1, 0x1

    .line 42
    iput p1, p0, Lcom/miui/maml/MultipleRenderable;->mActiveCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    monitor-exit p0

    .line 46
    return-void

    .line 47
    :catchall_0
    move-exception p1

    .line 48
    monitor-exit p0

    .line 49
    throw p1
    .line 50
.end method

.method public declared-synchronized doRender()V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x0

    .line 3
    :try_start_0
    iput v0, p0, Lcom/miui/maml/MultipleRenderable;->mActiveCount:I

    .line 4
    iget-object v0, p0, Lcom/miui/maml/MultipleRenderable;->mList:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 8
    move-result v0

    .line 11
    add-int/lit8 v0, v0, -0x1

    .line 12
    :goto_0
    if-ltz v0, :cond_2

    .line 14
    iget-object v1, p0, Lcom/miui/maml/MultipleRenderable;->mList:Ljava/util/ArrayList;

    .line 16
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    move-result-object v1

    .line 21
    check-cast v1, Lcom/miui/maml/MultipleRenderable$RenderableInfo;

    .line 22
    iget-boolean v2, v1, Lcom/miui/maml/MultipleRenderable$RenderableInfo;->paused:Z

    .line 24
    if-eqz v2, :cond_0

    .line 26
    goto :goto_1

    .line 28
    :cond_0
    iget-object v1, v1, Lcom/miui/maml/MultipleRenderable$RenderableInfo;->r:Ljava/lang/ref/WeakReference;

    .line 29
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 31
    move-result-object v1

    .line 34
    check-cast v1, Lcom/miui/maml/RendererController$IRenderable;

    .line 35
    if-eqz v1, :cond_1

    .line 37
    invoke-interface {v1}, Lcom/miui/maml/RendererController$IRenderable;->doRender()V

    .line 39
    iget v1, p0, Lcom/miui/maml/MultipleRenderable;->mActiveCount:I

    .line 42
    add-int/lit8 v1, v1, 0x1

    .line 44
    iput v1, p0, Lcom/miui/maml/MultipleRenderable;->mActiveCount:I

    .line 46
    goto :goto_1

    .line 48
    :cond_1
    iget-object v1, p0, Lcom/miui/maml/MultipleRenderable;->mList:Ljava/util/ArrayList;

    .line 49
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    :goto_1
    add-int/lit8 v0, v0, -0x1

    .line 54
    goto :goto_0

    .line 56
    :cond_2
    monitor-exit p0

    .line 57
    return-void

    .line 58
    :catchall_0
    move-exception v0

    .line 59
    monitor-exit p0

    .line 60
    throw v0
    .line 61
.end method

.method public declared-synchronized pause(Lcom/miui/maml/RendererController$IRenderable;)I
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x1

    .line 3
    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/miui/maml/MultipleRenderable;->setPause(Lcom/miui/maml/RendererController$IRenderable;Z)I

    .line 4
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    monitor-exit p0

    .line 8
    return p1

    .line 9
    :catchall_0
    move-exception p1

    .line 10
    monitor-exit p0

    .line 11
    throw p1
    .line 12
.end method

.method public declared-synchronized remove(Lcom/miui/maml/RendererController$IRenderable;)V
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/miui/maml/MultipleRenderable;->mList:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 5
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    if-nez v0, :cond_0

    .line 9
    monitor-exit p0

    .line 11
    return-void

    .line 12
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 13
    :goto_0
    if-ltz v0, :cond_4

    .line 15
    :try_start_1
    iget-object v1, p0, Lcom/miui/maml/MultipleRenderable;->mList:Ljava/util/ArrayList;

    .line 17
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 19
    move-result-object v1

    .line 22
    check-cast v1, Lcom/miui/maml/MultipleRenderable$RenderableInfo;

    .line 23
    iget-object v2, v1, Lcom/miui/maml/MultipleRenderable$RenderableInfo;->r:Ljava/lang/ref/WeakReference;

    .line 25
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 27
    move-result-object v2

    .line 30
    check-cast v2, Lcom/miui/maml/RendererController$IRenderable;

    .line 31
    if-eqz v2, :cond_1

    .line 33
    if-ne v2, p1, :cond_3

    .line 35
    :cond_1
    iget-boolean v1, v1, Lcom/miui/maml/MultipleRenderable$RenderableInfo;->paused:Z

    .line 37
    if-nez v1, :cond_2

    .line 39
    iget v1, p0, Lcom/miui/maml/MultipleRenderable;->mActiveCount:I

    .line 41
    add-int/lit8 v1, v1, -0x1

    .line 43
    iput v1, p0, Lcom/miui/maml/MultipleRenderable;->mActiveCount:I

    .line 45
    :cond_2
    iget-object v1, p0, Lcom/miui/maml/MultipleRenderable;->mList:Ljava/util/ArrayList;

    .line 47
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 49
    const-string v1, "MultipleRenderable"

    .line 52
    new-instance v3, Ljava/lang/StringBuilder;

    .line 54
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    const-string v4, "remove: "

    .line 59
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    move-result-object v2

    .line 70
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    :cond_3
    add-int/lit8 v0, v0, -0x1

    .line 74
    goto :goto_0

    .line 76
    :cond_4
    monitor-exit p0

    .line 77
    return-void

    .line 78
    :catchall_0
    move-exception p1

    .line 79
    monitor-exit p0

    .line 80
    throw p1
    .line 81
.end method

.method public declared-synchronized resume(Lcom/miui/maml/RendererController$IRenderable;)I
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x0

    .line 3
    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/miui/maml/MultipleRenderable;->setPause(Lcom/miui/maml/RendererController$IRenderable;Z)I

    .line 4
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    monitor-exit p0

    .line 8
    return p1

    .line 9
    :catchall_0
    move-exception p1

    .line 10
    monitor-exit p0

    .line 11
    throw p1
    .line 12
.end method

.method public declared-synchronized size()I
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/miui/maml/MultipleRenderable;->mList:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 5
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit p0

    .line 9
    return v0

    .line 10
    :catchall_0
    move-exception v0

    .line 11
    monitor-exit p0

    .line 12
    throw v0
    .line 13
.end method
