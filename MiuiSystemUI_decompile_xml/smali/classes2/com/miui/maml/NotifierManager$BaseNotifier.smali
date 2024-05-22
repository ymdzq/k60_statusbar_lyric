.class public abstract Lcom/miui/maml/NotifierManager$BaseNotifier;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field private mActiveCount:I

.field protected mContext:Landroid/content/Context;

.field private mListeners:Ljava/util/ArrayList;

.field private mRefCount:I

.field private mRegistered:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/miui/maml/NotifierManager$BaseNotifier;->mListeners:Ljava/util/ArrayList;

    .line 10
    iput-object p1, p0, Lcom/miui/maml/NotifierManager$BaseNotifier;->mContext:Landroid/content/Context;

    .line 12
    return-void
    .line 14
.end method

.method private final checkListeners()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/NotifierManager$BaseNotifier;->mListeners:Ljava/util/ArrayList;

    .line 2
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-direct {p0}, Lcom/miui/maml/NotifierManager$BaseNotifier;->checkListenersLocked()I

    .line 5
    move-result v1

    .line 8
    if-nez v1, :cond_0

    .line 9
    invoke-virtual {p0}, Lcom/miui/maml/NotifierManager$BaseNotifier;->pause()V

    .line 11
    :cond_0
    monitor-exit v0

    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    throw p0
    .line 18
.end method

.method private final checkListenersLocked()I
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/miui/maml/NotifierManager$BaseNotifier;->mActiveCount:I

    .line 3
    iget-object v0, p0, Lcom/miui/maml/NotifierManager$BaseNotifier;->mListeners:Ljava/util/ArrayList;

    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 7
    move-result v0

    .line 10
    add-int/lit8 v0, v0, -0x1

    .line 11
    :goto_0
    if-ltz v0, :cond_2

    .line 13
    iget-object v1, p0, Lcom/miui/maml/NotifierManager$BaseNotifier;->mListeners:Ljava/util/ArrayList;

    .line 15
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 17
    move-result-object v1

    .line 20
    check-cast v1, Lcom/miui/maml/NotifierManager$BaseNotifier$Listener;

    .line 21
    iget-object v2, v1, Lcom/miui/maml/NotifierManager$BaseNotifier$Listener;->ref:Ljava/lang/ref/WeakReference;

    .line 23
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 25
    move-result-object v2

    .line 28
    if-nez v2, :cond_0

    .line 29
    iget-object v1, p0, Lcom/miui/maml/NotifierManager$BaseNotifier;->mListeners:Ljava/util/ArrayList;

    .line 31
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 33
    goto :goto_1

    .line 36
    :cond_0
    invoke-static {v1}, Lcom/miui/maml/NotifierManager$BaseNotifier$Listener;->access$000(Lcom/miui/maml/NotifierManager$BaseNotifier$Listener;)Z

    .line 37
    move-result v1

    .line 40
    if-nez v1, :cond_1

    .line 41
    iget v1, p0, Lcom/miui/maml/NotifierManager$BaseNotifier;->mActiveCount:I

    .line 43
    add-int/lit8 v1, v1, 0x1

    .line 45
    iput v1, p0, Lcom/miui/maml/NotifierManager$BaseNotifier;->mActiveCount:I

    .line 47
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, -0x1

    .line 49
    goto :goto_0

    .line 51
    :cond_2
    iget-object v0, p0, Lcom/miui/maml/NotifierManager$BaseNotifier;->mListeners:Ljava/util/ArrayList;

    .line 52
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 54
    move-result v0

    .line 57
    iput v0, p0, Lcom/miui/maml/NotifierManager$BaseNotifier;->mRefCount:I

    .line 58
    return v0
    .line 60
.end method

.method private final findListenerLocked(Lcom/miui/maml/NotifierManager$OnNotifyListener;)Lcom/miui/maml/NotifierManager$BaseNotifier$Listener;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/miui/maml/NotifierManager$BaseNotifier;->mListeners:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    move-result-object p0

    .line 7
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 17
    check-cast v0, Lcom/miui/maml/NotifierManager$BaseNotifier$Listener;

    .line 18
    iget-object v1, v0, Lcom/miui/maml/NotifierManager$BaseNotifier$Listener;->ref:Ljava/lang/ref/WeakReference;

    .line 20
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 22
    move-result-object v1

    .line 25
    if-ne v1, p1, :cond_0

    .line 26
    return-object v0

    .line 28
    :cond_1
    const/4 p0, 0x0

    .line 29
    return-object p0
    .line 30
.end method


