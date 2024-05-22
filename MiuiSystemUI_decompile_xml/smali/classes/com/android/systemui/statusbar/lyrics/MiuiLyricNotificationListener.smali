# classes5.dex

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
    .param p1, "statusBarNotification"  # Landroid/service/notification/StatusBarNotification;
    .param p2, "rankingMap"  # Landroid/service/notification/NotificationListenerService$RankingMap;

    .line 11
    invoke-static {p1}, Lcom/android/systemui/statusbar/lyrics/MiuiStatusBarLyricManager;->onNotificationLyric(Landroid/service/notification/StatusBarNotification;)V

    .line 12
    return-void
.end method

.method public onNotificationRankingUpdate(Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .registers 2
    .param p1, "rankingMap"  # Landroid/service/notification/NotificationListenerService$RankingMap;

    .line 17
    return-void
.end method

.method public onNotificationRemoved(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;I)V
    .registers 4
    .param p1, "statusBarNotification"  # Landroid/service/notification/StatusBarNotification;
    .param p2, "rankingMap"  # Landroid/service/notification/NotificationListenerService$RankingMap;
    .param p3, "i"  # I

    .line 22
    return-void
.end method

.method public onNotificationsInitialized()V
    .registers 1

    .line 27
    return-void
.end method
