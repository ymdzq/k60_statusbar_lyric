.class public Lcom/miui/maml/RendererCore;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "RendererCore"


# instance fields
.field private mCleaned:Z

.field private mMultipleRenderable:Lcom/miui/maml/MultipleRenderable;

.field private mOnReleaseListener:Ljava/lang/ref/WeakReference;

.field private mReleased:Z

.field private mRoot:Lcom/miui/maml/ScreenElementRoot;


# direct methods
.method public constructor <init>(Lcom/miui/maml/ScreenElementRoot;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/miui/maml/MultipleRenderable;

    .line 5
    invoke-direct {v0}, Lcom/miui/maml/MultipleRenderable;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/miui/maml/RendererCore;->mMultipleRenderable:Lcom/miui/maml/MultipleRenderable;

    .line 10
    iput-object p1, p0, Lcom/miui/maml/RendererCore;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 12
    invoke-virtual {p1, v0}, Lcom/miui/maml/ScreenElementRoot;->setRenderControllerRenderable(Lcom/miui/maml/RendererController$IRenderable;)V

    .line 14
    iget-object p1, p0, Lcom/miui/maml/RendererCore;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 17
    invoke-virtual {p1}, Lcom/miui/maml/ScreenElementRoot;->selfInit()V

    .line 19
    iget-object p1, p0, Lcom/miui/maml/RendererCore;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 22
    invoke-virtual {p1}, Lcom/miui/maml/ScreenElementRoot;->attachToVsync()V

    .line 24
    iget-object p0, p0, Lcom/miui/maml/RendererCore;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 27
    invoke-virtual {p0}, Lcom/miui/maml/ScreenElementRoot;->requestUpdate()V

    .line 29
    return-void
.end method


# virtual methods
.method public declared-synchronized addRenderable(Lcom/miui/maml/RendererController$IRenderable;)V
    .locals 3

    .line 1
    const-string v0, "add: "

    .line 2
    monitor-enter p0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcom/miui/maml/RendererCore;->mCleaned:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    if-eqz v1, :cond_0

    .line 7
    monitor-exit p0

    .line 9
    return-void

    .line 10
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/miui/maml/RendererCore;->mMultipleRenderable:Lcom/miui/maml/MultipleRenderable;

    .line 11
    invoke-virtual {v1, p1}, Lcom/miui/maml/MultipleRenderable;->add(Lcom/miui/maml/RendererController$IRenderable;)V

    .line 13
    const-string v1, "RendererCore"

    .line 16
    new-instance v2, Ljava/lang/StringBuilder;

    .line 18
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    const-string p1, " size:"

    .line 26
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    iget-object p1, p0, Lcom/miui/maml/RendererCore;->mMultipleRenderable:Lcom/miui/maml/MultipleRenderable;

    .line 31
    invoke-virtual {p1}, Lcom/miui/maml/MultipleRenderable;->size()I

    .line 33
    move-result p1

    .line 36
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    move-result-object p1

    .line 43
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    iget-object p1, p0, Lcom/miui/maml/RendererCore;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 47
    invoke-virtual {p1}, Lcom/miui/maml/ScreenElementRoot;->selfResume()V

    .line 49
    const/4 p1, 0x0

    .line 52
    iput-boolean p1, p0, Lcom/miui/maml/RendererCore;->mReleased:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    monitor-exit p0

    .line 55
    return-void

    .line 56
    :catchall_0
    move-exception p1

    .line 57
    monitor-exit p0

    .line 58
    throw p1
    .line 59
.end method

.method public cleanUp()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/miui/maml/RendererCore;->mCleaned:Z

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    const-string v1, "cleanUp: "

    .line 7
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 12
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 22
    const-string v1, "RendererCore"

    .line 23
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    iget-object v0, p0, Lcom/miui/maml/RendererCore;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 28
    if-eqz v0, :cond_0

    .line 30
    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->detachFromVsync()V

    .line 32
    iget-object v0, p0, Lcom/miui/maml/RendererCore;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 35
    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->selfFinish()V

    .line 37
    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Lcom/miui/maml/RendererCore;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 41
    :cond_0
    return-void
    .line 43
.end method

.method public finalize()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/RendererCore;->cleanUp()V

    .line 2
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 5
    return-void
    .line 8
.end method

.method public getRoot()Lcom/miui/maml/ScreenElementRoot;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/RendererCore;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 2
    return-object p0
    .line 4
.end method

.method public declared-synchronized pauseRenderable(Lcom/miui/maml/RendererController$IRenderable;)V
    .locals 2

    .line 1
    const-string/jumbo v0, "self pause: "

    .line 2
    monitor-enter p0

    .line 5
    :try_start_0
    iget-boolean v1, p0, Lcom/miui/maml/RendererCore;->mCleaned:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    if-eqz v1, :cond_0

    .line 8
    monitor-exit p0

    .line 10
    return-void

    .line 11
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/miui/maml/RendererCore;->mMultipleRenderable:Lcom/miui/maml/MultipleRenderable;

    .line 12
    invoke-virtual {v1, p1}, Lcom/miui/maml/MultipleRenderable;->pause(Lcom/miui/maml/RendererController$IRenderable;)I

    .line 14
    move-result p1

    .line 17
    if-nez p1, :cond_1

    .line 18
    const-string p1, "RendererCore"

    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    .line 22
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 27
    move-result-object v0

    .line 30
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    move-result-object v0

    .line 37
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    iget-object p1, p0, Lcom/miui/maml/RendererCore;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 41
    invoke-virtual {p1}, Lcom/miui/maml/ScreenElementRoot;->selfPause()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    :cond_1
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

.method public declared-synchronized removeRenderable(Lcom/miui/maml/RendererController$IRenderable;)V
    .locals 3

    .line 1
    const-string v0, "remove: "

    .line 2
    monitor-enter p0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcom/miui/maml/RendererCore;->mCleaned:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    if-eqz v1, :cond_0

    .line 7
    monitor-exit p0

    .line 9
    return-void

    .line 10
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/miui/maml/RendererCore;->mMultipleRenderable:Lcom/miui/maml/MultipleRenderable;

    .line 11
    invoke-virtual {v1, p1}, Lcom/miui/maml/MultipleRenderable;->remove(Lcom/miui/maml/RendererController$IRenderable;)V

    .line 13
    const-string v1, "RendererCore"

    .line 16
    new-instance v2, Ljava/lang/StringBuilder;

    .line 18
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    const-string p1, " size:"

    .line 26
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    iget-object p1, p0, Lcom/miui/maml/RendererCore;->mMultipleRenderable:Lcom/miui/maml/MultipleRenderable;

    .line 31
    invoke-virtual {p1}, Lcom/miui/maml/MultipleRenderable;->size()I

    .line 33
    move-result p1

    .line 36
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    move-result-object p1

    .line 43
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    iget-object p1, p0, Lcom/miui/maml/RendererCore;->mMultipleRenderable:Lcom/miui/maml/MultipleRenderable;

    .line 47
    invoke-virtual {p1}, Lcom/miui/maml/MultipleRenderable;->size()I

    .line 49
    move-result p1

    .line 52
    if-nez p1, :cond_2

    .line 53
    iget-object p1, p0, Lcom/miui/maml/RendererCore;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 55
    invoke-virtual {p1}, Lcom/miui/maml/ScreenElementRoot;->selfPause()V

    .line 57
    iget-boolean p1, p0, Lcom/miui/maml/RendererCore;->mReleased:Z

    .line 60
    if-nez p1, :cond_1

    .line 62
    iget-object p1, p0, Lcom/miui/maml/RendererCore;->mOnReleaseListener:Ljava/lang/ref/WeakReference;

    .line 64
    if-eqz p1, :cond_1

    .line 66
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 68
    move-result-object p1

    .line 71
    if-eqz p1, :cond_1

    .line 72
    iget-object p1, p0, Lcom/miui/maml/RendererCore;->mOnReleaseListener:Ljava/lang/ref/WeakReference;

    .line 74
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 76
    move-result-object p1

    .line 79
    check-cast p1, Lcom/miui/maml/RendererCore$OnReleaseListener;

    .line 80
    invoke-interface {p1, p0}, Lcom/miui/maml/RendererCore$OnReleaseListener;->OnRendererCoreReleased(Lcom/miui/maml/RendererCore;)Z

    .line 82
    move-result p1

    .line 85
    if-eqz p1, :cond_1

    .line 86
    invoke-virtual {p0}, Lcom/miui/maml/RendererCore;->cleanUp()V

    .line 88
    :cond_1
    const/4 p1, 0x1

    .line 91
    iput-boolean p1, p0, Lcom/miui/maml/RendererCore;->mReleased:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    :cond_2
    monitor-exit p0

    .line 94
    return-void

    .line 95
    :catchall_0
    move-exception p1

    .line 96
    monitor-exit p0

    .line 97
    throw p1
    .line 98
.end method

.method public render(Landroid/graphics/Canvas;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/RendererCore;->mCleaned:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    iget-object p0, p0, Lcom/miui/maml/RendererCore;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 7
    invoke-virtual {p0, p1}, Lcom/miui/maml/elements/ScreenElement;->render(Landroid/graphics/Canvas;)V

    .line 9
    return-void
    .line 12
.end method

.method public declared-synchronized resumeRenderable(Lcom/miui/maml/RendererController$IRenderable;)V
    .locals 2

    .line 1
    const-string/jumbo v0, "self resume: "

    .line 2
    monitor-enter p0

    .line 5
    :try_start_0
    iget-boolean v1, p0, Lcom/miui/maml/RendererCore;->mCleaned:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    if-eqz v1, :cond_0

    .line 8
    monitor-exit p0

    .line 10
    return-void

    .line 11
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/miui/maml/RendererCore;->mMultipleRenderable:Lcom/miui/maml/MultipleRenderable;

    .line 12
    invoke-virtual {v1, p1}, Lcom/miui/maml/MultipleRenderable;->resume(Lcom/miui/maml/RendererController$IRenderable;)I

    .line 14
    const-string p1, "RendererCore"

    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    .line 19
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 27
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    move-result-object v0

    .line 34
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    iget-object p1, p0, Lcom/miui/maml/RendererCore;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 38
    invoke-virtual {p1}, Lcom/miui/maml/ScreenElementRoot;->selfResume()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    monitor-exit p0

    .line 43
    return-void

    .line 44
    :catchall_0
    move-exception p1

    .line 45
    monitor-exit p0

    .line 46
    throw p1
    .line 47
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/RendererCore;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0, p1}, Lcom/miui/maml/ScreenElementRoot;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 6
    :cond_0
    return-void
    .line 9
.end method

.method public setOnReleaseListener(Lcom/miui/maml/RendererCore$OnReleaseListener;)V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 2
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 4
    iput-object v0, p0, Lcom/miui/maml/RendererCore;->mOnReleaseListener:Ljava/lang/ref/WeakReference;

    .line 7
    return-void
    .line 9
.end method
