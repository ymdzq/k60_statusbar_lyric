.class public final Lcom/android/systemui/statusbar/tv/notifications/TvNotificationHandler;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/CoreStartable;
.implements Lcom/android/systemui/statusbar/NotificationListener$NotificationHandler;


# instance fields
.field public final mNotificationListener:Lcom/android/systemui/statusbar/NotificationListener;

.field public final mNotifications:Landroid/util/SparseArray;

.field public mUpdateListener:Lcom/android/systemui/statusbar/tv/notifications/TvNotificationHandler$Listener;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/NotificationListener;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/util/SparseArray;

    .line 5
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/systemui/statusbar/tv/notifications/TvNotificationHandler;->mNotifications:Landroid/util/SparseArray;

    .line 10
    iput-object p1, p0, Lcom/android/systemui/statusbar/tv/notifications/TvNotificationHandler;->mNotificationListener:Lcom/android/systemui/statusbar/NotificationListener;

    .line 12
    return-void
    .line 14
.end method


# virtual methods
.method public final onNotificationPosted(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 1

    .line 1
    new-instance p2, Landroid/app/Notification$TvExtender;

    .line 2
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 4
    move-result-object v0

    .line 7
    invoke-direct {p2, v0}, Landroid/app/Notification$TvExtender;-><init>(Landroid/app/Notification;)V

    .line 8
    invoke-virtual {p2}, Landroid/app/Notification$TvExtender;->isAvailableOnTv()Z

    .line 11
    move-result p2

    .line 14
    if-nez p2, :cond_0

    .line 15
    return-void

    .line 17
    :cond_0
    iget-object p2, p0, Lcom/android/systemui/statusbar/tv/notifications/TvNotificationHandler;->mNotifications:Landroid/util/SparseArray;

    .line 18
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getId()I

    .line 20
    move-result v0

    .line 23
    invoke-virtual {p2, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 24
    iget-object p0, p0, Lcom/android/systemui/statusbar/tv/notifications/TvNotificationHandler;->mUpdateListener:Lcom/android/systemui/statusbar/tv/notifications/TvNotificationHandler$Listener;

    .line 27
    if-eqz p0, :cond_1

    .line 29
    check-cast p0, Lcom/android/systemui/statusbar/tv/notifications/TvNotificationPanelActivity;

    .line 31
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/tv/notifications/TvNotificationPanelActivity;->notificationsUpdated(Landroid/util/SparseArray;)V

    .line 33
    :cond_1
    const-string p0, "TvNotificationHandler"

    .line 36
    const-string p1, "Notification added"

    .line 38
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    return-void
    .line 43
.end method

.method public final onNotificationRankingUpdate(Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final onNotificationRemoved(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/android/systemui/statusbar/tv/notifications/TvNotificationHandler;->mNotifications:Landroid/util/SparseArray;

    .line 2
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getId()I

    .line 4
    move-result p3

    .line 7
    invoke-virtual {p2, p3}, Landroid/util/SparseArray;->contains(I)Z

    .line 8
    move-result p3

    .line 11
    if-eqz p3, :cond_0

    .line 12
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getId()I

    .line 14
    move-result p1

    .line 17
    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 18
    const-string p1, "TvNotificationHandler"

    .line 21
    const-string p3, "Notification removed"

    .line 23
    invoke-static {p1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    iget-object p0, p0, Lcom/android/systemui/statusbar/tv/notifications/TvNotificationHandler;->mUpdateListener:Lcom/android/systemui/statusbar/tv/notifications/TvNotificationHandler$Listener;

    .line 28
    if-eqz p0, :cond_0

    .line 30
    check-cast p0, Lcom/android/systemui/statusbar/tv/notifications/TvNotificationPanelActivity;

    .line 32
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/tv/notifications/TvNotificationPanelActivity;->notificationsUpdated(Landroid/util/SparseArray;)V

    .line 34
    :cond_0
    return-void
    .line 37
.end method

.method public final onNotificationsInitialized()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final start()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/tv/notifications/TvNotificationHandler;->mNotificationListener:Lcom/android/systemui/statusbar/NotificationListener;

    .line 2
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/NotificationListener;->addNotificationHandler(Lcom/android/systemui/statusbar/NotificationListener$NotificationHandler;)V

    .line 4
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationListener;->registerAsSystemService()V

    .line 7
    return-void
    .line 10
.end method
