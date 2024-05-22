.class public final Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/plugins/NotificationListenerController$NotificationProvider;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins$1;->this$0:Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final addNotification(Landroid/service/notification/StatusBarNotification;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins$1;->this$0:Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins;

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins$1;->getRankingMap()Landroid/service/notification/NotificationListenerService$RankingMap;

    .line 4
    move-result-object p0

    .line 7
    invoke-virtual {v0, p1, p0}, Landroid/service/notification/NotificationListenerService;->onNotificationPosted(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    .line 8
    return-void
    .line 11
.end method

.method public final getActiveNotifications()[Landroid/service/notification/StatusBarNotification;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins$1;->this$0:Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins;

    .line 2
    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins;->access$001(Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins;)[Landroid/service/notification/StatusBarNotification;

    .line 4
    move-result-object p0

    .line 7
    return-object p0
    .line 8
.end method

.method public final getRankingMap()Landroid/service/notification/NotificationListenerService$RankingMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins$1;->this$0:Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins;

    .line 2
    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins;->access$101(Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins;)Landroid/service/notification/NotificationListenerService$RankingMap;

    .line 4
    move-result-object p0

    .line 7
    return-object p0
    .line 8
.end method

.method public final removeNotification(Landroid/service/notification/StatusBarNotification;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins$1;->this$0:Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins;

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins$1;->getRankingMap()Landroid/service/notification/NotificationListenerService$RankingMap;

    .line 4
    move-result-object p0

    .line 7
    invoke-virtual {v0, p1, p0}, Landroid/service/notification/NotificationListenerService;->onNotificationRemoved(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    .line 8
    return-void
    .line 11
.end method

.method public final updateRanking()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins$1;->this$0:Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins;

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins$1;->getRankingMap()Landroid/service/notification/NotificationListenerService$RankingMap;

    .line 4
    move-result-object p0

    .line 7
    invoke-virtual {v0, p0}, Landroid/service/notification/NotificationListenerService;->onNotificationRankingUpdate(Landroid/service/notification/NotificationListenerService$RankingMap;)V

    .line 8
    return-void
    .line 11
.end method
