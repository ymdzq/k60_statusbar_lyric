.class public final synthetic Lcom/android/systemui/statusbar/NotificationListener$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/NotificationListener;

.field public final synthetic f$1:Landroid/service/notification/StatusBarNotification;

.field public final synthetic f$2:Landroid/service/notification/NotificationListenerService$RankingMap;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/NotificationListener;Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationListener$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/statusbar/NotificationListener;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/statusbar/NotificationListener$$ExternalSyntheticLambda2;->f$1:Landroid/service/notification/StatusBarNotification;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/statusbar/NotificationListener$$ExternalSyntheticLambda2;->f$2:Landroid/service/notification/NotificationListenerService$RankingMap;

    .line 9
    iput p4, p0, Lcom/android/systemui/statusbar/NotificationListener$$ExternalSyntheticLambda2;->f$3:I

    .line 11
    return-void
    .line 13
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationListener$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/statusbar/NotificationListener;

    .line 2
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationListener$$ExternalSyntheticLambda2;->f$1:Landroid/service/notification/StatusBarNotification;

    .line 4
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationListener$$ExternalSyntheticLambda2;->f$2:Landroid/service/notification/NotificationListenerService$RankingMap;

    .line 6
    iget p0, p0, Lcom/android/systemui/statusbar/NotificationListener$$ExternalSyntheticLambda2;->f$3:I

    .line 8
    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationListener;->mNotificationHandlers:Ljava/util/List;

    .line 10
    check-cast v0, Ljava/util/ArrayList;

    .line 12
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 14
    move-result-object v0

    .line 17
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    move-result v3

    .line 21
    if-eqz v3, :cond_0

    .line 22
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    move-result-object v3

    .line 27
    check-cast v3, Lcom/android/systemui/statusbar/NotificationListener$NotificationHandler;

    .line 28
    invoke-interface {v3, v1, v2, p0}, Lcom/android/systemui/statusbar/NotificationListener$NotificationHandler;->onNotificationRemoved(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;I)V

    .line 30
    goto :goto_0

    .line 33
    :cond_0
    return-void
    .line 34
.end method
