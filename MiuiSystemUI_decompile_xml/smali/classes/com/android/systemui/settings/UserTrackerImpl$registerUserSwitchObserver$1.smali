.class public final Lcom/android/systemui/settings/UserTrackerImpl$registerUserSwitchObserver$1;
.super Landroid/app/UserSwitchObserver;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/settings/UserTrackerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/settings/UserTrackerImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/settings/UserTrackerImpl$registerUserSwitchObserver$1;->this$0:Lcom/android/systemui/settings/UserTrackerImpl;

    .line 2
    invoke-direct {p0}, Landroid/app/UserSwitchObserver;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onBeforeUserSwitching(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/settings/UserTrackerImpl$registerUserSwitchObserver$1;->this$0:Lcom/android/systemui/settings/UserTrackerImpl;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    invoke-static {}, Lcom/android/systemui/util/Assert;->isNotMainThread()V

    .line 7
    invoke-virtual {p0, p1}, Lcom/android/systemui/settings/UserTrackerImpl;->setUserIdInternal(I)V

    .line 10
    return-void
    .line 13
.end method

.method public final onUserSwitchComplete(I)V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/systemui/settings/UserTrackerImpl$registerUserSwitchObserver$1;->this$0:Lcom/android/systemui/settings/UserTrackerImpl;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    invoke-static {}, Lcom/android/systemui/util/Assert;->isNotMainThread()V

    .line 7
    const-string v0, "UserTrackerImpl"

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    const-string v2, "Switched to user "

    .line 14
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    move-result-object v1

    .line 25
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    iget-object v0, p0, Lcom/android/systemui/settings/UserTrackerImpl;->callbacks:Ljava/util/List;

    .line 29
    monitor-enter v0

    .line 31
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/settings/UserTrackerImpl;->callbacks:Ljava/util/List;

    .line 32
    invoke-static {v1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    .line 34
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    monitor-exit v0

    .line 38
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 39
    move-result-object v0

    .line 42
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 43
    move-result v1

    .line 46
    if-eqz v1, :cond_1

    .line 47
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 49
    move-result-object v1

    .line 52
    check-cast v1, Lcom/android/systemui/settings/DataItem;

    .line 53
    iget-object v2, v1, Lcom/android/systemui/settings/DataItem;->callback:Ljava/lang/ref/WeakReference;

    .line 55
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 57
    move-result-object v2

    .line 60
    if-eqz v2, :cond_0

    .line 61
    iget-object v2, v1, Lcom/android/systemui/settings/DataItem;->executor:Ljava/util/concurrent/Executor;

    .line 63
    new-instance v3, Lcom/android/systemui/settings/UserTrackerImpl$handleUserSwitchComplete$$inlined$notifySubscribers$1;

    .line 65
    invoke-direct {v3, v1, p1, p0}, Lcom/android/systemui/settings/UserTrackerImpl$handleUserSwitchComplete$$inlined$notifySubscribers$1;-><init>(Lcom/android/systemui/settings/DataItem;ILcom/android/systemui/settings/UserTrackerImpl;)V

    .line 67
    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 70
    goto :goto_0

    .line 73
    :cond_1
    return-void

    .line 74
    :catchall_0
    move-exception p0

    .line 75
    monitor-exit v0

    .line 76
    throw p0
    .line 77
.end method

.method public final onUserSwitching(ILandroid/os/IRemoteCallback;)V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/systemui/settings/UserTrackerImpl$registerUserSwitchObserver$1;->this$0:Lcom/android/systemui/settings/UserTrackerImpl;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    invoke-static {}, Lcom/android/systemui/util/Assert;->isNotMainThread()V

    .line 7
    const-string v0, "UserTrackerImpl"

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    const-string v2, "Switching to user "

    .line 14
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    move-result-object p1

    .line 25
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    iget-object p1, p0, Lcom/android/systemui/settings/UserTrackerImpl;->callbacks:Ljava/util/List;

    .line 29
    monitor-enter p1

    .line 31
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/settings/UserTrackerImpl;->callbacks:Ljava/util/List;

    .line 32
    invoke-static {v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    .line 34
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    monitor-exit p1

    .line 38
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    .line 39
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 41
    move-result v1

    .line 44
    invoke-direct {p1, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 45
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 48
    move-result-object v0

    .line 51
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 52
    move-result v1

    .line 55
    if-eqz v1, :cond_1

    .line 56
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 58
    move-result-object v1

    .line 61
    check-cast v1, Lcom/android/systemui/settings/DataItem;

    .line 62
    iget-object v2, v1, Lcom/android/systemui/settings/DataItem;->callback:Ljava/lang/ref/WeakReference;

    .line 64
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 66
    move-result-object v2

    .line 69
    check-cast v2, Lcom/android/systemui/settings/UserTracker$Callback;

    .line 70
    if-eqz v2, :cond_0

    .line 72
    iget-object v1, v1, Lcom/android/systemui/settings/DataItem;->executor:Ljava/util/concurrent/Executor;

    .line 74
    new-instance v3, Lcom/android/systemui/settings/UserTrackerImpl$handleUserSwitching$1$1;

    .line 76
    invoke-direct {v3, v2, p0, p1}, Lcom/android/systemui/settings/UserTrackerImpl$handleUserSwitching$1$1;-><init>(Lcom/android/systemui/settings/UserTracker$Callback;Lcom/android/systemui/settings/UserTrackerImpl;Ljava/util/concurrent/CountDownLatch;)V

    .line 78
    invoke-interface {v1, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 81
    goto :goto_0

    .line 84
    :cond_0
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 85
    goto :goto_0

    .line 88
    :cond_1
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 89
    if-eqz p2, :cond_2

    .line 92
    const/4 p0, 0x0

    .line 94
    invoke-interface {p2, p0}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 95
    :cond_2
    return-void

    .line 98
    :catchall_0
    move-exception p0

    .line 99
    monitor-exit p1

    .line 100
    throw p0
    .line 101
.end method
