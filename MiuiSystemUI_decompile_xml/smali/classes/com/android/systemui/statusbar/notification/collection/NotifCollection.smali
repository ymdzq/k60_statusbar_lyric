.class public final Lcom/android/systemui/statusbar/notification/collection/NotifCollection;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/Dumpable;
.implements Lcom/android/systemui/statusbar/notification/collection/PipelineDumpable;


# instance fields
.field public mAmDispatchingToOtherCode:Z

.field public mAttached:Z

.field public final mBgExecutor:Ljava/util/concurrent/Executor;

.field public mBuildListener:Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder$1;

.field public final mClock:Lcom/android/systemui/util/time/SystemClock;

.field public final mDismissInterceptors:Ljava/util/List;

.field public final mDismissibilityProvider:Lcom/android/systemui/statusbar/notification/collection/provider/NotificationDismissibilityProvider;

.field public final mDumpManager:Lcom/android/systemui/dump/DumpManager;

.field public final mEulogizer:Lcom/android/systemui/dump/LogBufferEulogizer;

.field public final mEventQueue:Ljava/util/Queue;

.field public final mFutureDismissals:Ljava/util/HashMap;

.field public final mInconsistencyTracker:Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionInconsistencyTracker;

.field public final mLifetimeExtenders:Ljava/util/List;

.field public final mLogger:Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger;

.field public final mMainHandler:Landroid/os/Handler;

.field public final mNotifCollectionListeners:Ljava/util/List;

.field public final mNotifHandler:Lcom/android/systemui/statusbar/notification/collection/NotifCollection$1;

.field public final mNotificationSet:Ljava/util/Map;

.field public final mReadOnlyNotificationSet:Ljava/util/Collection;

.field public final mRebuildListRunnable:Lcom/android/systemui/statusbar/notification/collection/NotifCollection$$ExternalSyntheticLambda0;

.field public final mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 2
    const-wide/16 v1, 0x5

    .line 4
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 6
    return-void
    .line 9
.end method

.method public constructor <init>(Lcom/android/internal/statusbar/IStatusBarService;Lcom/android/systemui/util/time/SystemClock;Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger;Landroid/os/Handler;Ljava/util/concurrent/Executor;Lcom/android/systemui/dump/LogBufferEulogizer;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/statusbar/notification/collection/provider/NotificationDismissibilityProvider;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/util/ArrayMap;

    .line 5
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mNotificationSet:Ljava/util/Map;

    .line 10
    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 12
    move-result-object v0

    .line 15
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    .line 16
    move-result-object v0

    .line 19
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mReadOnlyNotificationSet:Ljava/util/Collection;

    .line 20
    new-instance v0, Ljava/util/HashMap;

    .line 22
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 24
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mFutureDismissals:Ljava/util/HashMap;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    .line 29
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 31
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mNotifCollectionListeners:Ljava/util/List;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    .line 36
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 38
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mLifetimeExtenders:Ljava/util/List;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    .line 43
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 45
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mDismissInterceptors:Ljava/util/List;

    .line 48
    new-instance v0, Ljava/util/ArrayDeque;

    .line 50
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 52
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mEventQueue:Ljava/util/Queue;

    .line 55
    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection$$ExternalSyntheticLambda0;

    .line 57
    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/collection/NotifCollection$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/notification/collection/NotifCollection;)V

    .line 59
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mRebuildListRunnable:Lcom/android/systemui/statusbar/notification/collection/NotifCollection$$ExternalSyntheticLambda0;

    .line 62
    const/4 v0, 0x0

    .line 64
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mAttached:Z

    .line 65
    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection$1;

    .line 67
    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/collection/NotifCollection$1;-><init>(Lcom/android/systemui/statusbar/notification/collection/NotifCollection;)V

    .line 69
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mNotifHandler:Lcom/android/systemui/statusbar/notification/collection/NotifCollection$1;

    .line 72
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 74
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mClock:Lcom/android/systemui/util/time/SystemClock;

    .line 76
    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mLogger:Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger;

    .line 78
    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mMainHandler:Landroid/os/Handler;

    .line 80
    iput-object p5, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mBgExecutor:Ljava/util/concurrent/Executor;

    .line 82
    iput-object p6, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mEulogizer:Lcom/android/systemui/dump/LogBufferEulogizer;

    .line 84
    iput-object p7, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mDumpManager:Lcom/android/systemui/dump/DumpManager;

    .line 86
    new-instance p1, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionInconsistencyTracker;

    .line 88
    invoke-direct {p1, p3}, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionInconsistencyTracker;-><init>(Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger;)V

    .line 90
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mInconsistencyTracker:Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionInconsistencyTracker;

    .line 93
    iput-object p8, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mDismissibilityProvider:Lcom/android/systemui/statusbar/notification/collection/provider/NotificationDismissibilityProvider;

    .line 95
    return-void
    .line 97
.end method

