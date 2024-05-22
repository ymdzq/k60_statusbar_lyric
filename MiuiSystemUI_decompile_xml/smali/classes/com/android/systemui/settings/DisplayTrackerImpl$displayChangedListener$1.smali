.class public final Lcom/android/systemui/settings/DisplayTrackerImpl$displayChangedListener$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/systemui/settings/DisplayTrackerImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/settings/DisplayTrackerImpl;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/settings/DisplayTrackerImpl$displayChangedListener$1;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/settings/DisplayTrackerImpl$displayChangedListener$1;->this$0:Lcom/android/systemui/settings/DisplayTrackerImpl;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onDisplayAdded(I)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/systemui/settings/DisplayTrackerImpl$displayChangedListener$1;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    return-void

    .line 7
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/settings/DisplayTrackerImpl$displayChangedListener$1;->this$0:Lcom/android/systemui/settings/DisplayTrackerImpl;

    .line 8
    iget-object v1, v0, Lcom/android/systemui/settings/DisplayTrackerImpl;->displayCallbacks:Ljava/util/List;

    .line 10
    monitor-enter v1

    .line 12
    :try_start_0
    iget-object v0, v0, Lcom/android/systemui/settings/DisplayTrackerImpl;->displayCallbacks:Ljava/util/List;

    .line 13
    invoke-static {v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    .line 15
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    monitor-exit v1

    .line 19
    iget-object p0, p0, Lcom/android/systemui/settings/DisplayTrackerImpl$displayChangedListener$1;->this$0:Lcom/android/systemui/settings/DisplayTrackerImpl;

    .line 20
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    invoke-static {}, Lcom/android/systemui/util/Assert;->isNotMainThread()V

    .line 25
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 28
    move-result-object p0

    .line 31
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    move-result v0

    .line 35
    if-eqz v0, :cond_1

    .line 36
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    move-result-object v0

    .line 41
    check-cast v0, Lcom/android/systemui/settings/DisplayTrackerImpl$DisplayTrackerDataItem;

    .line 42
    iget-object v1, v0, Lcom/android/systemui/settings/DisplayTrackerImpl$DisplayTrackerDataItem;->callback:Ljava/lang/ref/WeakReference;

    .line 44
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 46
    move-result-object v1

    .line 49
    if-eqz v1, :cond_0

    .line 50
    new-instance v1, Lcom/android/systemui/settings/DisplayTrackerImpl$onDisplayAdded$$inlined$notifySubscribers$1;

    .line 52
    const/4 v2, 0x0

    .line 54
    invoke-direct {v1, v0, p1, v2}, Lcom/android/systemui/settings/DisplayTrackerImpl$onDisplayAdded$$inlined$notifySubscribers$1;-><init>(Lcom/android/systemui/settings/DisplayTrackerImpl$DisplayTrackerDataItem;II)V

    .line 55
    iget-object v0, v0, Lcom/android/systemui/settings/DisplayTrackerImpl$DisplayTrackerDataItem;->executor:Ljava/util/concurrent/Executor;

    .line 58
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 60
    goto :goto_0

    .line 63
    :cond_1
    return-void

    .line 64
    :catchall_0
    move-exception p0

    .line 65
    monitor-exit v1

    .line 66
    throw p0

    .line 67
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 68
.end method

.method public final onDisplayChanged(I)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/systemui/settings/DisplayTrackerImpl$displayChangedListener$1;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/settings/DisplayTrackerImpl$displayChangedListener$1;->this$0:Lcom/android/systemui/settings/DisplayTrackerImpl;

    .line 8
    iget-object v1, v0, Lcom/android/systemui/settings/DisplayTrackerImpl;->displayCallbacks:Ljava/util/List;

    .line 10
    monitor-enter v1

    .line 12
    :try_start_0
    iget-object v0, v0, Lcom/android/systemui/settings/DisplayTrackerImpl;->displayCallbacks:Ljava/util/List;

    .line 13
    invoke-static {v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    .line 15
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    monitor-exit v1

    .line 19
    iget-object p0, p0, Lcom/android/systemui/settings/DisplayTrackerImpl$displayChangedListener$1;->this$0:Lcom/android/systemui/settings/DisplayTrackerImpl;

    .line 20
    invoke-static {p0, p1, v0}, Lcom/android/systemui/settings/DisplayTrackerImpl;->access$onDisplayChanged(Lcom/android/systemui/settings/DisplayTrackerImpl;ILjava/util/List;)V

    .line 22
    return-void

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    monitor-exit v1

    .line 27
    throw p0

    .line 28
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/settings/DisplayTrackerImpl$displayChangedListener$1;->this$0:Lcom/android/systemui/settings/DisplayTrackerImpl;

    .line 29
    iget-object v1, v0, Lcom/android/systemui/settings/DisplayTrackerImpl;->brightnessCallbacks:Ljava/util/List;

    .line 31
    monitor-enter v1

    .line 33
    :try_start_1
    iget-object v0, v0, Lcom/android/systemui/settings/DisplayTrackerImpl;->brightnessCallbacks:Ljava/util/List;

    .line 34
    invoke-static {v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    .line 36
    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 39
    monitor-exit v1

    .line 40
    iget-object p0, p0, Lcom/android/systemui/settings/DisplayTrackerImpl$displayChangedListener$1;->this$0:Lcom/android/systemui/settings/DisplayTrackerImpl;

    .line 41
    invoke-static {p0, p1, v0}, Lcom/android/systemui/settings/DisplayTrackerImpl;->access$onDisplayChanged(Lcom/android/systemui/settings/DisplayTrackerImpl;ILjava/util/List;)V

    .line 43
    return-void

    .line 46
    :catchall_1
    move-exception p0

    .line 47
    monitor-exit v1

    .line 48
    throw p0

    .line 49
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 50
.end method

.method public final onDisplayRemoved(I)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/systemui/settings/DisplayTrackerImpl$displayChangedListener$1;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    return-void

    .line 7
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/settings/DisplayTrackerImpl$displayChangedListener$1;->this$0:Lcom/android/systemui/settings/DisplayTrackerImpl;

    .line 8
    iget-object v1, v0, Lcom/android/systemui/settings/DisplayTrackerImpl;->displayCallbacks:Ljava/util/List;

    .line 10
    monitor-enter v1

    .line 12
    :try_start_0
    iget-object v0, v0, Lcom/android/systemui/settings/DisplayTrackerImpl;->displayCallbacks:Ljava/util/List;

    .line 13
    invoke-static {v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    .line 15
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    monitor-exit v1

    .line 19
    iget-object p0, p0, Lcom/android/systemui/settings/DisplayTrackerImpl$displayChangedListener$1;->this$0:Lcom/android/systemui/settings/DisplayTrackerImpl;

    .line 20
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    invoke-static {}, Lcom/android/systemui/util/Assert;->isNotMainThread()V

    .line 25
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 28
    move-result-object p0

    .line 31
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    move-result v0

    .line 35
    if-eqz v0, :cond_1

    .line 36
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    move-result-object v0

    .line 41
    check-cast v0, Lcom/android/systemui/settings/DisplayTrackerImpl$DisplayTrackerDataItem;

    .line 42
    iget-object v1, v0, Lcom/android/systemui/settings/DisplayTrackerImpl$DisplayTrackerDataItem;->callback:Ljava/lang/ref/WeakReference;

    .line 44
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 46
    move-result-object v1

    .line 49
    if-eqz v1, :cond_0

    .line 50
    new-instance v1, Lcom/android/systemui/settings/DisplayTrackerImpl$onDisplayAdded$$inlined$notifySubscribers$1;

    .line 52
    const/4 v2, 0x2

    .line 54
    invoke-direct {v1, v0, p1, v2}, Lcom/android/systemui/settings/DisplayTrackerImpl$onDisplayAdded$$inlined$notifySubscribers$1;-><init>(Lcom/android/systemui/settings/DisplayTrackerImpl$DisplayTrackerDataItem;II)V

    .line 55
    iget-object v0, v0, Lcom/android/systemui/settings/DisplayTrackerImpl$DisplayTrackerDataItem;->executor:Ljava/util/concurrent/Executor;

    .line 58
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 60
    goto :goto_0

    .line 63
    :cond_1
    return-void

    .line 64
    :catchall_0
    move-exception p0

    .line 65
    monitor-exit v1

    .line 66
    throw p0

    .line 67
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 68
.end method
