.class public final Lcom/android/systemui/statusbar/notification/focus/MiuiTimeoutCoordinator;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/Dumpable;
.implements Lcom/android/systemui/statusbar/notification/collection/coordinator/Coordinator;


# instance fields
.field public mAlarmManager:Landroid/app/AlarmManager;

.field public mBgHandler:Landroid/os/Handler;

.field public mContext:Landroid/content/Context;

.field public mDismissNotificationHelper:Lcom/android/systemui/statusbar/policy/DismissNotificationHelper;

.field public mDumpManager:Lcom/android/systemui/dump/DumpManager;

.field public final mNotificationTimeoutReceiver:Lcom/android/systemui/statusbar/notification/focus/MiuiTimeoutCoordinator$1;

.field public mPipeline:Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

.field public final mScheduledEntry:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 5
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/focus/MiuiTimeoutCoordinator;->mScheduledEntry:Ljava/util/Map;

    .line 10
    new-instance v0, Lcom/android/systemui/statusbar/notification/focus/MiuiTimeoutCoordinator$1;

    .line 12
    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/focus/MiuiTimeoutCoordinator$1;-><init>(Lcom/android/systemui/statusbar/notification/focus/MiuiTimeoutCoordinator;)V

    .line 14
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/focus/MiuiTimeoutCoordinator;->mNotificationTimeoutReceiver:Lcom/android/systemui/statusbar/notification/focus/MiuiTimeoutCoordinator$1;

    .line 17
    return-void
    .line 19
.end method


# virtual methods
.method public final attach(Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/focus/MiuiTimeoutCoordinator;->mPipeline:Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    .line 2
    new-instance v0, Lcom/android/systemui/statusbar/notification/focus/MiuiTimeoutCoordinator$2;

    .line 4
    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/focus/MiuiTimeoutCoordinator$2;-><init>(Lcom/android/systemui/statusbar/notification/focus/MiuiTimeoutCoordinator;)V

    .line 6
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->addCollectionListener(Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionListener;)V

    .line 9
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/focus/MiuiTimeoutCoordinator;->mDumpManager:Lcom/android/systemui/dump/DumpManager;

    .line 12
    invoke-virtual {p1, p0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Lcom/android/systemui/Dumpable;)V

    .line 14
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/focus/MiuiTimeoutCoordinator;->mContext:Landroid/content/Context;

    .line 17
    const-class v0, Landroid/app/AlarmManager;

    .line 19
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 21
    move-result-object p1

    .line 24
    check-cast p1, Landroid/app/AlarmManager;

    .line 25
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/focus/MiuiTimeoutCoordinator;->mAlarmManager:Landroid/app/AlarmManager;

    .line 27
    new-instance p1, Landroid/content/IntentFilter;

    .line 29
    const-string v0, "MiuiTimeoutCoordinator.TIMEOUT"

    .line 31
    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 33
    const-string/jumbo v0, "timeout"

    .line 36
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/focus/MiuiTimeoutCoordinator;->mContext:Landroid/content/Context;

    .line 42
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/focus/MiuiTimeoutCoordinator;->mNotificationTimeoutReceiver:Lcom/android/systemui/statusbar/notification/focus/MiuiTimeoutCoordinator$1;

    .line 44
    const/4 v1, 0x2

    .line 46
    invoke-virtual {v0, p0, p1, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 47
    return-void
    .line 50
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/focus/MiuiTimeoutCoordinator;->mScheduledEntry:Ljava/util/Map;

    .line 2
    check-cast p0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 4
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    .line 6
    move-result-object p0

    .line 9
    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    .line 10
    move-result-object p0

    .line 13
    new-instance p2, Lcom/android/systemui/statusbar/notification/collection/NotifCollection$$ExternalSyntheticLambda5;

    .line 14
    invoke-direct {p2}, Lcom/android/systemui/statusbar/notification/collection/NotifCollection$$ExternalSyntheticLambda5;-><init>()V

    .line 16
    invoke-interface {p0, p2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 19
    move-result-object p0

    .line 22
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    new-instance p2, Lcom/android/systemui/statusbar/notification/focus/MiuiTimeoutCoordinator$$ExternalSyntheticLambda0;

    .line 26
    invoke-direct {p2, p1}, Lcom/android/systemui/statusbar/notification/focus/MiuiTimeoutCoordinator$$ExternalSyntheticLambda0;-><init>(Ljava/io/PrintWriter;)V

    .line 28
    invoke-interface {p0, p2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 31
    return-void
    .line 34
.end method
