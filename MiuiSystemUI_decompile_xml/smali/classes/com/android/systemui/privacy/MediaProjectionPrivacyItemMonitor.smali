.class public final Lcom/android/systemui/privacy/MediaProjectionPrivacyItemMonitor;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/privacy/PrivacyItemMonitor;


# instance fields
.field public final bgHandler:Landroid/os/Handler;

.field public callback:Lcom/android/systemui/privacy/PrivacyItemController$privacyItemMonitorCallback$1;

.field public listening:Z

.field public final lock:Ljava/lang/Object;

.field public final logger:Lcom/android/systemui/privacy/logging/PrivacyLogger;

.field public mediaProjectionAvailable:Z

.field public final mediaProjectionCallback:Lcom/android/systemui/privacy/MediaProjectionPrivacyItemMonitor$mediaProjectionCallback$1;

.field public final mediaProjectionManager:Landroid/media/projection/MediaProjectionManager;

.field public final optionsCallback:Lcom/android/systemui/privacy/MediaProjectionPrivacyItemMonitor$optionsCallback$1;

.field public final packageManager:Landroid/content/pm/PackageManager;

.field public final privacyConfig:Lcom/android/systemui/privacy/PrivacyConfig;

.field public final privacyItems:Ljava/util/List;

.field public final systemClock:Lcom/android/systemui/util/time/SystemClock;


