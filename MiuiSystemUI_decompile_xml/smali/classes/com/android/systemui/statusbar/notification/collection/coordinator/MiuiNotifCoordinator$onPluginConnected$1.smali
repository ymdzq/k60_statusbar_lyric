.class public final Lcom/android/systemui/statusbar/notification/collection/coordinator/MiuiNotifCoordinator$onPluginConnected$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/plugins/NotificationListenerController;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/MiuiNotifCoordinator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/MiuiNotifCoordinator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/MiuiNotifCoordinator$onPluginConnected$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/MiuiNotifCoordinator;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final getActiveNotifications([Landroid/service/notification/StatusBarNotification;)[Landroid/service/notification/StatusBarNotification;
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    if-eqz p1, :cond_2

    .line 4
    array-length v2, p1

    .line 6
    if-nez v2, :cond_0

    .line 7
    move v2, v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move v2, v1

    .line 11
    :goto_0
    if-eqz v2, :cond_1

    .line 12
    goto :goto_1

    .line 14
    :cond_1
    move v0, v1

    .line 15
    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    .line 16
    return-object p1

    .line 18
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    array-length v2, p1

    .line 24
    move v3, v1

    .line 25
    :goto_2
    if-ge v3, v2, :cond_5

    .line 26
    aget-object v4, p1, v3

    .line 28
    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/MiuiNotifCoordinator$onPluginConnected$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/MiuiNotifCoordinator;

    .line 30
    invoke-static {v5, v4}, Lcom/android/systemui/statusbar/notification/collection/coordinator/MiuiNotifCoordinator;->access$filterOut(Lcom/android/systemui/statusbar/notification/collection/coordinator/MiuiNotifCoordinator;Landroid/service/notification/StatusBarNotification;)Z

    .line 32
    move-result v5

    .line 35
    if-nez v5, :cond_4

    .line 36
    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 38
    :cond_4
    add-int/lit8 v3, v3, 0x1

    .line 41
    goto :goto_2

    .line 43
    :cond_5
    new-array p0, v1, [Landroid/service/notification/StatusBarNotification;

    .line 44
    invoke-interface {v0, p0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 46
    move-result-object p0

    .line 49
    check-cast p0, [Landroid/service/notification/StatusBarNotification;

    .line 50
    return-object p0
    .line 52
.end method

.method public final onListenerConnected(Lcom/android/systemui/plugins/NotificationListenerController$NotificationProvider;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final onNotificationPosted(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)Z
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    const/4 p0, 0x1

    .line 4
    return p0

    .line 5
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/MiuiNotifCoordinator$onPluginConnected$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/MiuiNotifCoordinator;

    .line 6
    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/MiuiNotifCoordinator;->access$filterOut(Lcom/android/systemui/statusbar/notification/collection/coordinator/MiuiNotifCoordinator;Landroid/service/notification/StatusBarNotification;)Z

    .line 8
    move-result p0

    .line 11
    return p0
    .line 12
.end method
