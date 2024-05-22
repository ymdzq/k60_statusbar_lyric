.class public final Lcom/android/systemui/statusbar/notification/collection/coordinator/SmartspaceDedupingCoordinator;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/collection/coordinator/Coordinator;


# instance fields
.field public final clock:Lcom/android/systemui/util/time/SystemClock;

.field public final collectionListener:Lcom/android/systemui/statusbar/notification/collection/coordinator/SmartspaceDedupingCoordinator$collectionListener$1;

.field public final executor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

.field public final filter:Lcom/android/systemui/statusbar/notification/collection/coordinator/SmartspaceDedupingCoordinator$filter$1;

.field public isOnLockscreen:Z

.field public final notifPipeline:Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

.field public final smartspaceController:Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;

.field public final statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

.field public final statusBarStateListener:Lcom/android/systemui/statusbar/notification/collection/coordinator/SmartspaceDedupingCoordinator$statusBarStateListener$1;

.field public trackedSmartspaceTargets:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/util/time/SystemClock;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SmartspaceDedupingCoordinator;->statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SmartspaceDedupingCoordinator;->smartspaceController:Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SmartspaceDedupingCoordinator;->notifPipeline:Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    .line 9
    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SmartspaceDedupingCoordinator;->executor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 11
    iput-object p5, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SmartspaceDedupingCoordinator;->clock:Lcom/android/systemui/util/time/SystemClock;

    .line 13
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 15
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SmartspaceDedupingCoordinator;->trackedSmartspaceTargets:Ljava/util/Map;

    .line 20
    new-instance p1, Lcom/android/systemui/statusbar/notification/collection/coordinator/SmartspaceDedupingCoordinator$filter$1;

    .line 22
    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/SmartspaceDedupingCoordinator$filter$1;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/SmartspaceDedupingCoordinator;)V

    .line 24
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SmartspaceDedupingCoordinator;->filter:Lcom/android/systemui/statusbar/notification/collection/coordinator/SmartspaceDedupingCoordinator$filter$1;

    .line 27
    new-instance p1, Lcom/android/systemui/statusbar/notification/collection/coordinator/SmartspaceDedupingCoordinator$collectionListener$1;

    .line 29
    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/SmartspaceDedupingCoordinator$collectionListener$1;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/SmartspaceDedupingCoordinator;)V

    .line 31
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SmartspaceDedupingCoordinator;->collectionListener:Lcom/android/systemui/statusbar/notification/collection/coordinator/SmartspaceDedupingCoordinator$collectionListener$1;

    .line 34
    new-instance p1, Lcom/android/systemui/statusbar/notification/collection/coordinator/SmartspaceDedupingCoordinator$statusBarStateListener$1;

    .line 36
    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/SmartspaceDedupingCoordinator$statusBarStateListener$1;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/SmartspaceDedupingCoordinator;)V

    .line 38
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SmartspaceDedupingCoordinator;->statusBarStateListener:Lcom/android/systemui/statusbar/notification/collection/coordinator/SmartspaceDedupingCoordinator$statusBarStateListener$1;

    .line 41
    return-void
    .line 43
.end method


# virtual methods
.method public final attach(Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SmartspaceDedupingCoordinator;->filter:Lcom/android/systemui/statusbar/notification/collection/coordinator/SmartspaceDedupingCoordinator$filter$1;

    .line 2
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->addPreGroupFilter(Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifFilter;)V

    .line 4
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SmartspaceDedupingCoordinator;->collectionListener:Lcom/android/systemui/statusbar/notification/collection/coordinator/SmartspaceDedupingCoordinator$collectionListener$1;

    .line 7
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->addCollectionListener(Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionListener;)V

    .line 9
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SmartspaceDedupingCoordinator;->statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 12
    check-cast p1, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    .line 14
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SmartspaceDedupingCoordinator;->statusBarStateListener:Lcom/android/systemui/statusbar/notification/collection/coordinator/SmartspaceDedupingCoordinator$statusBarStateListener$1;

    .line 16
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 18
    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SmartspaceDedupingCoordinator$attach$1;

    .line 21
    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/SmartspaceDedupingCoordinator$attach$1;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/SmartspaceDedupingCoordinator;)V

    .line 23
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SmartspaceDedupingCoordinator;->smartspaceController:Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;

    .line 26
    iget-object v2, v1, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->execution:Lcom/android/systemui/util/concurrency/ExecutionImpl;

    .line 28
    invoke-virtual {v2}, Lcom/android/systemui/util/concurrency/ExecutionImpl;->assertIsMainThread()V

    .line 30
    iget-object v1, v1, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->plugin:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;

    .line 33
    if-eqz v1, :cond_0

    .line 35
    invoke-interface {v1, v0}, Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;->registerListener(Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceTargetListener;)V

    .line 37
    :cond_0
    iget p1, p1, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mState:I

    .line 40
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/SmartspaceDedupingCoordinator;->recordStatusBarState(I)V

    .line 42
    return-void
    .line 45
.end method