# direct methods
.method public constructor <init>(Landroid/media/projection/MediaProjectionManager;Landroid/content/pm/PackageManager;Lcom/android/systemui/privacy/PrivacyConfig;Landroid/os/Handler;Lcom/android/systemui/util/time/SystemClock;Lcom/android/systemui/privacy/logging/PrivacyLogger;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/privacy/MediaProjectionPrivacyItemMonitor;->mediaProjectionManager:Landroid/media/projection/MediaProjectionManager;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/privacy/MediaProjectionPrivacyItemMonitor;->packageManager:Landroid/content/pm/PackageManager;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/privacy/MediaProjectionPrivacyItemMonitor;->privacyConfig:Lcom/android/systemui/privacy/PrivacyConfig;

    .line 9
    iput-object p4, p0, Lcom/android/systemui/privacy/MediaProjectionPrivacyItemMonitor;->bgHandler:Landroid/os/Handler;

    .line 11
    iput-object p5, p0, Lcom/android/systemui/privacy/MediaProjectionPrivacyItemMonitor;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    .line 13
    iput-object p6, p0, Lcom/android/systemui/privacy/MediaProjectionPrivacyItemMonitor;->logger:Lcom/android/systemui/privacy/logging/PrivacyLogger;

    .line 15
    new-instance p1, Ljava/lang/Object;

    .line 17
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/android/systemui/privacy/MediaProjectionPrivacyItemMonitor;->lock:Ljava/lang/Object;

    .line 22
    iget-boolean p1, p3, Lcom/android/systemui/privacy/PrivacyConfig;->mediaProjectionAvailable:Z

    .line 24
    iput-boolean p1, p0, Lcom/android/systemui/privacy/MediaProjectionPrivacyItemMonitor;->mediaProjectionAvailable:Z

    .line 26
    new-instance p1, Ljava/util/ArrayList;

    .line 28
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/android/systemui/privacy/MediaProjectionPrivacyItemMonitor;->privacyItems:Ljava/util/List;

    .line 33
    new-instance p1, Lcom/android/systemui/privacy/MediaProjectionPrivacyItemMonitor$optionsCallback$1;

    .line 35
    invoke-direct {p1, p0}, Lcom/android/systemui/privacy/MediaProjectionPrivacyItemMonitor$optionsCallback$1;-><init>(Lcom/android/systemui/privacy/MediaProjectionPrivacyItemMonitor;)V

    .line 37
    iput-object p1, p0, Lcom/android/systemui/privacy/MediaProjectionPrivacyItemMonitor;->optionsCallback:Lcom/android/systemui/privacy/MediaProjectionPrivacyItemMonitor$optionsCallback$1;

    .line 40
    new-instance p2, Lcom/android/systemui/privacy/MediaProjectionPrivacyItemMonitor$mediaProjectionCallback$1;

    .line 42
    invoke-direct {p2, p0}, Lcom/android/systemui/privacy/MediaProjectionPrivacyItemMonitor$mediaProjectionCallback$1;-><init>(Lcom/android/systemui/privacy/MediaProjectionPrivacyItemMonitor;)V

    .line 44
    iput-object p2, p0, Lcom/android/systemui/privacy/MediaProjectionPrivacyItemMonitor;->mediaProjectionCallback:Lcom/android/systemui/privacy/MediaProjectionPrivacyItemMonitor$mediaProjectionCallback$1;

    .line 47
    invoke-virtual {p3, p1}, Lcom/android/systemui/privacy/PrivacyConfig;->addCallback(Lcom/android/systemui/privacy/PrivacyConfig$Callback;)V

    .line 49
    invoke-virtual {p0}, Lcom/android/systemui/privacy/MediaProjectionPrivacyItemMonitor;->setListeningStateLocked()V

    .line 52
    return-void
    .line 55
.end method


# virtual methods
.method public final dispatchOnPrivacyItemsChanged()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/privacy/MediaProjectionPrivacyItemMonitor;->lock:Ljava/lang/Object;

    .line 2
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/privacy/MediaProjectionPrivacyItemMonitor;->callback:Lcom/android/systemui/privacy/PrivacyItemController$privacyItemMonitorCallback$1;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit v0

    .line 7
    if-eqz v1, :cond_0

    .line 8
    iget-object p0, p0, Lcom/android/systemui/privacy/MediaProjectionPrivacyItemMonitor;->bgHandler:Landroid/os/Handler;

    .line 10
    new-instance v0, Lcom/android/systemui/privacy/MediaProjectionPrivacyItemMonitor$dispatchOnPrivacyItemsChanged$1;

    .line 12
    invoke-direct {v0, v1}, Lcom/android/systemui/privacy/MediaProjectionPrivacyItemMonitor$dispatchOnPrivacyItemsChanged$1;-><init>(Lcom/android/systemui/privacy/PrivacyItemController$privacyItemMonitorCallback$1;)V

    .line 14
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 17
    :cond_0
    return-void

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    monitor-exit v0

    .line 22
    throw p0
    .line 23
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6

    .line 1
    const-string p2, "Privacy Items: "

    .line 2
    const-string v0, "Callback: "

    .line 4
    const-string v1, "mediaProjectionAvailable: "

    .line 6
    const-string v2, "Listening: "

    .line 8
    invoke-static {p1}, Lcom/android/systemui/util/DumpUtilsKt;->asIndenting(Ljava/io/PrintWriter;)Landroid/util/IndentingPrintWriter;

    .line 10
    move-result-object p1

    .line 13
    const-string v3, "MediaProjectionPrivacyItemMonitor:"

    .line 14
    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 16
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 19
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/privacy/MediaProjectionPrivacyItemMonitor;->lock:Ljava/lang/Object;

    .line 22
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 24
    :try_start_1
    iget-boolean v4, p0, Lcom/android/systemui/privacy/MediaProjectionPrivacyItemMonitor;->listening:Z

    .line 25
    new-instance v5, Ljava/lang/StringBuilder;

    .line 27
    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    move-result-object v2

    .line 38
    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 39
    iget-boolean v2, p0, Lcom/android/systemui/privacy/MediaProjectionPrivacyItemMonitor;->mediaProjectionAvailable:Z

    .line 42
    new-instance v4, Ljava/lang/StringBuilder;

    .line 44
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    move-result-object v1

    .line 55
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 56
    iget-object v1, p0, Lcom/android/systemui/privacy/MediaProjectionPrivacyItemMonitor;->callback:Lcom/android/systemui/privacy/PrivacyItemController$privacyItemMonitorCallback$1;

    .line 59
    new-instance v2, Ljava/lang/StringBuilder;

    .line 61
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    move-result-object v0

    .line 72
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 73
    iget-object p0, p0, Lcom/android/systemui/privacy/MediaProjectionPrivacyItemMonitor;->privacyItems:Ljava/util/List;

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    .line 78
    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 80
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    move-result-object p0

    .line 89
    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 90
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 93
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 94
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->flush()V

    .line 97
    return-void

    .line 100
    :catchall_0
    move-exception p0

    .line 101
    :try_start_3
    monitor-exit v3

    .line 102
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 103
    :catchall_1
    move-exception p0

    .line 104
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 105
    throw p0
    .line 108
.end method

.method public final getActivePrivacyItems()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/privacy/MediaProjectionPrivacyItemMonitor;->lock:Ljava/lang/Object;

    .line 2
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/privacy/MediaProjectionPrivacyItemMonitor;->privacyItems:Ljava/util/List;

    .line 5
    invoke-static {p0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    .line 7
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    monitor-exit v0

    .line 11
    return-object p0

    .line 12
    :catchall_0
    move-exception p0

    .line 13
    monitor-exit v0

    .line 14
    throw p0
    .line 15
.end method

.method public final makePrivacyItem(Landroid/media/projection/MediaProjectionInfo;)Lcom/android/systemui/privacy/PrivacyItem;
    .locals 7

    .line 1
    invoke-virtual {p1}, Landroid/media/projection/MediaProjectionInfo;->getUserHandle()Landroid/os/UserHandle;

    .line 2
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    .line 6
    move-result v0

    .line 9
    iget-object v1, p0, Lcom/android/systemui/privacy/MediaProjectionPrivacyItemMonitor;->packageManager:Landroid/content/pm/PackageManager;

    .line 10
    invoke-virtual {p1}, Landroid/media/projection/MediaProjectionInfo;->getPackageName()Ljava/lang/String;

    .line 12
    move-result-object v2

    .line 15
    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    .line 16
    move-result v0

    .line 19
    new-instance v3, Lcom/android/systemui/privacy/PrivacyApplication;

    .line 20
    invoke-virtual {p1}, Landroid/media/projection/MediaProjectionInfo;->getPackageName()Ljava/lang/String;

    .line 22
    move-result-object p1

    .line 25
    invoke-direct {v3, p1, v0}, Lcom/android/systemui/privacy/PrivacyApplication;-><init>(Ljava/lang/String;I)V

    .line 26
    iget-object p0, p0, Lcom/android/systemui/privacy/MediaProjectionPrivacyItemMonitor;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    .line 29
    check-cast p0, Lcom/android/systemui/util/time/SystemClockImpl;

    .line 31
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 36
    move-result-wide v4

    .line 39
    new-instance p0, Lcom/android/systemui/privacy/PrivacyItem;

    .line 40
    sget-object v2, Lcom/android/systemui/privacy/PrivacyType;->TYPE_MEDIA_PROJECTION:Lcom/android/systemui/privacy/PrivacyType;

    .line 42
    const/4 v6, 0x0

    .line 44
    move-object v1, p0

    .line 45
    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/privacy/PrivacyItem;-><init>(Lcom/android/systemui/privacy/PrivacyType;Lcom/android/systemui/privacy/PrivacyApplication;JZ)V

    .line 46
    return-object p0
    .line 49
.end method

.method public final setListeningStateLocked()V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/privacy/MediaProjectionPrivacyItemMonitor;->mediaProjectionAvailable:Z

    .line 2
    iget-boolean v1, p0, Lcom/android/systemui/privacy/MediaProjectionPrivacyItemMonitor;->listening:Z

    .line 4
    if-ne v1, v0, :cond_0

    .line 6
    return-void

    .line 8
    :cond_0
    iput-boolean v0, p0, Lcom/android/systemui/privacy/MediaProjectionPrivacyItemMonitor;->listening:Z

    .line 9
    iget-object v1, p0, Lcom/android/systemui/privacy/MediaProjectionPrivacyItemMonitor;->logger:Lcom/android/systemui/privacy/logging/PrivacyLogger;

    .line 11
    iget-object v2, p0, Lcom/android/systemui/privacy/MediaProjectionPrivacyItemMonitor;->privacyItems:Ljava/util/List;

    .line 13
    iget-object v3, p0, Lcom/android/systemui/privacy/MediaProjectionPrivacyItemMonitor;->mediaProjectionCallback:Lcom/android/systemui/privacy/MediaProjectionPrivacyItemMonitor$mediaProjectionCallback$1;

    .line 15
    iget-object v4, p0, Lcom/android/systemui/privacy/MediaProjectionPrivacyItemMonitor;->mediaProjectionManager:Landroid/media/projection/MediaProjectionManager;

    .line 17
    if-eqz v0, :cond_1

    .line 19
    iget-object v0, p0, Lcom/android/systemui/privacy/MediaProjectionPrivacyItemMonitor;->bgHandler:Landroid/os/Handler;

    .line 21
    invoke-virtual {v4, v3, v0}, Landroid/media/projection/MediaProjectionManager;->addCallback(Landroid/media/projection/MediaProjectionManager$Callback;Landroid/os/Handler;)V

    .line 23
    invoke-virtual {v4}, Landroid/media/projection/MediaProjectionManager;->getActiveProjectionInfo()Landroid/media/projection/MediaProjectionInfo;

    .line 26
    move-result-object v0

    .line 29
    if-eqz v0, :cond_3

    .line 30
    invoke-virtual {p0, v0}, Lcom/android/systemui/privacy/MediaProjectionPrivacyItemMonitor;->makePrivacyItem(Landroid/media/projection/MediaProjectionInfo;)Lcom/android/systemui/privacy/PrivacyItem;

    .line 32
    move-result-object v0

    .line 35
    check-cast v2, Ljava/util/ArrayList;

    .line 36
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    iget-object v0, v0, Lcom/android/systemui/privacy/PrivacyItem;->application:Lcom/android/systemui/privacy/PrivacyApplication;

    .line 41
    iget v2, v0, Lcom/android/systemui/privacy/PrivacyApplication;->uid:I

    .line 43
    iget-object v0, v0, Lcom/android/systemui/privacy/PrivacyApplication;->packageName:Ljava/lang/String;

    .line 45
    const/4 v3, 0x1

    .line 47
    invoke-virtual {v1, v3, v2, v0}, Lcom/android/systemui/privacy/logging/PrivacyLogger;->logUpdatedItemFromMediaProjection(ZILjava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcom/android/systemui/privacy/MediaProjectionPrivacyItemMonitor;->dispatchOnPrivacyItemsChanged()V

    .line 51
    goto :goto_1

    .line 54
    :cond_1
    invoke-virtual {v4, v3}, Landroid/media/projection/MediaProjectionManager;->removeCallback(Landroid/media/projection/MediaProjectionManager$Callback;)V

    .line 55
    check-cast v2, Ljava/util/ArrayList;

    .line 58
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 60
    move-result-object v0

    .line 63
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 64
    move-result v3

    .line 67
    if-eqz v3, :cond_2

    .line 68
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 70
    move-result-object v3

    .line 73
    check-cast v3, Lcom/android/systemui/privacy/PrivacyItem;

    .line 74
    iget-object v3, v3, Lcom/android/systemui/privacy/PrivacyItem;->application:Lcom/android/systemui/privacy/PrivacyApplication;

    .line 76
    iget v4, v3, Lcom/android/systemui/privacy/PrivacyApplication;->uid:I

    .line 78
    iget-object v3, v3, Lcom/android/systemui/privacy/PrivacyApplication;->packageName:Ljava/lang/String;

    .line 80
    const/4 v5, 0x0

    .line 82
    invoke-virtual {v1, v5, v4, v3}, Lcom/android/systemui/privacy/logging/PrivacyLogger;->logUpdatedItemFromMediaProjection(ZILjava/lang/String;)V

    .line 83
    goto :goto_0

    .line 86
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 87
    invoke-virtual {p0}, Lcom/android/systemui/privacy/MediaProjectionPrivacyItemMonitor;->dispatchOnPrivacyItemsChanged()V

    .line 90
    :cond_3
    :goto_1
    return-void
    .line 93
.end method

.method public final startListening(Lcom/android/systemui/privacy/PrivacyItemController$privacyItemMonitorCallback$1;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/privacy/MediaProjectionPrivacyItemMonitor;->lock:Ljava/lang/Object;

    .line 2
    monitor-enter v0

    .line 4
    :try_start_0
    iput-object p1, p0, Lcom/android/systemui/privacy/MediaProjectionPrivacyItemMonitor;->callback:Lcom/android/systemui/privacy/PrivacyItemController$privacyItemMonitorCallback$1;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit v0

    .line 7
    return-void

    .line 8
    :catchall_0
    move-exception p0

    .line 9
    monitor-exit v0

    .line 10
    throw p0
    .line 11
.end method

.method public final stopListening()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/privacy/MediaProjectionPrivacyItemMonitor;->lock:Ljava/lang/Object;

    .line 2
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_0
    iput-object v1, p0, Lcom/android/systemui/privacy/MediaProjectionPrivacyItemMonitor;->callback:Lcom/android/systemui/privacy/PrivacyItemController$privacyItemMonitorCallback$1;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit v0

    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception p0

    .line 10
    monitor-exit v0

    .line 11
    throw p0
    .line 12
.end method