.method public static hasFlag(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 2
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 4
    move-result-object p0

    .line 7
    iget p0, p0, Landroid/app/Notification;->flags:I

    .line 8
    and-int/2addr p0, p1

    .line 10
    if-eqz p0, :cond_0

    .line 11
    const/4 p0, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    :goto_0
    return p0
    .line 16
.end method

.method public static shouldAutoDismissChildren(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 2
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    move-result p1

    .line 11
    if-eqz p1, :cond_1

    .line 12
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 14
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 16
    move-result-object p1

    .line 19
    invoke-virtual {p1}, Landroid/app/Notification;->isGroupSummary()Z

    .line 20
    move-result p1

    .line 23
    if-nez p1, :cond_1

    .line 24
    const/4 p1, 0x2

    .line 26
    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->hasFlag(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)Z

    .line 27
    move-result p1

    .line 30
    if-nez p1, :cond_1

    .line 31
    const/16 p1, 0x1000

    .line 33
    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->hasFlag(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)Z

    .line 35
    move-result p1

    .line 38
    if-nez p1, :cond_1

    .line 39
    const/16 p1, 0x20

    .line 41
    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->hasFlag(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)Z

    .line 43
    move-result p1

    .line 46
    if-nez p1, :cond_1

    .line 47
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getChannel()Landroid/app/NotificationChannel;

    .line 49
    move-result-object p1

    .line 52
    if-eqz p1, :cond_0

    .line 53
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getChannel()Landroid/app/NotificationChannel;

    .line 55
    move-result-object p1

    .line 58
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->isImportantConversation()Z

    .line 59
    move-result p1

    .line 62
    if-nez p1, :cond_1

    .line 63
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mDismissState:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry$DismissState;

    .line 65
    sget-object p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry$DismissState;->DISMISSED:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry$DismissState;

    .line 67
    if-eq p0, p1, :cond_1

    .line 69
    const/4 p0, 0x1

    .line 71
    goto :goto_0

    .line 72
    :cond_1
    const/4 p0, 0x0

    .line 73
    :goto_0
    return p0
    .line 74
.end method


# virtual methods
.method public final applyRanking(Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mNotificationSet:Ljava/util/Map;

    .line 2
    check-cast v0, Landroid/util/ArrayMap;

    .line 4
    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 6
    move-result-object v0

    .line 9
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 10
    move-result-object v0

    .line 13
    const/4 v1, 0x0

    .line 14
    move-object v2, v1

    .line 15
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    move-result v3

    .line 19
    if-eqz v3, :cond_3

    .line 20
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    move-result-object v3

    .line 25
    check-cast v3, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 26
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isCanceled()Z

    .line 28
    move-result v4

    .line 31
    if-nez v4, :cond_0

    .line 32
    new-instance v4, Landroid/service/notification/NotificationListenerService$Ranking;

    .line 34
    invoke-direct {v4}, Landroid/service/notification/NotificationListenerService$Ranking;-><init>()V

    .line 36
    iget-object v5, v3, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    .line 39
    invoke-virtual {p1, v5, v4}, Landroid/service/notification/NotificationListenerService$RankingMap;->getRanking(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)Z

    .line 41
    move-result v6

    .line 44
    if-eqz v6, :cond_1

    .line 45
    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->setRanking(Landroid/service/notification/NotificationListenerService$Ranking;)V

    .line 47
    invoke-virtual {v4}, Landroid/service/notification/NotificationListenerService$Ranking;->getOverrideGroupKey()Ljava/lang/String;

    .line 50
    move-result-object v4

    .line 53
    iget-object v5, v3, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 54
    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getOverrideGroupKey()Ljava/lang/String;

    .line 56
    move-result-object v5

    .line 59
    invoke-static {v5, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 60
    move-result v5

    .line 63
    if-nez v5, :cond_0

    .line 64
    iget-object v3, v3, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 66
    invoke-virtual {v3, v4}, Landroid/service/notification/StatusBarNotification;->setOverrideGroupKey(Ljava/lang/String;)V

    .line 68
    goto :goto_0

    .line 71
    :cond_1
    if-nez v2, :cond_2

    .line 72
    new-instance v2, Landroid/util/ArrayMap;

    .line 74
    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 76
    :cond_2
    invoke-virtual {v2, v5, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    goto :goto_0

    .line 82
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mInconsistencyTracker:Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionInconsistencyTracker;

    .line 83
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionInconsistencyTracker;->logNewMissingNotifications(Landroid/service/notification/NotificationListenerService$RankingMap;)V

    .line 85
    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionInconsistencyTracker;->notificationsWithoutRankings:Ljava/util/Set;

    .line 88
    if-eqz v2, :cond_4

    .line 90
    move-object v4, v2

    .line 92
    goto :goto_1

    .line 93
    :cond_4
    invoke-static {}, Lkotlin/collections/MapsKt___MapsJvmKt;->emptyMap()Ljava/util/Map;

    .line 94
    move-result-object v4

    .line 97
    :goto_1
    invoke-virtual {v0, v3, v4, p1}, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionInconsistencyTracker;->maybeLogInconsistentRankings(Ljava/util/Set;Ljava/util/Map;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    .line 98
    if-eqz v2, :cond_5

    .line 101
    invoke-virtual {v2}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    .line 103
    move-result-object v1

    .line 106
    :cond_5
    if-nez v1, :cond_6

    .line 107
    sget-object v1, Lkotlin/collections/EmptySet;->INSTANCE:Lkotlin/collections/EmptySet;

    .line 109
    :cond_6
    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionInconsistencyTracker;->notificationsWithoutRankings:Ljava/util/Set;

    .line 111
    if-eqz v2, :cond_7

    .line 113
    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 115
    move-result-object p1

    .line 118
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 119
    move-result-object p1

    .line 122
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 123
    move-result v0

    .line 126
    if-eqz v0, :cond_7

    .line 127
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 129
    move-result-object v0

    .line 132
    check-cast v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 133
    const/4 v1, 0x0

    .line 135
    iput v1, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mCancellationReason:I

    .line 136
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->tryRemoveNotification(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    .line 138
    goto :goto_2

    .line 141
    :cond_7
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mEventQueue:Ljava/util/Queue;

    .line 142
    new-instance p1, Lcom/android/systemui/statusbar/notification/collection/notifcollection/RankingAppliedEvent;

    .line 144
    invoke-direct {p1}, Lcom/android/systemui/statusbar/notification/collection/notifcollection/RankingAppliedEvent;-><init>()V

    .line 146
    check-cast p0, Ljava/util/ArrayDeque;

    .line 149
    invoke-virtual {p0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 151
    return-void
    .line 154
.end method

.method public final cancelDismissInterception(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mAmDispatchingToOtherCode:Z

    .line 3
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mDismissInterceptors:Ljava/util/List;

    .line 5
    check-cast v0, Ljava/util/ArrayList;

    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 9
    move-result-object v0

    .line 12
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    move-result v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v1

    .line 22
    check-cast v1, Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator$2;

    .line 23
    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator$2;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator;

    .line 25
    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator;->mInterceptedDismissalEntries:Ljava/util/Set;

    .line 27
    iget-object v2, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    .line 29
    check-cast v1, Ljava/util/HashSet;

    .line 31
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 33
    goto :goto_0

    .line 36
    :cond_0
    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mAmDispatchingToOtherCode:Z

    .line 38
    iget-object p0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mDismissInterceptors:Ljava/util/List;

    .line 40
    check-cast p0, Ljava/util/ArrayList;

    .line 42
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 44
    return-void
    .line 47
.end method

.method public final cancelLifetimeExtension(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mAmDispatchingToOtherCode:Z

    .line 3
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mLifetimeExtenders:Ljava/util/List;

    .line 5
    check-cast v0, Ljava/util/ArrayList;

    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 9
    move-result-object v0

    .line 12
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    move-result v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v1

    .line 22
    check-cast v1, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifLifetimeExtender;

    .line 23
    invoke-interface {v1, p1}, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifLifetimeExtender;->cancelLifetimeExtension(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 25
    goto :goto_0

    .line 28
    :cond_0
    const/4 v0, 0x0

    .line 29
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mAmDispatchingToOtherCode:Z

    .line 30
    iget-object p0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mLifetimeExtenders:Ljava/util/List;

    .line 32
    check-cast p0, Ljava/util/ArrayList;

    .line 34
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 36
    return-void
    .line 39
.end method

.method public final checkForReentrantCall()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mAmDispatchingToOtherCode:Z

    .line 2
    if-nez v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 7
    const-string v1, "Reentrant call detected"

    .line 9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 11
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mEulogizer:Lcom/android/systemui/dump/LogBufferEulogizer;

    .line 14
    invoke-virtual {p0, v0}, Lcom/android/systemui/dump/LogBufferEulogizer;->record(Ljava/lang/Exception;)V

    .line 16
    throw v0
    .line 19
.end method

.method public final dismissNotification(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/collection/notifcollection/DismissedByUserStats;)V
    .locals 1

    .line 1
    new-instance v0, Landroid/util/Pair;

    .line 2
    invoke-direct {v0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4
    invoke-static {v0}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    .line 7
    move-result-object p1

    .line 10
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->dismissNotifications(Ljava/util/List;)V

    .line 11
    return-void
    .line 14
.end method

.method public final dismissNotifications(Ljava/util/List;)V
    .locals 8

    .line 1
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->checkForReentrantCall()V

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    const/4 v1, 0x0

    .line 13
    move v2, v1

    .line 14
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 15
    move-result v3

    .line 18
    if-ge v2, v3, :cond_6

    .line 19
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 21
    move-result-object v3

    .line 24
    check-cast v3, Landroid/util/Pair;

    .line 25
    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 27
    check-cast v3, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 29
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 31
    move-result-object v4

    .line 34
    check-cast v4, Landroid/util/Pair;

    .line 35
    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 37
    check-cast v4, Lcom/android/systemui/statusbar/notification/collection/notifcollection/DismissedByUserStats;

    .line 39
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mNotificationSet:Ljava/util/Map;

    .line 44
    iget-object v6, v3, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    .line 46
    check-cast v5, Landroid/util/ArrayMap;

    .line 48
    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    move-result-object v5

    .line 53
    check-cast v5, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 54
    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mLogger:Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger;

    .line 56
    if-nez v5, :cond_0

    .line 58
    invoke-virtual {v6, v3}, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger;->logNonExistentNotifDismissed(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 60
    goto :goto_2

    .line 63
    :cond_0
    if-ne v3, v5, :cond_5

    .line 64
    iget-object v5, v3, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mDismissState:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry$DismissState;

    .line 66
    sget-object v7, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry$DismissState;->DISMISSED:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry$DismissState;

    .line 68
    if-ne v5, v7, :cond_1

    .line 70
    goto :goto_2

    .line 72
    :cond_1
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->updateDismissInterceptors(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 73
    iget-object v5, v3, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mDismissInterceptors:Ljava/util/List;

    .line 76
    check-cast v5, Ljava/util/ArrayList;

    .line 78
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 80
    move-result v5

    .line 83
    if-lez v5, :cond_2

    .line 84
    const/4 v5, 0x1

    .line 86
    goto :goto_1

    .line 87
    :cond_2
    move v5, v1

    .line 88
    :goto_1
    if-eqz v5, :cond_3

    .line 89
    invoke-virtual {v6, v3}, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger;->logNotifDismissedIntercepted(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 91
    goto :goto_2

    .line 94
    :cond_3
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isCanceled()Z

    .line 98
    move-result v5

    .line 101
    if-nez v5, :cond_4

    .line 102
    new-instance v5, Lcom/android/systemui/statusbar/notification/collection/NotifCollection$$ExternalSyntheticLambda1;

    .line 104
    invoke-direct {v5, p0, v3, v4}, Lcom/android/systemui/statusbar/notification/collection/NotifCollection$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/notification/collection/NotifCollection;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/collection/notifcollection/DismissedByUserStats;)V

    .line 106
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mBgExecutor:Ljava/util/concurrent/Executor;

    .line 109
    invoke-interface {v3, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 111
    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 114
    goto :goto_0

    .line 116
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    .line 119
    const-string v1, "Invalid entry: different stored and dismissed entries for "

    .line 121
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 123
    invoke-static {v3}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->logKey(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Ljava/lang/String;

    .line 126
    move-result-object v1

    .line 129
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    const-string v1, " stored=@"

    .line 133
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    .line 138
    move-result v1

    .line 141
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 142
    move-result-object v1

    .line 145
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    move-result-object v0

    .line 152
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 153
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mEulogizer:Lcom/android/systemui/dump/LogBufferEulogizer;

    .line 156
    invoke-virtual {p0, p1}, Lcom/android/systemui/dump/LogBufferEulogizer;->record(Ljava/lang/Exception;)V

    .line 158
    throw p1

    .line 161
    :cond_6
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->locallyDismissNotifications(Ljava/util/List;)V

    .line 162
    const-string p1, "dismissNotifications"

    .line 165
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->dispatchEventsAndRebuildList(Ljava/lang/String;)V

    .line 167
    return-void
    .line 170
.end method

.method public final dispatchEvents()V
    .locals 5

    .line 1
    const-string v0, "NotifCollection.dispatchEvents"

    .line 2
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 4
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mAmDispatchingToOtherCode:Z

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mEventQueue:Ljava/util/Queue;

    .line 10
    move-object v1, v0

    .line 12
    check-cast v1, Ljava/util/ArrayDeque;

    .line 13
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 15
    move-result v1

    .line 18
    const/4 v2, 0x0

    .line 19
    if-nez v1, :cond_1

    .line 20
    check-cast v0, Ljava/util/ArrayDeque;

    .line 22
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    .line 24
    move-result-object v0

    .line 27
    check-cast v0, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifEvent;

    .line 28
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mNotifCollectionListeners:Ljava/util/List;

    .line 30
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    check-cast v1, Ljava/util/ArrayList;

    .line 35
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 37
    move-result v3

    .line 40
    :goto_0
    if-ge v2, v3, :cond_0

    .line 41
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 43
    move-result-object v4

    .line 46
    check-cast v4, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionListener;

    .line 47
    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifEvent;->dispatchToListener(Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionListener;)V

    .line 49
    add-int/lit8 v2, v2, 0x1

    .line 52
    goto :goto_0

    .line 54
    :cond_1
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mAmDispatchingToOtherCode:Z

    .line 55
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 57
    return-void
    .line 60
.end method

.method public final dispatchEventsAndRebuildList(Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "NotifCollection.dispatchEventsAndRebuildList#"

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 7
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mMainHandler:Landroid/os/Handler;

    .line 11
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mRebuildListRunnable:Lcom/android/systemui/statusbar/notification/collection/NotifCollection$$ExternalSyntheticLambda0;

    .line 13
    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    .line 15
    move-result v2

    .line 18
    if-eqz v2, :cond_0

    .line 19
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 21
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->dispatchEvents()V

    .line 24
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mBuildListener:Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder$1;

    .line 27
    if-eqz v0, :cond_1

    .line 29
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 31
    new-instance v1, Ljava/util/ArrayList;

    .line 34
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mReadOnlyNotificationSet:Ljava/util/Collection;

    .line 36
    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 38
    iget-object p0, v0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;

    .line 41
    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mPendingEntries:Ljava/util/Collection;

    .line 43
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mLogger:Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger;

    .line 45
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger;->logOnBuildList(Ljava/lang/String;)V

    .line 47
    const/4 p1, 0x1

    .line 50
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->rebuildListIfBefore(I)V

    .line 51
    :cond_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 54
    return-void
    .line 57
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 9

    .line 1
    new-instance p2, Ljava/util/ArrayList;

    .line 2
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 4
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mReadOnlyNotificationSet:Ljava/util/Collection;

    .line 7
    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 9
    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection$$ExternalSyntheticLambda5;

    .line 12
    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/collection/NotifCollection$$ExternalSyntheticLambda5;-><init>()V

    .line 14
    invoke-static {v0}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    .line 17
    move-result-object v0

    .line 20
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    .line 24
    const-string v1, "\tNotifCollection unsorted/unfiltered notifications: "

    .line 26
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 31
    move-result v1

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    move-result-object v0

    .line 41
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 42
    const-string v0, "\t\t"

    .line 45
    new-instance v7, Ljava/lang/StringBuilder;

    .line 47
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    const/4 v1, 0x0

    .line 52
    move v8, v1

    .line 53
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 54
    move-result v1

    .line 57
    if-ge v8, v1, :cond_0

    .line 58
    invoke-virtual {p2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 60
    move-result-object v1

    .line 63
    check-cast v1, Lcom/android/systemui/statusbar/notification/collection/ListEntry;

    .line 64
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 66
    move-result-object v2

    .line 69
    const/4 v5, 0x0

    .line 70
    const/4 v6, 0x0

    .line 71
    move-object v3, v0

    .line 72
    move-object v4, v7

    .line 73
    invoke-static/range {v1 .. v6}, Lcom/android/systemui/statusbar/notification/collection/ListDumper;->dumpEntry(Lcom/android/systemui/statusbar/notification/collection/ListEntry;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;ZZ)V

    .line 74
    add-int/lit8 v8, v8, 0x1

    .line 77
    goto :goto_0

    .line 79
    :cond_0
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    move-result-object p2

    .line 83
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 84
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mInconsistencyTracker:Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionInconsistencyTracker;

    .line 87
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionInconsistencyTracker;->notificationsWithoutRankings:Ljava/util/Set;

    .line 89
    invoke-interface {p2}, Ljava/util/Set;->size()I

    .line 91
    move-result p2

    .line 94
    const-string v0, "notificationsWithoutRankings: "

    .line 95
    invoke-static {v0, p2, p1}, Lcom/android/systemui/biometrics/SideFpsController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/io/PrintWriter;)V

    .line 97
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionInconsistencyTracker;->notificationsWithoutRankings:Ljava/util/Set;

    .line 100
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 102
    move-result-object p2

    .line 105
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 106
    move-result v0

    .line 109
    const-string v1, "\t * : "

    .line 110
    if-eqz v0, :cond_1

    .line 112
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 114
    move-result-object v0

    .line 117
    check-cast v0, Ljava/lang/String;

    .line 118
    invoke-static {v1, v0, p1}, Lcom/android/keyguard/FaceWakeUpTriggersConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 120
    goto :goto_1

    .line 123
    :cond_1
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionInconsistencyTracker;->missingNotifications:Ljava/util/Set;

    .line 124
    invoke-interface {p2}, Ljava/util/Set;->size()I

    .line 126
    move-result p2

    .line 129
    const-string v0, "missingNotifications: "

    .line 130
    invoke-static {v0, p2, p1}, Lcom/android/systemui/biometrics/SideFpsController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/io/PrintWriter;)V

    .line 132
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionInconsistencyTracker;->missingNotifications:Ljava/util/Set;

    .line 135
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 137
    move-result-object p0

    .line 140
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 141
    move-result p2

    .line 144
    if-eqz p2, :cond_2

    .line 145
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 147
    move-result-object p2

    .line 150
    check-cast p2, Ljava/lang/String;

    .line 151
    invoke-static {v1, p2, p1}, Lcom/android/keyguard/FaceWakeUpTriggersConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 153
    goto :goto_2

    .line 156
    :cond_2
    return-void
    .line 157
.end method

.method public final dumpPipeline(Lcom/android/systemui/statusbar/notification/collection/PipelineDumper;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mNotifCollectionListeners:Ljava/util/List;

    .line 2
    const-string v1, "notifCollectionListeners"

    .line 4
    invoke-virtual {p1, v0, v1}, Lcom/android/systemui/statusbar/notification/collection/PipelineDumper;->dump(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mLifetimeExtenders:Ljava/util/List;

    .line 9
    const-string v1, "lifetimeExtenders"

    .line 11
    invoke-virtual {p1, v0, v1}, Lcom/android/systemui/statusbar/notification/collection/PipelineDumper;->dump(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mDismissInterceptors:Ljava/util/List;

    .line 16
    const-string v1, "dismissInterceptors"

    .line 18
    invoke-virtual {p1, v0, v1}, Lcom/android/systemui/statusbar/notification/collection/PipelineDumper;->dump(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    const-string v0, "buildListener"

    .line 23
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mBuildListener:Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder$1;

    .line 25
    invoke-virtual {p1, p0, v0}, Lcom/android/systemui/statusbar/notification/collection/PipelineDumper;->dump(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    return-void
    .line 30
.end method

.method public final locallyDismissNotifications(Ljava/util/List;)V
    .locals 7

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    const/4 v1, 0x0

    .line 7
    :goto_0
    move-object v2, p1

    .line 8
    check-cast v2, Ljava/util/ArrayList;

    .line 9
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 11
    move-result v3

    .line 14
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mLogger:Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger;

    .line 15
    if-ge v1, v3, :cond_3

    .line 17
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 19
    move-result-object v2

    .line 22
    check-cast v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 23
    sget-object v3, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry$DismissState;->DISMISSED:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry$DismissState;

    .line 25
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    iput-object v3, v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mDismissState:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry$DismissState;

    .line 30
    invoke-virtual {v4, v2}, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger;->logNotifDismissed(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 32
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isCanceled()Z

    .line 35
    move-result v3

    .line 38
    if-eqz v3, :cond_0

    .line 39
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    goto :goto_2

    .line 44
    :cond_0
    iget-object v3, v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 45
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 47
    move-result-object v3

    .line 50
    invoke-virtual {v3}, Landroid/app/Notification;->isGroupSummary()Z

    .line 51
    move-result v3

    .line 54
    if-eqz v3, :cond_2

    .line 55
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mNotificationSet:Ljava/util/Map;

    .line 57
    check-cast v3, Landroid/util/ArrayMap;

    .line 59
    invoke-virtual {v3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 61
    move-result-object v3

    .line 64
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 65
    move-result-object v3

    .line 68
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 69
    move-result v5

    .line 72
    if-eqz v5, :cond_2

    .line 73
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 75
    move-result-object v5

    .line 78
    check-cast v5, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 79
    iget-object v6, v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 81
    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    .line 83
    move-result-object v6

    .line 86
    invoke-static {v5, v6}, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->shouldAutoDismissChildren(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/String;)Z

    .line 87
    move-result v6

    .line 90
    if-eqz v6, :cond_1

    .line 91
    sget-object v6, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry$DismissState;->PARENT_DISMISSED:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry$DismissState;

    .line 93
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 95
    iput-object v6, v5, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mDismissState:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry$DismissState;

    .line 98
    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger;->logChildDismissed(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 100
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isCanceled()Z

    .line 103
    move-result v6

    .line 106
    if-eqz v6, :cond_1

    .line 107
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    goto :goto_1

    .line 112
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 113
    goto :goto_0

    .line 115
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 116
    move-result-object p1

    .line 119
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 120
    move-result v0

    .line 123
    if-eqz v0, :cond_4

    .line 124
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 126
    move-result-object v0

    .line 129
    check-cast v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 130
    invoke-virtual {v4, v0}, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger;->logDismissOnAlreadyCanceledEntry(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 132
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->tryRemoveNotification(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    .line 135
    goto :goto_3

    .line 138
    :cond_4
    return-void
    .line 139
.end method

.method public final postNotification(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$Ranking;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mNotificationSet:Ljava/util/Map;

    .line 2
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    .line 4
    move-result-object v1

    .line 7
    check-cast v0, Landroid/util/ArrayMap;

    .line 8
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object v1

    .line 13
    check-cast v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 14
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mEventQueue:Ljava/util/Queue;

    .line 16
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mLogger:Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger;

    .line 18
    if-nez v1, :cond_0

    .line 20
    new-instance v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 22
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mClock:Lcom/android/systemui/util/time/SystemClock;

    .line 24
    check-cast p0, Lcom/android/systemui/util/time/SystemClockImpl;

    .line 26
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 31
    move-result-wide v4

    .line 34
    invoke-direct {v1, p1, p2, v4, v5}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;-><init>(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$Ranking;J)V

    .line 35
    new-instance p0, Lcom/android/systemui/statusbar/notification/collection/notifcollection/InitEntryEvent;

    .line 38
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/notification/collection/notifcollection/InitEntryEvent;-><init>(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 40
    check-cast v2, Ljava/util/ArrayDeque;

    .line 43
    invoke-virtual {v2, p0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 45
    new-instance p0, Lcom/android/systemui/statusbar/notification/collection/notifcollection/BindEntryEvent;

    .line 48
    invoke-direct {p0, v1, p1}, Lcom/android/systemui/statusbar/notification/collection/notifcollection/BindEntryEvent;-><init>(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Landroid/service/notification/StatusBarNotification;)V

    .line 50
    invoke-virtual {v2, p0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 53
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    .line 56
    move-result-object p0

    .line 59
    invoke-virtual {v0, p0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    invoke-virtual {v3, v1}, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger;->logNotifPosted(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 63
    new-instance p0, Lcom/android/systemui/statusbar/notification/collection/notifcollection/EntryAddedEvent;

    .line 66
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/notification/collection/notifcollection/EntryAddedEvent;-><init>(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 68
    invoke-virtual {v2, p0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 71
    goto/16 :goto_3

    .line 74
    :cond_0
    iget-object p2, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mDismissState:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry$DismissState;

    .line 76
    sget-object v4, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry$DismissState;->NOT_DISMISSED:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry$DismissState;

    .line 78
    if-eq p2, v4, :cond_2

    .line 80
    iput-object v4, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mDismissState:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry$DismissState;

    .line 82
    iget-object p2, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 84
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 86
    move-result-object p2

    .line 89
    invoke-virtual {p2}, Landroid/app/Notification;->isGroupSummary()Z

    .line 90
    move-result p2

    .line 93
    if-eqz p2, :cond_2

    .line 94
    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 96
    move-result-object p2

    .line 99
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 100
    move-result-object p2

    .line 103
    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 104
    move-result v0

    .line 107
    if-eqz v0, :cond_2

    .line 108
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 110
    move-result-object v0

    .line 113
    check-cast v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 114
    iget-object v5, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 116
    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    .line 118
    move-result-object v5

    .line 121
    iget-object v6, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 122
    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    .line 124
    move-result-object v6

    .line 127
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 128
    move-result v5

    .line 131
    if-eqz v5, :cond_1

    .line 132
    iget-object v5, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mDismissState:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry$DismissState;

    .line 134
    sget-object v6, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry$DismissState;->PARENT_DISMISSED:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry$DismissState;

    .line 136
    if-ne v5, v6, :cond_1

    .line 138
    iput-object v4, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mDismissState:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry$DismissState;

    .line 140
    goto :goto_0

    .line 142
    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->cancelLifetimeExtension(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 143
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->cancelDismissInterception(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 146
    const/4 p0, -0x1

    .line 149
    iput p0, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mCancellationReason:I

    .line 150
    iget-object p0, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 152
    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->setSbn(Landroid/service/notification/StatusBarNotification;)V

    .line 154
    new-instance p2, Lcom/android/systemui/statusbar/notification/collection/notifcollection/BindEntryEvent;

    .line 157
    invoke-direct {p2, v1, p1}, Lcom/android/systemui/statusbar/notification/collection/notifcollection/BindEntryEvent;-><init>(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Landroid/service/notification/StatusBarNotification;)V

    .line 159
    check-cast v2, Ljava/util/ArrayDeque;

    .line 162
    invoke-virtual {v2, p2}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 164
    invoke-virtual {v3, v1}, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger;->logNotifUpdated(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 167
    new-instance p1, Lcom/android/systemui/statusbar/notification/collection/notifcollection/EntryUpdatedEvent;

    .line 170
    const/4 p2, 0x1

    .line 172
    invoke-direct {p1, v1, p2}, Lcom/android/systemui/statusbar/notification/collection/notifcollection/EntryUpdatedEvent;-><init>(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)V

    .line 173
    invoke-virtual {v2, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 176
    const-class p1, Lcom/android/systemui/statusbar/notification/policy/MiuiBadgeManager;

    .line 179
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 181
    move-result-object v0

    .line 184
    check-cast v0, Lcom/android/systemui/statusbar/notification/policy/MiuiBadgeManager;

    .line 185
    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 187
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 189
    const/4 v0, 0x0

    .line 192
    if-eqz p0, :cond_6

    .line 193
    if-nez v2, :cond_3

    .line 195
    goto :goto_2

    .line 197
    :cond_3
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->getMessageCount()I

    .line 198
    move-result v3

    .line 201
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->getMessageCount()I

    .line 202
    move-result v4

    .line 205
    if-eq v3, v4, :cond_4

    .line 206
    move v3, p2

    .line 208
    goto :goto_1

    .line 209
    :cond_4
    move v3, v0

    .line 210
    :goto_1
    if-nez v3, :cond_5

    .line 211
    invoke-static {v2}, Lcom/android/systemui/statusbar/notification/policy/MiuiBadgeManager;->needStatBadgeNum(Lcom/android/systemui/statusbar/notification/ExpandedNotification;)Z

    .line 213
    move-result v3

    .line 216
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/policy/MiuiBadgeManager;->needStatBadgeNum(Lcom/android/systemui/statusbar/notification/ExpandedNotification;)Z

    .line 217
    move-result v4

    .line 220
    if-ne v3, v4, :cond_5

    .line 221
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->getTargetPackageName()Ljava/lang/String;

    .line 223
    move-result-object v2

    .line 226
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->getTargetPackageName()Ljava/lang/String;

    .line 227
    move-result-object v3

    .line 230
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 231
    move-result v2

    .line 234
    if-nez v2, :cond_6

    .line 235
    :cond_5
    move v0, p2

    .line 237
    :cond_6
    :goto_2
    iput-boolean v0, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->needUpdateBadgeNum:Z

    .line 238
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->getTargetPackageName()Ljava/lang/String;

    .line 240
    move-result-object v0

    .line 243
    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 244
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->getTargetPackageName()Ljava/lang/String;

    .line 246
    move-result-object v2

    .line 249
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 250
    move-result v0

    .line 253
    if-nez v0, :cond_7

    .line 254
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 256
    move-result-object p1

    .line 259
    check-cast p1, Lcom/android/systemui/statusbar/notification/policy/MiuiBadgeManager;

    .line 260
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/notification/policy/MiuiBadgeManager;->updateAppBadgeNum(Lcom/android/systemui/statusbar/notification/ExpandedNotification;)V

    .line 262
    :cond_7
    iget-object p0, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 265
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->mIsUpdate:Z

    .line 267
    const/4 p0, 0x0

    .line 269
    iput-object p0, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->modalRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 270
    :goto_3
    return-void
    .line 272
.end method

.method public final registerFutureDismissal(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;ILcom/android/systemui/statusbar/notification/collection/NotifCollection$DismissedByUserStatsCreator;)Lcom/android/systemui/statusbar/notification/collection/NotifCollection$FutureDismissal;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mFutureDismissals:Ljava/util/HashMap;

    .line 2
    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v1

    .line 9
    check-cast v1, Lcom/android/systemui/statusbar/notification/collection/NotifCollection$FutureDismissal;

    .line 10
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mLogger:Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger;

    .line 12
    if-eqz v1, :cond_0

    .line 14
    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger;->logFutureDismissalReused(Lcom/android/systemui/statusbar/notification/collection/NotifCollection$FutureDismissal;)V

    .line 16
    return-object v1

    .line 19
    :cond_0
    new-instance v1, Lcom/android/systemui/statusbar/notification/collection/NotifCollection$FutureDismissal;

    .line 20
    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/systemui/statusbar/notification/collection/NotifCollection$FutureDismissal;-><init>(Lcom/android/systemui/statusbar/notification/collection/NotifCollection;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;ILcom/android/systemui/statusbar/notification/collection/NotifCollection$DismissedByUserStatsCreator;)V

    .line 22
    iget-object p0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    .line 25
    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger;->logFutureDismissalRegistered(Lcom/android/systemui/statusbar/notification/collection/NotifCollection$FutureDismissal;)V

    .line 30
    return-object v1
    .line 33
.end method

.method public final tryRemoveNotification(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mNotificationSet:Ljava/util/Map;

    .line 2
    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    .line 4
    check-cast v0, Landroid/util/ArrayMap;

    .line 6
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    move-result-object v1

    .line 11
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mEulogizer:Lcom/android/systemui/dump/LogBufferEulogizer;

    .line 12
    if-ne v1, p1, :cond_d

    .line 14
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isCanceled()Z

    .line 16
    move-result v1

    .line 19
    if-eqz v1, :cond_c

    .line 20
    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mDismissState:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry$DismissState;

    .line 22
    sget-object v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry$DismissState;->NOT_DISMISSED:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry$DismissState;

    .line 24
    const/4 v3, 0x1

    .line 26
    const/4 v4, 0x0

    .line 27
    if-eq v1, v2, :cond_0

    .line 28
    move v1, v3

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    move v1, v4

    .line 32
    :goto_0
    iget v2, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mCancellationReason:I

    .line 33
    if-eq v2, v3, :cond_2

    .line 35
    const/4 v5, 0x2

    .line 37
    if-ne v2, v5, :cond_1

    .line 38
    goto :goto_1

    .line 40
    :cond_1
    move v2, v4

    .line 41
    goto :goto_2

    .line 42
    :cond_2
    :goto_1
    move v2, v3

    .line 43
    :goto_2
    if-nez v1, :cond_4

    .line 44
    if-eqz v2, :cond_3

    .line 46
    goto :goto_3

    .line 48
    :cond_3
    move v1, v4

    .line 49
    goto :goto_4

    .line 50
    :cond_4
    :goto_3
    move v1, v3

    .line 51
    :goto_4
    iget-object v2, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mLifetimeExtenders:Ljava/util/List;

    .line 52
    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mLogger:Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger;

    .line 54
    if-eqz v1, :cond_5

    .line 56
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->cancelLifetimeExtension(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 58
    goto :goto_6

    .line 61
    :cond_5
    move-object v1, v2

    .line 62
    check-cast v1, Ljava/util/ArrayList;

    .line 63
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 65
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mAmDispatchingToOtherCode:Z

    .line 68
    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mLifetimeExtenders:Ljava/util/List;

    .line 70
    check-cast v6, Ljava/util/ArrayList;

    .line 72
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 74
    move-result-object v6

    .line 77
    :cond_6
    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 78
    move-result v7

    .line 81
    if-eqz v7, :cond_7

    .line 82
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 84
    move-result-object v7

    .line 87
    check-cast v7, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifLifetimeExtender;

    .line 88
    iget v8, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mCancellationReason:I

    .line 90
    invoke-interface {v7, p1, v8}, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifLifetimeExtender;->maybeExtendLifetime(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)Z

    .line 92
    move-result v8

    .line 95
    if-eqz v8, :cond_6

    .line 96
    invoke-virtual {v5, p1, v7}, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger;->logLifetimeExtended(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifLifetimeExtender;)V

    .line 98
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    goto :goto_5

    .line 104
    :cond_7
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mAmDispatchingToOtherCode:Z

    .line 105
    :goto_6
    check-cast v2, Ljava/util/ArrayList;

    .line 107
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 109
    move-result v1

    .line 112
    if-lez v1, :cond_8

    .line 113
    move v1, v3

    .line 115
    goto :goto_7

    .line 116
    :cond_8
    move v1, v4

    .line 117
    :goto_7
    if-nez v1, :cond_b

    .line 118
    invoke-virtual {v5, p1}, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger;->logNotifReleased(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 120
    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    .line 123
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->cancelDismissInterception(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 128
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mEventQueue:Ljava/util/Queue;

    .line 131
    new-instance v2, Lcom/android/systemui/statusbar/notification/collection/notifcollection/EntryRemovedEvent;

    .line 133
    iget v4, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mCancellationReason:I

    .line 135
    invoke-direct {v2, p1, v4}, Lcom/android/systemui/statusbar/notification/collection/notifcollection/EntryRemovedEvent;-><init>(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)V

    .line 137
    check-cast v0, Ljava/util/ArrayDeque;

    .line 140
    invoke-virtual {v0, v2}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 142
    new-instance v2, Lcom/android/systemui/statusbar/notification/collection/notifcollection/CleanUpEntryEvent;

    .line 145
    invoke-direct {v2, p1}, Lcom/android/systemui/statusbar/notification/collection/notifcollection/CleanUpEntryEvent;-><init>(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 147
    invoke-virtual {v0, v2}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 150
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mFutureDismissals:Ljava/util/HashMap;

    .line 153
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    move-result-object p0

    .line 158
    check-cast p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection$FutureDismissal;

    .line 159
    if-eqz p0, :cond_a

    .line 161
    iget p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mCancellationReason:I

    .line 163
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 165
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection$FutureDismissal;->mDidSystemServerCancel:Z

    .line 168
    if-eqz v0, :cond_9

    .line 170
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection$FutureDismissal;->this$0:Lcom/android/systemui/statusbar/notification/collection/NotifCollection;

    .line 172
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mLogger:Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger;

    .line 174
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger;->logFutureDismissalDoubleCancelledByServer(Lcom/android/systemui/statusbar/notification/collection/NotifCollection$FutureDismissal;)V

    .line 176
    goto :goto_8

    .line 179
    :cond_9
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection$FutureDismissal;->this$0:Lcom/android/systemui/statusbar/notification/collection/NotifCollection;

    .line 180
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mLogger:Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger;

    .line 182
    invoke-virtual {v0, p0, p1}, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger;->logFutureDismissalGotSystemServerCancel(Lcom/android/systemui/statusbar/notification/collection/NotifCollection$FutureDismissal;I)V

    .line 184
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection$FutureDismissal;->mDidSystemServerCancel:Z

    .line 187
    :cond_a
    :goto_8
    return v3

    .line 189
    :cond_b
    return v4

    .line 190
    :cond_c
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    .line 193
    const-string v1, "Cannot remove notification "

    .line 195
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 197
    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->logKey(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Ljava/lang/String;

    .line 200
    move-result-object p1

    .line 203
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    const-string p1, ": has not been marked for removal"

    .line 207
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 212
    move-result-object p1

    .line 215
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 216
    invoke-virtual {v2, p0}, Lcom/android/systemui/dump/LogBufferEulogizer;->record(Ljava/lang/Exception;)V

    .line 219
    throw p0

    .line 222
    :cond_d
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    .line 225
    const-string v1, "No notification to remove with key "

    .line 227
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 229
    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->logKey(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Ljava/lang/String;

    .line 232
    move-result-object p1

    .line 235
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 239
    move-result-object p1

    .line 242
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 243
    invoke-virtual {v2, p0}, Lcom/android/systemui/dump/LogBufferEulogizer;->record(Ljava/lang/Exception;)V

    .line 246
    throw p0
    .line 249
.end method

.method public final updateDismissInterceptors(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 12

    .line 1
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mDismissInterceptors:Ljava/util/List;

    .line 2
    check-cast v0, Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 6
    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mAmDispatchingToOtherCode:Z

    .line 10
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mDismissInterceptors:Ljava/util/List;

    .line 12
    check-cast v1, Ljava/util/ArrayList;

    .line 14
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 16
    move-result-object v1

    .line 19
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    move-result v2

    .line 23
    const/4 v3, 0x0

    .line 24
    if-eqz v2, :cond_4

    .line 25
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    move-result-object v2

    .line 30
    check-cast v2, Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator$2;

    .line 31
    iget-object v4, v2, Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator$2;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator;

    .line 33
    iget-object v5, v4, Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator;->mBubblesManagerOptional:Ljava/util/Optional;

    .line 35
    invoke-virtual {v5}, Ljava/util/Optional;->isPresent()Z

    .line 37
    move-result v5

    .line 40
    iget-object v6, v4, Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator;->mInterceptedDismissalEntries:Ljava/util/Set;

    .line 41
    iget-object v7, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    .line 43
    if-eqz v5, :cond_3

    .line 45
    iget-object v4, v4, Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator;->mBubblesManagerOptional:Ljava/util/Optional;

    .line 47
    invoke-virtual {v4}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 49
    move-result-object v4

    .line 52
    check-cast v4, Lcom/android/systemui/wmshell/BubblesManager;

    .line 53
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getAttachedNotifChildren()Ljava/util/List;

    .line 58
    move-result-object v5

    .line 61
    if-eqz v5, :cond_1

    .line 62
    new-instance v8, Ljava/util/ArrayList;

    .line 64
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 66
    move v9, v3

    .line 69
    :goto_1
    move-object v10, v5

    .line 70
    check-cast v10, Ljava/util/ArrayList;

    .line 71
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 73
    move-result v11

    .line 76
    if-ge v9, v11, :cond_2

    .line 77
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 79
    move-result-object v10

    .line 82
    check-cast v10, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 83
    invoke-virtual {v4, v10}, Lcom/android/systemui/wmshell/BubblesManager;->notifToBubbleEntry(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/wm/shell/bubbles/BubbleEntry;

    .line 85
    move-result-object v10

    .line 88
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    add-int/lit8 v9, v9, 0x1

    .line 92
    goto :goto_1

    .line 94
    :cond_1
    const/4 v8, 0x0

    .line 95
    :cond_2
    invoke-virtual {v4, p1}, Lcom/android/systemui/wmshell/BubblesManager;->notifToBubbleEntry(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/wm/shell/bubbles/BubbleEntry;

    .line 96
    move-result-object v9

    .line 99
    new-instance v10, Lcom/android/systemui/wmshell/BubblesManager$$ExternalSyntheticLambda1;

    .line 100
    invoke-direct {v10, v4, v5, p1}, Lcom/android/systemui/wmshell/BubblesManager$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/wmshell/BubblesManager;Ljava/util/List;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 102
    iget-object v5, v4, Lcom/android/systemui/wmshell/BubblesManager;->mBubbles:Lcom/android/wm/shell/bubbles/Bubbles;

    .line 105
    check-cast v5, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;

    .line 107
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 109
    new-instance v11, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$$ExternalSyntheticLambda6;

    .line 112
    iget-object v4, v4, Lcom/android/systemui/wmshell/BubblesManager;->mSysuiMainExecutor:Ljava/util/concurrent/Executor;

    .line 114
    invoke-direct {v11, v4, v10}, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$$ExternalSyntheticLambda6;-><init>(Ljava/util/concurrent/Executor;Lcom/android/systemui/wmshell/BubblesManager$$ExternalSyntheticLambda1;)V

    .line 116
    iget-object v4, v5, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    .line 119
    iget-object v4, v4, Lcom/android/wm/shell/bubbles/BubbleController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 121
    new-instance v10, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$$ExternalSyntheticLambda7;

    .line 123
    invoke-direct {v10, v5, v9, v8, v11}, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$$ExternalSyntheticLambda7;-><init>(Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;Lcom/android/wm/shell/bubbles/BubbleEntry;Ljava/util/List;Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$$ExternalSyntheticLambda6;)V

    .line 125
    const-class v5, Ljava/lang/Boolean;

    .line 128
    invoke-interface {v4, v10, v5}, Lcom/android/wm/shell/common/ShellExecutor;->executeBlockingForResult(Ljava/util/function/Supplier;Ljava/lang/Class;)Ljava/lang/Object;

    .line 130
    move-result-object v4

    .line 133
    check-cast v4, Ljava/lang/Boolean;

    .line 134
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 136
    move-result v4

    .line 139
    if-eqz v4, :cond_3

    .line 140
    check-cast v6, Ljava/util/HashSet;

    .line 142
    invoke-virtual {v6, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 144
    move v3, v0

    .line 147
    goto :goto_2

    .line 148
    :cond_3
    check-cast v6, Ljava/util/HashSet;

    .line 149
    invoke-virtual {v6, v7}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 151
    :goto_2
    if-eqz v3, :cond_0

    .line 154
    iget-object v3, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mDismissInterceptors:Ljava/util/List;

    .line 156
    check-cast v3, Ljava/util/ArrayList;

    .line 158
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    goto/16 :goto_0

    .line 163
    :cond_4
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mAmDispatchingToOtherCode:Z

    .line 165
    return-void
    .line 167
.end method