.method public final recordStatusBarState(I)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SmartspaceDedupingCoordinator;->isOnLockscreen:Z

    .line 2
    const/4 v1, 0x1

    .line 4
    if-ne p1, v1, :cond_0

    .line 5
    goto :goto_0

    .line 7
    :cond_0
    const/4 v1, 0x0

    .line 8
    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SmartspaceDedupingCoordinator;->isOnLockscreen:Z

    .line 9
    if-eq v1, v0, :cond_1

    .line 11
    invoke-static {p1}, Lcom/android/systemui/statusbar/StatusBarState;->toString(I)Ljava/lang/String;

    .line 13
    move-result-object p1

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    .line 17
    const-string v1, "recordStatusBarState: "

    .line 19
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    move-result-object p1

    .line 30
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SmartspaceDedupingCoordinator;->filter:Lcom/android/systemui/statusbar/notification/collection/coordinator/SmartspaceDedupingCoordinator$filter$1;

    .line 31
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/Pluggable;->invalidateList(Ljava/lang/String;)V

    .line 33
    :cond_1
    return-void
    .line 36
.end method

.method public final updateFilterStatus(Lcom/android/systemui/statusbar/notification/collection/coordinator/TrackedSmartspaceTarget;)Z
    .locals 13

    .line 1
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/notification/collection/coordinator/TrackedSmartspaceTarget;->shouldFilter:Z

    .line 2
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SmartspaceDedupingCoordinator;->notifPipeline:Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    .line 4
    iget-object v2, p1, Lcom/android/systemui/statusbar/notification/collection/coordinator/TrackedSmartspaceTarget;->key:Ljava/lang/String;

    .line 6
    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->getEntry(Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 8
    move-result-object v1

    .line 11
    const/4 v2, 0x0

    .line 12
    const/4 v3, 0x1

    .line 13
    if-eqz v1, :cond_3

    .line 14
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SmartspaceDedupingCoordinator;->clock:Lcom/android/systemui/util/time/SystemClock;

    .line 16
    check-cast v4, Lcom/android/systemui/util/time/SystemClockImpl;

    .line 18
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 23
    move-result-wide v5

    .line 26
    iget-object v7, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    .line 27
    invoke-virtual {v7}, Landroid/service/notification/NotificationListenerService$Ranking;->getLastAudiblyAlertedMillis()J

    .line 29
    move-result-wide v7

    .line 32
    sget-wide v9, Lcom/android/systemui/statusbar/notification/collection/coordinator/SmartspaceDedupingCoordinatorKt;->ALERT_WINDOW:J

    .line 33
    add-long/2addr v7, v9

    .line 35
    iget-wide v11, p1, Lcom/android/systemui/statusbar/notification/collection/coordinator/TrackedSmartspaceTarget;->alertExceptionExpires:J

    .line 36
    cmp-long v11, v7, v11

    .line 38
    if-eqz v11, :cond_1

    .line 40
    cmp-long v11, v7, v5

    .line 42
    if-lez v11, :cond_1

    .line 44
    iget-object v11, p1, Lcom/android/systemui/statusbar/notification/collection/coordinator/TrackedSmartspaceTarget;->cancelTimeoutRunnable:Ljava/lang/Runnable;

    .line 46
    if-eqz v11, :cond_0

    .line 48
    invoke-interface {v11}, Ljava/lang/Runnable;->run()V

    .line 50
    :cond_0
    iput-wide v7, p1, Lcom/android/systemui/statusbar/notification/collection/coordinator/TrackedSmartspaceTarget;->alertExceptionExpires:J

    .line 53
    new-instance v11, Lcom/android/systemui/statusbar/notification/collection/coordinator/SmartspaceDedupingCoordinator$updateAlertException$1;

    .line 55
    invoke-direct {v11, p1, p0, v1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/SmartspaceDedupingCoordinator$updateAlertException$1;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/TrackedSmartspaceTarget;Lcom/android/systemui/statusbar/notification/collection/coordinator/SmartspaceDedupingCoordinator;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 57
    sub-long/2addr v7, v5

    .line 60
    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SmartspaceDedupingCoordinator;->executor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 61
    invoke-interface {v5, v11, v7, v8}, Lcom/android/systemui/util/concurrency/DelayableExecutor;->executeDelayed(Ljava/lang/Runnable;J)Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;

    .line 63
    move-result-object v5

    .line 66
    iput-object v5, p1, Lcom/android/systemui/statusbar/notification/collection/coordinator/TrackedSmartspaceTarget;->cancelTimeoutRunnable:Ljava/lang/Runnable;

    .line 67
    :cond_1
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 72
    move-result-wide v4

    .line 75
    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    .line 76
    invoke-virtual {v1}, Landroid/service/notification/NotificationListenerService$Ranking;->getLastAudiblyAlertedMillis()J

    .line 78
    move-result-wide v6

    .line 81
    sub-long/2addr v4, v6

    .line 82
    cmp-long v1, v4, v9

    .line 83
    if-gtz v1, :cond_2

    .line 85
    move v1, v3

    .line 87
    goto :goto_0

    .line 88
    :cond_2
    move v1, v2

    .line 89
    :goto_0
    xor-int/2addr v1, v3

    .line 90
    iput-boolean v1, p1, Lcom/android/systemui/statusbar/notification/collection/coordinator/TrackedSmartspaceTarget;->shouldFilter:Z

    .line 91
    :cond_3
    iget-boolean p1, p1, Lcom/android/systemui/statusbar/notification/collection/coordinator/TrackedSmartspaceTarget;->shouldFilter:Z

    .line 93
    if-eq p1, v0, :cond_4

    .line 95
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SmartspaceDedupingCoordinator;->isOnLockscreen:Z

    .line 97
    if-eqz p0, :cond_4

    .line 99
    move v2, v3

    .line 101
    :cond_4
    return v2
    .line 102
.end method
