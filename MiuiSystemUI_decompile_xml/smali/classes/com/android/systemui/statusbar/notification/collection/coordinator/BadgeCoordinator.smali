.class public final Lcom/android/systemui/statusbar/notification/collection/coordinator/BadgeCoordinator;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/collection/coordinator/Coordinator;


# instance fields
.field public final mBadgeManager:Lcom/android/systemui/statusbar/notification/policy/MiuiBadgeManager;

.field public final mCallback:Lcom/android/systemui/settings/UserTracker$Callback;

.field public final mCollectionListener:Lcom/android/systemui/statusbar/notification/collection/coordinator/BadgeCoordinator$3;

.field public final mContext:Landroid/content/Context;

.field public final mNotifLiveData:Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataStoreImpl;

.field public final mReceiver:Lcom/android/systemui/statusbar/notification/collection/coordinator/BadgeCoordinator$1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataStoreImpl;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/statusbar/notification/policy/MiuiBadgeManager;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/BadgeCoordinator$1;

    .line 5
    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/BadgeCoordinator$1;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/BadgeCoordinator;)V

    .line 7
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/BadgeCoordinator;->mReceiver:Lcom/android/systemui/statusbar/notification/collection/coordinator/BadgeCoordinator$1;

    .line 10
    new-instance v1, Lcom/android/systemui/statusbar/notification/collection/coordinator/BadgeCoordinator$2;

    .line 12
    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/BadgeCoordinator$2;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/BadgeCoordinator;)V

    .line 14
    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/BadgeCoordinator;->mCallback:Lcom/android/systemui/settings/UserTracker$Callback;

    .line 17
    new-instance v2, Lcom/android/systemui/statusbar/notification/collection/coordinator/BadgeCoordinator$3;

    .line 19
    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/BadgeCoordinator$3;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/BadgeCoordinator;)V

    .line 21
    iput-object v2, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/BadgeCoordinator;->mCollectionListener:Lcom/android/systemui/statusbar/notification/collection/coordinator/BadgeCoordinator$3;

    .line 24
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/BadgeCoordinator;->mContext:Landroid/content/Context;

    .line 26
    new-instance v2, Landroid/content/IntentFilter;

    .line 28
    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 30
    const-string v3, "android.intent.action.APPLICATION_MESSAGE_QUERY"

    .line 33
    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 35
    const/4 v3, 0x0

    .line 38
    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 39
    invoke-virtual {p2, v0, v2, v3, v4}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;)V

    .line 41
    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/BadgeCoordinator;->mNotifLiveData:Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataStoreImpl;

    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    .line 46
    move-result-object p1

    .line 49
    check-cast p4, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 50
    invoke-virtual {p4, v1, p1}, Lcom/android/systemui/settings/UserTrackerImpl;->addCallback(Lcom/android/systemui/settings/UserTracker$Callback;Ljava/util/concurrent/Executor;)V

    .line 52
    iput-object p5, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/BadgeCoordinator;->mBadgeManager:Lcom/android/systemui/statusbar/notification/policy/MiuiBadgeManager;

    .line 55
    return-void
    .line 57
.end method


# virtual methods
.method public final attach(Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/BadgeCoordinator;->mCollectionListener:Lcom/android/systemui/statusbar/notification/collection/coordinator/BadgeCoordinator$3;

    .line 2
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->addCollectionListener(Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionListener;)V

    .line 4
    return-void
    .line 7
.end method
