.class public final Lcom/android/systemui/statusbar/NotificationClickNotifier;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final barService:Lcom/android/internal/statusbar/IStatusBarService;

.field public final listeners:Ljava/util/List;

.field public final mainExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Lcom/android/internal/statusbar/IStatusBarService;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationClickNotifier;->barService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/statusbar/NotificationClickNotifier;->mainExecutor:Ljava/util/concurrent/Executor;

    .line 7
    new-instance p1, Ljava/util/ArrayList;

    .line 9
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationClickNotifier;->listeners:Ljava/util/List;

    .line 14
    return-void
    .line 16
.end method

.method public static final access$notifyListenersAboutInteraction(Lcom/android/systemui/statusbar/NotificationClickNotifier;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationClickNotifier;->listeners:Ljava/util/List;

    .line 2
    check-cast p0, Ljava/util/ArrayList;

    .line 4
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object p0

    .line 9
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v0

    .line 19
    check-cast v0, Lcom/android/systemui/statusbar/NotificationInteractionTracker;

    .line 20
    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationInteractionTracker;->interactions:Ljava/util/Map;

    .line 22
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 24
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    goto :goto_0

    .line 29
    :cond_0
    return-void
    .line 30
.end method


# virtual methods
.method public final onNotificationClick(Ljava/lang/String;Lcom/android/internal/statusbar/NotificationVisibility;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationClickNotifier;->barService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 2
    invoke-interface {v0, p1, p2}, Lcom/android/internal/statusbar/IStatusBarService;->onNotificationClick(Ljava/lang/String;Lcom/android/internal/statusbar/NotificationVisibility;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    :catch_0
    new-instance p2, Lcom/android/systemui/statusbar/NotificationClickNotifier$onNotificationClick$1;

    .line 7
    const/4 v0, 0x0

    .line 9
    invoke-direct {p2, p0, p1, v0}, Lcom/android/systemui/statusbar/NotificationClickNotifier$onNotificationClick$1;-><init>(Lcom/android/systemui/statusbar/NotificationClickNotifier;Ljava/lang/String;I)V

    .line 10
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationClickNotifier;->mainExecutor:Ljava/util/concurrent/Executor;

    .line 13
    invoke-interface {p0, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 15
    return-void
    .line 18
.end method
