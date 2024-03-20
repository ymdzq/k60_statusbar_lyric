.class public final Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;


# instance fields
.field public final mBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field public final mCurrentlyVisibleNotifications:Landroid/util/ArraySet;

.field public mDozing:Ljava/lang/Boolean;

.field public final mDozingLock:Ljava/lang/Object;

.field public final mExpansionStateLogger:Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger;

.field public final mHandler:Landroid/os/Handler;

.field public mLastVisibilityReportUptimeMs:J

.field public mListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

.field public mLockscreen:Ljava/lang/Boolean;

.field public mLogging:Z

.field public final mNotifLiveDataStore:Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataStoreImpl;

.field public final mNotificationListener:Lcom/android/systemui/statusbar/NotificationListener;

.field public final mNotificationPanelLogger:Lcom/android/systemui/statusbar/notification/logging/NotificationPanelLoggerImpl;

.field public mPanelExpanded:Ljava/lang/Boolean;

.field public final mUiBgExecutor:Ljava/util/concurrent/Executor;

.field public final mVisibilityProvider:Lcom/android/systemui/statusbar/notification/collection/render/NotificationVisibilityProvider;

.field public mVisibilityReporter:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/NotificationListener;Ljava/util/concurrent/Executor;Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataStoreImpl;Lcom/android/systemui/statusbar/notification/collection/render/NotificationVisibilityProvider;Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/shade/ShadeExpansionStateManager;Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger;Lcom/android/systemui/statusbar/notification/logging/NotificationPanelLoggerImpl;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/util/ArraySet;

    .line 5
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->mCurrentlyVisibleNotifications:Landroid/util/ArraySet;

    .line 10
    new-instance v0, Landroid/os/Handler;

    .line 12
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->mHandler:Landroid/os/Handler;

    .line 17
    new-instance v0, Ljava/lang/Object;

    .line 19
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->mDozingLock:Ljava/lang/Object;

    .line 24
    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->mDozing:Ljava/lang/Boolean;

    .line 27
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->mLockscreen:Ljava/lang/Boolean;

    .line 29
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->mPanelExpanded:Ljava/lang/Boolean;

    .line 31
    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->mLogging:Z

    .line 34
    new-instance v0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$1;

    .line 36
    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$1;-><init>(Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;)V

    .line 38
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->mVisibilityReporter:Ljava/lang/Runnable;

    .line 41
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->mNotificationListener:Lcom/android/systemui/statusbar/NotificationListener;

    .line 43
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->mUiBgExecutor:Ljava/util/concurrent/Executor;

    .line 45
    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->mNotifLiveDataStore:Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataStoreImpl;

    .line 47
    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->mVisibilityProvider:Lcom/android/systemui/statusbar/notification/collection/render/NotificationVisibilityProvider;

    .line 49
    const-string/jumbo p1, "statusbar"

    .line 51
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 54
    move-result-object p1

    .line 57
    invoke-static {p1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    .line 58
    move-result-object p1

    .line 61
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 62
    iput-object p8, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->mExpansionStateLogger:Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger;

    .line 64
    iput-object p9, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->mNotificationPanelLogger:Lcom/android/systemui/statusbar/notification/logging/NotificationPanelLoggerImpl;

    .line 66
    invoke-interface {p6, p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 68
    new-instance p1, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$$ExternalSyntheticLambda0;

    .line 71
    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;)V

    .line 73
    invoke-virtual {p7, p1}, Lcom/android/systemui/shade/ShadeExpansionStateManager;->addFullExpansionListener(Lcom/android/systemui/shade/ShadeFullExpansionListener;)V

    .line 76
    new-instance p1, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$2;

    .line 79
    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$2;-><init>(Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;)V

    .line 81
    invoke-virtual {p5, p1}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->addCollectionListener(Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionListener;)V

    .line 84
    return-void
    .line 87
.end method

.method public static cloneVisibilitiesAsArr(Ljava/util/Collection;)[Lcom/android/internal/statusbar/NotificationVisibility;
    .locals 3

    .line 1
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    .line 2
    move-result v0

    .line 5
    new-array v0, v0, [Lcom/android/internal/statusbar/NotificationVisibility;

    .line 6
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 8
    move-result-object p0

    .line 11
    const/4 v1, 0x0

    .line 12
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    move-result v2

    .line 16
    if-eqz v2, :cond_1

    .line 17
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v2

    .line 22
    check-cast v2, Lcom/android/internal/statusbar/NotificationVisibility;

    .line 23
    if-eqz v2, :cond_0

    .line 25
    invoke-virtual {v2}, Lcom/android/internal/statusbar/NotificationVisibility;->clone()Lcom/android/internal/statusbar/NotificationVisibility;

    .line 27
    move-result-object v2

    .line 30
    aput-object v2, v0, v1

    .line 31
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 33
    goto :goto_0

    .line 35
    :cond_1
    return-object v0
    .line 36
.end method

.method public static getNotificationLocation(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;
    .locals 1

    .line 1
    if-eqz p0, :cond_7

    .line 2
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 4
    if-eqz v0, :cond_7

    .line 6
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    .line 8
    move-result-object v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    goto :goto_1

    .line 14
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 15
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    .line 17
    move-result-object p0

    .line 20
    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->location:I

    .line 21
    const/4 v0, 0x1

    .line 23
    if-eq p0, v0, :cond_6

    .line 24
    const/4 v0, 0x2

    .line 26
    if-eq p0, v0, :cond_5

    .line 27
    const/4 v0, 0x4

    .line 29
    if-eq p0, v0, :cond_4

    .line 30
    const/16 v0, 0x8

    .line 32
    if-eq p0, v0, :cond_3

    .line 34
    const/16 v0, 0x10

    .line 36
    if-eq p0, v0, :cond_2

    .line 38
    const/16 v0, 0x40

    .line 40
    if-eq p0, v0, :cond_1

    .line 42
    sget-object p0, Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;->LOCATION_UNKNOWN:Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;

    .line 44
    goto :goto_0

    .line 46
    :cond_1
    sget-object p0, Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;->LOCATION_GONE:Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;

    .line 47
    goto :goto_0

    .line 49
    :cond_2
    sget-object p0, Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;->LOCATION_BOTTOM_STACK_HIDDEN:Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;

    .line 50
    goto :goto_0

    .line 52
    :cond_3
    sget-object p0, Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;->LOCATION_BOTTOM_STACK_PEEKING:Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;

    .line 53
    goto :goto_0

    .line 55
    :cond_4
    sget-object p0, Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;->LOCATION_MAIN_AREA:Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;

    .line 56
    goto :goto_0

    .line 58
    :cond_5
    sget-object p0, Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;->LOCATION_HIDDEN_TOP:Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;

    .line 59
    goto :goto_0

    .line 61
    :cond_6
    sget-object p0, Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;->LOCATION_FIRST_HEADS_UP:Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;

    .line 62
    :goto_0
    return-object p0

    .line 64
    :cond_7
    :goto_1
    sget-object p0, Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;->LOCATION_UNKNOWN:Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;

    .line 65
    return-object p0
    .line 67
.end method

.method public static recycleAllVisibilityObjects(Landroid/util/ArraySet;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_0
    if-ge v1, v0, :cond_0

    .line 7
    invoke-virtual {p0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 9
    move-result-object v2

    .line 12
    check-cast v2, Lcom/android/internal/statusbar/NotificationVisibility;

    .line 13
    invoke-virtual {v2}, Lcom/android/internal/statusbar/NotificationVisibility;->recycle()V

    .line 15
    add-int/lit8 v1, v1, 0x1

    .line 18
    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {p0}, Landroid/util/ArraySet;->clear()V

    .line 21
    return-void
.end method


# virtual methods
.method public getVisibilityReporter()Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->mVisibilityReporter:Ljava/lang/Runnable;

    .line 2
    return-object p0
    .line 4
.end method

.method public final logNotificationVisibilityChanges(Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 6

    .line 1
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    move-object v0, p2

    .line 8
    check-cast v0, Landroid/util/ArraySet;

    .line 9
    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    .line 11
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    return-void

    .line 17
    :cond_0
    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->cloneVisibilitiesAsArr(Ljava/util/Collection;)[Lcom/android/internal/statusbar/NotificationVisibility;

    .line 18
    move-result-object v0

    .line 21
    invoke-static {p2}, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->cloneVisibilitiesAsArr(Ljava/util/Collection;)[Lcom/android/internal/statusbar/NotificationVisibility;

    .line 22
    move-result-object v1

    .line 25
    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    .line 26
    move-result-object p1

    .line 29
    new-instance v2, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$$ExternalSyntheticLambda3;

    .line 30
    invoke-direct {v2}, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$$ExternalSyntheticLambda3;-><init>()V

    .line 32
    invoke-interface {p1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 35
    move-result-object p1

    .line 38
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    .line 39
    move-result-object v2

    .line 42
    invoke-interface {p1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 43
    move-result-object p1

    .line 46
    check-cast p1, Ljava/util/List;

    .line 47
    invoke-interface {p2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    .line 49
    move-result-object p2

    .line 52
    new-instance v2, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$$ExternalSyntheticLambda3;

    .line 53
    invoke-direct {v2}, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$$ExternalSyntheticLambda3;-><init>()V

    .line 55
    invoke-interface {p2, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 58
    move-result-object p2

    .line 61
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    .line 62
    move-result-object v2

    .line 65
    invoke-interface {p2, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 66
    move-result-object p2

    .line 69
    check-cast p2, Ljava/util/List;

    .line 70
    const-class v2, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;

    .line 72
    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 74
    move-result-object v2

    .line 77
    check-cast v2, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;

    .line 78
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 80
    new-instance v3, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat$$ExternalSyntheticLambda3;

    .line 83
    invoke-direct {v3, v2}, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;)V

    .line 85
    invoke-interface {p1, v3}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 88
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 91
    move-result p1

    .line 94
    const/4 v3, 0x0

    .line 95
    if-nez p1, :cond_1

    .line 96
    iget-object p1, v2, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->mPipeline:Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    .line 98
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->getAllNotifs()Ljava/util/Collection;

    .line 100
    move-result-object p1

    .line 103
    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    .line 104
    move-result-object p1

    .line 107
    new-instance v4, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat$$ExternalSyntheticLambda4;

    .line 108
    const/4 v5, 0x2

    .line 110
    invoke-direct {v4, v5, p2}, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat$$ExternalSyntheticLambda4;-><init>(ILjava/lang/Object;)V

    .line 111
    invoke-interface {p1, v4}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 114
    move-result-object p1

    .line 117
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    .line 118
    move-result-object p2

    .line 121
    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 122
    move-result-object p1

    .line 125
    check-cast p1, Ljava/util/List;

    .line 126
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 128
    move-result p2

    .line 131
    if-nez p2, :cond_1

    .line 132
    const/4 p2, 0x0

    .line 134
    invoke-static {p2, v3, v3, v3, v3}, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->getNotifSource(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;ZZZZ)Ljava/lang/String;

    .line 135
    move-result-object p2

    .line 138
    const/4 v4, 0x1

    .line 139
    invoke-virtual {v2, p2, p1, v4}, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->handleVisibleEvent(Ljava/lang/String;Ljava/util/List;Z)V

    .line 140
    :cond_1
    new-instance p1, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$$ExternalSyntheticLambda1;

    .line 143
    invoke-direct {p1, p0, v0, v1, v3}, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;Ljava/io/Serializable;Ljava/lang/Object;I)V

    .line 145
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->mUiBgExecutor:Ljava/util/concurrent/Executor;

    .line 148
    invoke-interface {p0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 150
    return-void
    .line 153
.end method

.method public final maybeUpdateLoggingStatus()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->mPanelExpanded:Ljava/lang/Boolean;

    .line 2
    if-eqz v0, :cond_4

    .line 4
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->mDozing:Ljava/lang/Boolean;

    .line 6
    if-nez v0, :cond_0

    .line 8
    goto :goto_2

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->mLockscreen:Ljava/lang/Boolean;

    .line 11
    if-nez v0, :cond_1

    .line 13
    const/4 v0, 0x0

    .line 15
    goto :goto_0

    .line 16
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 17
    move-result v0

    .line 20
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->mPanelExpanded:Ljava/lang/Boolean;

    .line 21
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 23
    move-result v1

    .line 26
    if-eqz v1, :cond_3

    .line 27
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->mDozing:Ljava/lang/Boolean;

    .line 29
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 31
    move-result v1

    .line 34
    if-nez v1, :cond_3

    .line 35
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->mNotifLiveDataStore:Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataStoreImpl;

    .line 37
    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataStoreImpl;->activeNotifList:Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataImpl;

    .line 39
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataImpl;->getValue()Ljava/lang/Object;

    .line 41
    move-result-object v1

    .line 44
    check-cast v1, Ljava/util/List;

    .line 45
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->mNotificationPanelLogger:Lcom/android/systemui/statusbar/notification/logging/NotificationPanelLoggerImpl;

    .line 47
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    invoke-static {v1}, Lcom/android/systemui/statusbar/notification/logging/NotificationPanelLoggerImpl;->toNotificationProto(Ljava/util/List;)Lcom/android/systemui/statusbar/notification/logging/nano/Notifications$NotificationList;

    .line 52
    move-result-object v1

    .line 55
    if-eqz v0, :cond_2

    .line 56
    sget-object v0, Lcom/android/systemui/statusbar/notification/logging/NotificationPanelLogger$NotificationPanelEvent;->NOTIFICATION_PANEL_OPEN_LOCKSCREEN:Lcom/android/systemui/statusbar/notification/logging/NotificationPanelLogger$NotificationPanelEvent;

    .line 58
    goto :goto_1

    .line 60
    :cond_2
    sget-object v0, Lcom/android/systemui/statusbar/notification/logging/NotificationPanelLogger$NotificationPanelEvent;->NOTIFICATION_PANEL_OPEN_STATUS_BAR:Lcom/android/systemui/statusbar/notification/logging/NotificationPanelLogger$NotificationPanelEvent;

    .line 61
    :goto_1
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/logging/NotificationPanelLogger$NotificationPanelEvent;->getId()I

    .line 63
    move-result v0

    .line 66
    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/logging/nano/Notifications$NotificationList;->notifications:[Lcom/android/systemui/statusbar/notification/logging/nano/Notifications$Notification;

    .line 67
    array-length v2, v2

    .line 69
    invoke-static {v1}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    .line 70
    move-result-object v1

    .line 73
    invoke-static {v0, v2, v1}, Lcom/android/systemui/shared/system/SysUiStatsLog;->write(II[B)V

    .line 74
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->startNotificationLogging()V

    .line 77
    goto :goto_2

    .line 80
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->stopNotificationLogging()V

    .line 81
    :cond_4
    :goto_2
    return-void
    .line 84
.end method

.method public onChildLocationsChanged()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->mHandler:Landroid/os/Handler;

    .line 2
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->mVisibilityReporter:Ljava/lang/Runnable;

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    .line 6
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    return-void

    .line 12
    :cond_0
    iget-wide v1, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->mLastVisibilityReportUptimeMs:J

    .line 13
    const-wide/16 v3, 0x1f4

    .line 15
    add-long/2addr v1, v3

    .line 17
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->mVisibilityReporter:Ljava/lang/Runnable;

    .line 18
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 20
    return-void
    .line 23
.end method

.method public final onDozingChanged(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->mDozingLock:Ljava/lang/Object;

    .line 2
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 5
    move-result-object p1

    .line 8
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->mDozing:Ljava/lang/Boolean;

    .line 9
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->maybeUpdateLoggingStatus()V

    .line 11
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

.method public onShadeExpansionFullyChanged(Ljava/lang/Boolean;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->mPanelExpanded:Ljava/lang/Boolean;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->mPanelExpanded:Ljava/lang/Boolean;

    .line 12
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->mDozingLock:Ljava/lang/Object;

    .line 14
    monitor-enter p1

    .line 16
    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->maybeUpdateLoggingStatus()V

    .line 17
    monitor-exit p1

    .line 20
    :cond_1
    return-void

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw p0
.end method

.method public final onStateChanged(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->mDozingLock:Ljava/lang/Object;

    .line 2
    monitor-enter v0

    .line 4
    const/4 v1, 0x1

    .line 5
    if-eq p1, v1, :cond_1

    .line 6
    const/4 v2, 0x2

    .line 8
    if-ne p1, v2, :cond_0

    .line 9
    goto :goto_0

    .line 11
    :cond_0
    const/4 v1, 0x0

    .line 12
    :cond_1
    :goto_0
    :try_start_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 13
    move-result-object p1

    .line 16
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->mLockscreen:Ljava/lang/Boolean;

    .line 17
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

.method public setVisibilityReporter(Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->mVisibilityReporter:Ljava/lang/Runnable;

    .line 2
    return-void
    .line 4
.end method

.method public final startNotificationLogging()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->mLogging:Z

    .line 2
    if-nez v0, :cond_0

    .line 4
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->mLogging:Z

    .line 7
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->mListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    .line 9
    new-instance v1, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$$ExternalSyntheticLambda2;

    .line 11
    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;)V

    .line 13
    check-cast v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$NotificationListContainerImpl;

    .line 16
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$NotificationListContainerImpl;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 18
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 20
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setChildLocationsChangedListener(Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$OnChildLocationsChangedListener;)V

    .line 22
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->onChildLocationsChanged()V

    .line 25
    :cond_0
    return-void
    .line 28
.end method

.method public final stopNotificationLogging()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->mLogging:Z

    .line 2
    if-eqz v0, :cond_1

    .line 4
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->mLogging:Z

    .line 7
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->mCurrentlyVisibleNotifications:Landroid/util/ArraySet;

    .line 9
    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    .line 11
    move-result v1

    .line 14
    if-nez v1, :cond_0

    .line 15
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 17
    move-result-object v1

    .line 20
    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->logNotificationVisibilityChanges(Ljava/util/Collection;Ljava/util/Collection;)V

    .line 21
    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->recycleAllVisibilityObjects(Landroid/util/ArraySet;)V

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->mHandler:Landroid/os/Handler;

    .line 27
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->mVisibilityReporter:Ljava/lang/Runnable;

    .line 29
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 31
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->mListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    .line 34
    check-cast p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$NotificationListContainerImpl;

    .line 36
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$NotificationListContainerImpl;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 38
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 40
    const/4 v0, 0x0

    .line 42
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setChildLocationsChangedListener(Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$OnChildLocationsChangedListener;)V

    .line 43
    :cond_1
    return-void
    .line 46
.end method
