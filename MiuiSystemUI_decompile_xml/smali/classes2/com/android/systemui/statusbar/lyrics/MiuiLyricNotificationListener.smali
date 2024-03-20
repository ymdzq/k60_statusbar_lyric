# classes.dex

.class public Lcom/android/systemui/statusbar/lyrics/MiuiLyricNotificationListener;
.super Ljava/lang/Object;
.source "MiuiLyricNotificationListener.java"

# interfaces
.implements Lcom/android/systemui/statusbar/NotificationListener$NotificationHandler;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNotificationPosted(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .registers 3

    .line 11
    invoke-static {p1}, Lcom/android/systemui/statusbar/lyrics/MiuiStatusBarLyricManager;->onNotificationLyric(Landroid/service/notification/StatusBarNotification;)V

    return-void
.end method

.method public onNotificationRankingUpdate(Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .registers 2

    return-void
.end method

.method public onNotificationRemoved(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;I)V
    .registers 4

    return-void
.end method

.method public onNotificationsInitialized()V
    .registers 1

    return-void
.end method
