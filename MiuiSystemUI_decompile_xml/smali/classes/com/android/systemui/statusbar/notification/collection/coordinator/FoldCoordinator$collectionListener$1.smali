.class public final Lcom/android/systemui/statusbar/notification/collection/coordinator/FoldCoordinator$collectionListener$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/FoldCoordinator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/FoldCoordinator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/FoldCoordinator$collectionListener$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/FoldCoordinator;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onEntryAdded(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 5

    .line 1
    invoke-static {}, Lcom/android/systemui/statusbar/notification/NotificationUtil;->shouldSuppressFold()Z

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    xor-int/2addr v0, v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v0, :cond_1

    .line 9
    invoke-static {p1, v2}, Lcom/android/systemui/statusbar/notification/NotificationUtil;->setFold(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)V

    .line 11
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/FoldCoordinator$collectionListener$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/FoldCoordinator;

    .line 14
    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/FoldCoordinator;->access$shouldIgnoreEntry(Lcom/android/systemui/statusbar/notification/collection/coordinator/FoldCoordinator;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    .line 16
    move-result v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/FoldCoordinator$collectionListener$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/FoldCoordinator;

    .line 22
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/FoldCoordinator;->scheduleHistoryNotification(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/FoldCoordinator$collectionListener$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/FoldCoordinator;

    .line 27
    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/FoldCoordinator;->foldEntranceController:Lcom/android/systemui/statusbar/notification/unimportant/FoldNotifController;

    .line 29
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/FoldCoordinator;->shouldShow()Z

    .line 31
    move-result v0

    .line 34
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/FoldCoordinator$collectionListener$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/FoldCoordinator;

    .line 35
    iget-object v4, v4, Lcom/android/systemui/statusbar/notification/collection/coordinator/FoldCoordinator;->userTracker:Lcom/android/systemui/settings/UserTracker;

    .line 37
    check-cast v4, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 39
    invoke-virtual {v4}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserHandle()Landroid/os/UserHandle;

    .line 41
    move-result-object v4

    .line 44
    invoke-virtual {v3, v4, v0}, Lcom/android/systemui/statusbar/notification/unimportant/FoldNotifController;->checkFoldEntrance(Landroid/os/UserHandle;Z)V

    .line 45
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/FoldCoordinator$collectionListener$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/FoldCoordinator;

    .line 48
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/FoldCoordinator;->foldManager:Lcom/android/systemui/statusbar/notification/unimportant/FoldNotifManager;

    .line 50
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 52
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->getTargetPackageName()Ljava/lang/String;

    .line 54
    move-result-object p1

    .line 57
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    invoke-static {}, Lcom/android/systemui/statusbar/notification/NotificationUtil;->shouldSuppressFold()Z

    .line 61
    move-result v0

    .line 64
    if-eqz v0, :cond_2

    .line 65
    goto :goto_0

    .line 67
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/unimportant/FoldNotifManager;->cache$delegate:Lkotlin/Lazy;

    .line 68
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 70
    move-result-object v0

    .line 73
    check-cast v0, Lcom/android/systemui/statusbar/notification/unimportant/PackageScoreCache;

    .line 74
    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/unimportant/PackageScoreCache;->mPkgEntities:Lcom/android/systemui/statusbar/notification/unimportant/PackageScoreCache$RankLruCache;

    .line 76
    invoke-virtual {v3, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    move-result-object v3

    .line 81
    if-nez v3, :cond_3

    .line 82
    new-instance v3, Lcom/android/systemui/statusbar/notification/unimportant/PackageEntity;

    .line 84
    invoke-direct {v3, p1}, Lcom/android/systemui/statusbar/notification/unimportant/PackageEntity;-><init>(Ljava/lang/String;)V

    .line 86
    iget-object v4, v0, Lcom/android/systemui/statusbar/notification/unimportant/PackageScoreCache;->mPkgEntities:Lcom/android/systemui/statusbar/notification/unimportant/PackageScoreCache$RankLruCache;

    .line 89
    invoke-virtual {v4, p1, v3}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    new-instance v4, Lcom/android/systemui/statusbar/notification/unimportant/PackageScoreCache$1;

    .line 94
    invoke-direct {v4, v0, v3}, Lcom/android/systemui/statusbar/notification/unimportant/PackageScoreCache$1;-><init>(Lcom/android/systemui/statusbar/notification/unimportant/PackageScoreCache;Lcom/android/systemui/statusbar/notification/unimportant/PackageEntity;)V

    .line 96
    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/unimportant/PackageScoreCache;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 99
    invoke-interface {v3, v4}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 101
    :cond_3
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/unimportant/PackageScoreCache;->mPkgEntities:Lcom/android/systemui/statusbar/notification/unimportant/PackageScoreCache$RankLruCache;

    .line 104
    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    move-result-object p1

    .line 109
    check-cast p1, Lcom/android/systemui/statusbar/notification/unimportant/PackageEntity;

    .line 110
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/unimportant/PackageEntity;->mLock:Ljava/lang/Object;

    .line 112
    monitor-enter v0

    .line 114
    :try_start_0
    iget v3, p1, Lcom/android/systemui/statusbar/notification/unimportant/PackageEntity;->mDailyShow:I

    .line 115
    add-int/2addr v3, v1

    .line 117
    iput v3, p1, Lcom/android/systemui/statusbar/notification/unimportant/PackageEntity;->mDailyShow:I

    .line 118
    iput-boolean v1, p1, Lcom/android/systemui/statusbar/notification/unimportant/PackageEntity;->mDataChanged:Z

    .line 120
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    iget p1, p0, Lcom/android/systemui/statusbar/notification/unimportant/FoldNotifManager;->count:I

    .line 123
    add-int/2addr p1, v1

    .line 125
    iput p1, p0, Lcom/android/systemui/statusbar/notification/unimportant/FoldNotifManager;->count:I

    .line 126
    const/4 v0, 0x5

    .line 128
    if-lt p1, v0, :cond_4

    .line 129
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/unimportant/FoldNotifManager;->cache$delegate:Lkotlin/Lazy;

    .line 131
    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 133
    move-result-object p1

    .line 136
    check-cast p1, Lcom/android/systemui/statusbar/notification/unimportant/PackageScoreCache;

    .line 137
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 139
    new-instance v0, Lcom/android/systemui/statusbar/notification/unimportant/PackageScoreCache$$ExternalSyntheticLambda0;

    .line 142
    invoke-direct {v0, p1}, Lcom/android/systemui/statusbar/notification/unimportant/PackageScoreCache$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/notification/unimportant/PackageScoreCache;)V

    .line 144
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/unimportant/PackageScoreCache;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 147
    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 149
    iput v2, p0, Lcom/android/systemui/statusbar/notification/unimportant/FoldNotifManager;->count:I

    .line 152
    :cond_4
    :goto_0
    return-void

    .line 154
    :catchall_0
    move-exception p0

    .line 155
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 156
    throw p0
    .line 157
.end method

.method public final onEntryRemoved(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/FoldCoordinator$collectionListener$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/FoldCoordinator;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    new-instance p2, Lcom/android/systemui/statusbar/notification/collection/coordinator/FoldCoordinator$cancelScheduledTask$1;

    .line 7
    invoke-direct {p2, p0, p1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/FoldCoordinator$cancelScheduledTask$1;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/FoldCoordinator;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 9
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/FoldCoordinator;->bgHandler:Landroid/os/Handler;

    .line 12
    invoke-virtual {v0, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 14
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/FoldCoordinator;->mPendingNotifications:Ljava/util/List;

    .line 17
    check-cast p2, Ljava/util/ArrayList;

    .line 19
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    .line 21
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 23
    iget-boolean p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isFold:Z

    .line 26
    if-eqz p1, :cond_0

    .line 28
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/FoldCoordinator;->shouldShow()Z

    .line 30
    move-result p1

    .line 33
    if-nez p1, :cond_0

    .line 34
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/FoldCoordinator;->foldManager:Lcom/android/systemui/statusbar/notification/unimportant/FoldNotifManager;

    .line 36
    const/4 p2, 0x0

    .line 38
    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/notification/unimportant/FoldNotifManager;->setShowingUnimportant(Z)V

    .line 39
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/FoldCoordinator;->userTracker:Lcom/android/systemui/settings/UserTracker;

    .line 42
    check-cast p1, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 44
    invoke-virtual {p1}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserHandle()Landroid/os/UserHandle;

    .line 46
    move-result-object p1

    .line 49
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/FoldCoordinator;->foldEntranceController:Lcom/android/systemui/statusbar/notification/unimportant/FoldNotifController;

    .line 50
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/unimportant/FoldNotifController;->checkFoldEntrance(Landroid/os/UserHandle;Z)V

    .line 52
    :cond_0
    return-void
    .line 55
.end method

.method public final onEntryUpdated(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/FoldCoordinator$collectionListener$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/FoldCoordinator;

    .line 2
    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/FoldCoordinator;->access$shouldIgnoreEntry(Lcom/android/systemui/statusbar/notification/collection/coordinator/FoldCoordinator;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    .line 4
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    return-void

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/notification/NotificationUtil;->setFold(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)V

    .line 12
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/FoldCoordinator;->scheduleHistoryNotification(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 15
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/FoldCoordinator;->foldEntranceController:Lcom/android/systemui/statusbar/notification/unimportant/FoldNotifController;

    .line 18
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/FoldCoordinator;->shouldShow()Z

    .line 20
    move-result v0

    .line 23
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/FoldCoordinator;->userTracker:Lcom/android/systemui/settings/UserTracker;

    .line 24
    check-cast v1, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 26
    invoke-virtual {v1}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserHandle()Landroid/os/UserHandle;

    .line 28
    move-result-object v1

    .line 31
    invoke-virtual {p1, v1, v0}, Lcom/android/systemui/statusbar/notification/unimportant/FoldNotifController;->checkFoldEntrance(Landroid/os/UserHandle;Z)V

    .line 32
    const-string p1, "recover"

    .line 35
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/FoldCoordinator;->invalidateListWithFold(Ljava/lang/String;)V

    .line 37
    return-void
    .line 40
.end method