# virtual methods
.method public final addListener(Lcom/miui/maml/NotifierManager$OnNotifyListener;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/NotifierManager$BaseNotifier;->mListeners:Ljava/util/ArrayList;

    .line 2
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-direct {p0, p1}, Lcom/miui/maml/NotifierManager$BaseNotifier;->findListenerLocked(Lcom/miui/maml/NotifierManager$OnNotifyListener;)Lcom/miui/maml/NotifierManager$BaseNotifier$Listener;

    .line 5
    move-result-object v1

    .line 8
    if-nez v1, :cond_0

    .line 9
    iget-object v1, p0, Lcom/miui/maml/NotifierManager$BaseNotifier;->mListeners:Ljava/util/ArrayList;

    .line 11
    new-instance v2, Lcom/miui/maml/NotifierManager$BaseNotifier$Listener;

    .line 13
    invoke-direct {v2, p1}, Lcom/miui/maml/NotifierManager$BaseNotifier$Listener;-><init>(Lcom/miui/maml/NotifierManager$OnNotifyListener;)V

    .line 15
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    invoke-direct {p0}, Lcom/miui/maml/NotifierManager$BaseNotifier;->checkListenersLocked()I

    .line 21
    invoke-virtual {p0, p1}, Lcom/miui/maml/NotifierManager$BaseNotifier;->onListenerAdded(Lcom/miui/maml/NotifierManager$OnNotifyListener;)V

    .line 24
    :cond_0
    monitor-exit v0

    .line 27
    return-void

    .line 28
    :catchall_0
    move-exception p0

    .line 29
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    throw p0
    .line 31
.end method

.method public finish()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/NotifierManager$BaseNotifier;->unregister()V

    .line 2
    return-void
    .line 5
.end method

.method public final getActiveCount()I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/miui/maml/NotifierManager$BaseNotifier;->checkListeners()V

    .line 2
    iget p0, p0, Lcom/miui/maml/NotifierManager$BaseNotifier;->mActiveCount:I

    .line 5
    return p0
    .line 7
.end method

.method public final getRef()I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/miui/maml/NotifierManager$BaseNotifier;->checkListeners()V

    .line 2
    iget p0, p0, Lcom/miui/maml/NotifierManager$BaseNotifier;->mRefCount:I

    .line 5
    return p0
    .line 7
.end method

.method public init()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/NotifierManager$BaseNotifier;->register()V

    .line 2
    return-void
    .line 5
.end method

.method public onListenerAdded(Lcom/miui/maml/NotifierManager$OnNotifyListener;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public onNotify(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Object;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/miui/maml/NotifierManager$BaseNotifier;->checkListeners()V

    .line 2
    iget-object v0, p0, Lcom/miui/maml/NotifierManager$BaseNotifier;->mListeners:Ljava/util/ArrayList;

    .line 5
    monitor-enter v0

    .line 7
    :try_start_0
    iget-object p0, p0, Lcom/miui/maml/NotifierManager$BaseNotifier;->mListeners:Ljava/util/ArrayList;

    .line 8
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 10
    move-result-object p0

    .line 13
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    move-result-object v1

    .line 23
    check-cast v1, Lcom/miui/maml/NotifierManager$BaseNotifier$Listener;

    .line 24
    invoke-virtual {v1, p1, p2, p3}, Lcom/miui/maml/NotifierManager$BaseNotifier$Listener;->onNotify(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Object;)V

    .line 26
    goto :goto_0

    .line 29
    :cond_0
    monitor-exit v0

    .line 30
    return-void

    .line 31
    :catchall_0
    move-exception p0

    .line 32
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    throw p0
    .line 34
.end method

.method public abstract onRegister()V
.end method

.method public abstract onUnregister()V
.end method

.method public pause()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/NotifierManager$BaseNotifier;->unregister()V

    .line 2
    return-void
    .line 5
.end method

.method public final pauseListener(Lcom/miui/maml/NotifierManager$OnNotifyListener;)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/NotifierManager$BaseNotifier;->mListeners:Ljava/util/ArrayList;

    .line 2
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-direct {p0, p1}, Lcom/miui/maml/NotifierManager$BaseNotifier;->findListenerLocked(Lcom/miui/maml/NotifierManager$OnNotifyListener;)Lcom/miui/maml/NotifierManager$BaseNotifier$Listener;

    .line 5
    move-result-object p1

    .line 8
    if-nez p1, :cond_0

    .line 9
    invoke-direct {p0}, Lcom/miui/maml/NotifierManager$BaseNotifier;->checkListenersLocked()I

    .line 11
    const-string p1, "NotifierManager"

    .line 14
    const-string v1, "pauseListener, listener not exist"

    .line 16
    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    iget p0, p0, Lcom/miui/maml/NotifierManager$BaseNotifier;->mRefCount:I

    .line 21
    monitor-exit v0

    .line 23
    return p0

    .line 24
    :cond_0
    invoke-virtual {p1}, Lcom/miui/maml/NotifierManager$BaseNotifier$Listener;->pause()V

    .line 25
    iget p0, p0, Lcom/miui/maml/NotifierManager$BaseNotifier;->mRefCount:I

    .line 28
    monitor-exit v0

    .line 30
    return p0

    .line 31
    :catchall_0
    move-exception p0

    .line 32
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    throw p0
    .line 34
.end method

.method public register()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/NotifierManager$BaseNotifier;->mRegistered:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/miui/maml/NotifierManager$BaseNotifier;->onRegister()V

    .line 7
    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lcom/miui/maml/NotifierManager$BaseNotifier;->mRegistered:Z

    .line 11
    invoke-static {}, Lcom/miui/maml/NotifierManager;->access$100()Z

    .line 13
    move-result v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    .line 19
    const-string v1, "onRegister: "

    .line 21
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 26
    move-result-object p0

    .line 29
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    move-result-object p0

    .line 36
    const-string v0, "NotifierManager"

    .line 37
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    :cond_1
    return-void
    .line 42
.end method

.method public final removeListener(Lcom/miui/maml/NotifierManager$OnNotifyListener;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/NotifierManager$BaseNotifier;->mListeners:Ljava/util/ArrayList;

    .line 2
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-direct {p0, p1}, Lcom/miui/maml/NotifierManager$BaseNotifier;->findListenerLocked(Lcom/miui/maml/NotifierManager$OnNotifyListener;)Lcom/miui/maml/NotifierManager$BaseNotifier$Listener;

    .line 5
    move-result-object p1

    .line 8
    if-eqz p1, :cond_0

    .line 9
    iget-object v1, p0, Lcom/miui/maml/NotifierManager$BaseNotifier;->mListeners:Ljava/util/ArrayList;

    .line 11
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 13
    invoke-direct {p0}, Lcom/miui/maml/NotifierManager$BaseNotifier;->checkListenersLocked()I

    .line 16
    :cond_0
    monitor-exit v0

    .line 19
    return-void

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    throw p0
    .line 23
.end method

.method public resume()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/NotifierManager$BaseNotifier;->register()V

    .line 2
    return-void
    .line 5
.end method

.method public final resumeListener(Lcom/miui/maml/NotifierManager$OnNotifyListener;)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/NotifierManager$BaseNotifier;->mListeners:Ljava/util/ArrayList;

    .line 2
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-direct {p0, p1}, Lcom/miui/maml/NotifierManager$BaseNotifier;->findListenerLocked(Lcom/miui/maml/NotifierManager$OnNotifyListener;)Lcom/miui/maml/NotifierManager$BaseNotifier$Listener;

    .line 5
    move-result-object p1

    .line 8
    if-nez p1, :cond_0

    .line 9
    invoke-direct {p0}, Lcom/miui/maml/NotifierManager$BaseNotifier;->checkListenersLocked()I

    .line 11
    const-string p1, "NotifierManager"

    .line 14
    const-string v1, "resumeListener, listener not exist"

    .line 16
    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    iget p0, p0, Lcom/miui/maml/NotifierManager$BaseNotifier;->mRefCount:I

    .line 21
    monitor-exit v0

    .line 23
    return p0

    .line 24
    :cond_0
    invoke-virtual {p1}, Lcom/miui/maml/NotifierManager$BaseNotifier$Listener;->resume()V

    .line 25
    iget p0, p0, Lcom/miui/maml/NotifierManager$BaseNotifier;->mRefCount:I

    .line 28
    monitor-exit v0

    .line 30
    return p0

    .line 31
    :catchall_0
    move-exception p0

    .line 32
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    throw p0
    .line 34
.end method

.method public unregister()V
    .locals 3

    .line 1
    const-string v0, "NotifierManager"

    .line 2
    iget-boolean v1, p0, Lcom/miui/maml/NotifierManager$BaseNotifier;->mRegistered:Z

    .line 4
    if-nez v1, :cond_0

    .line 6
    return-void

    .line 8
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/miui/maml/NotifierManager$BaseNotifier;->onUnregister()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    goto :goto_0

    .line 12
    :catch_0
    move-exception v1

    .line 13
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    .line 14
    move-result-object v1

    .line 17
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    :goto_0
    const/4 v1, 0x0

    .line 21
    iput-boolean v1, p0, Lcom/miui/maml/NotifierManager$BaseNotifier;->mRegistered:Z

    .line 22
    invoke-static {}, Lcom/miui/maml/NotifierManager;->access$100()Z

    .line 24
    move-result v1

    .line 27
    if-eqz v1, :cond_1

    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    .line 30
    const-string v2, "onUnregister: "

    .line 32
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 37
    move-result-object p0

    .line 40
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    move-result-object p0

    .line 47
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    :cond_1
    return-void
    .line 51
.end method
