.class public interface abstract Lcom/android/systemui/statusbar/NotificationListener$NotificationHandler;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# virtual methods
.method public onNotificationChannelModified(Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannel;I)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public abstract onNotificationPosted(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
.end method

.method public abstract onNotificationRankingUpdate(Landroid/service/notification/NotificationListenerService$RankingMap;)V
.end method

.method public abstract onNotificationRemoved(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;I)V
.end method

.method public abstract onNotificationsInitialized()V
.end method
