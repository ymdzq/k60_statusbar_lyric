.class public final Lcom/android/systemui/statusbar/notification/MiuiNotificationListener;
.super Lcom/android/systemui/statusbar/NotificationListener;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final mBgHandler:Landroid/os/Handler;

.field public mHideDeletedFocusController:Lcom/android/systemui/statusbar/notification/focus/HideDeletedFocusController;

.field public final mMainExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public static $r8$lambda$dp1ypQkY5b4FG42ow6RVSXV7tno(Lcom/android/systemui/statusbar/notification/MiuiNotificationListener;Landroid/service/notification/StatusBarNotification;ILandroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/MiuiNotificationListener;->mHideDeletedFocusController:Lcom/android/systemui/statusbar/notification/focus/HideDeletedFocusController;

    .line 2
    if-eqz v0, :cond_2

    .line 4
    if-nez p1, :cond_0

    .line 6
    goto :goto_0

    .line 8
    :cond_0
    const/4 v1, 0x2

    .line 9
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/focus/HideDeletedFocusController;->mDeletedNotifs:Lcom/android/systemui/statusbar/notification/focus/HideDeletedFocusController$mDeletedNotifs$1;

    .line 10
    if-ne p2, v1, :cond_1

    .line 12
    sget-object v1, Lcom/android/systemui/statusbar/notification/focus/FocusConst$Pkg;->sSaveDelPkgs:Ljava/util/List;

    .line 14
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    .line 16
    move-result-object v2

    .line 19
    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 20
    move-result v1

    .line 23
    if-eqz v1, :cond_2

    .line 24
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    .line 26
    move-result-object v1

    .line 29
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 30
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    goto :goto_0

    .line 35
    :cond_1
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    .line 36
    move-result-object v1

    .line 39
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/focus/HideDeletedFocusController$mDeletedNotifs$1;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    :cond_2
    :goto_0
    invoke-super {p0, p1, p3, p2}, Lcom/android/systemui/statusbar/NotificationListener;->onNotificationRemoved(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;I)V

    .line 43
    return-void
    .line 46
.end method

.method public static synthetic $r8$lambda$nTt4St4jycCXBksGesgmbjPVeeo(Lcom/android/systemui/statusbar/notification/MiuiNotificationListener;Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannel;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/NotificationListener;->onNotificationChannelModified(Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannel;I)V

    .line 2
    return-void
    .line 5
.end method

.method public static synthetic $r8$lambda$qI5HVpbyFw2GcgVVtVtk9cYbOXQ(Lcom/android/systemui/statusbar/notification/MiuiNotificationListener;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/NotificationListener;->onNotificationRankingUpdate(Landroid/service/notification/NotificationListenerService$RankingMap;)V

    .line 2
    return-void
    .line 5
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/NotificationManager;Lcom/android/systemui/util/time/SystemClock;Ljava/util/concurrent/Executor;Lcom/android/systemui/plugins/PluginManager;Landroid/os/Handler;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/android/systemui/statusbar/NotificationListener;-><init>(Landroid/content/Context;Landroid/app/NotificationManager;Lcom/android/systemui/util/time/SystemClock;Ljava/util/concurrent/Executor;Lcom/android/systemui/plugins/PluginManager;)V

    .line 2
    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/MiuiNotificationListener;->mMainExecutor:Ljava/util/concurrent/Executor;

    .line 5
    iput-object p6, p0, Lcom/android/systemui/statusbar/notification/MiuiNotificationListener;->mBgHandler:Landroid/os/Handler;

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final onListenerConnected()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/android/systemui/statusbar/NotificationListener;->onListenerConnected()V

    .line 2
    return-void
    .line 5
.end method

.method public final onNotificationChannelModified(Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannel;I)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/MiuiNotificationListener;->mBgHandler:Landroid/os/Handler;

    .line 2
    new-instance v8, Lcom/android/systemui/statusbar/notification/MiuiNotificationListener$$ExternalSyntheticLambda0;

    .line 4
    const/4 v7, 0x0

    .line 6
    move-object v1, v8

    .line 7
    move-object v2, p0

    .line 8
    move-object v3, p1

    .line 9
    move-object v4, p2

    .line 10
    move-object v5, p3

    .line 11
    move v6, p4

    .line 12
    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/statusbar/notification/MiuiNotificationListener$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/notification/MiuiNotificationListener;Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannel;II)V

    .line 13
    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 16
    return-void
    .line 19
.end method

.method public final onNotificationPosted(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/MiuiNotificationListener;->mBgHandler:Landroid/os/Handler;

    .line 2
    new-instance v1, Lcom/android/systemui/statusbar/notification/MiuiNotificationListener$$ExternalSyntheticLambda3;

    .line 4
    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/statusbar/notification/MiuiNotificationListener$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/statusbar/notification/MiuiNotificationListener;Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    .line 6
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    return-void
    .line 12
.end method

.method public final onNotificationRankingUpdate(Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/MiuiNotificationListener;->mBgHandler:Landroid/os/Handler;

    .line 2
    new-instance v1, Lcom/android/systemui/statusbar/notification/MiuiNotificationListener$$ExternalSyntheticLambda1;

    .line 4
    const/4 v2, 0x0

    .line 6
    invoke-direct {v1, p0, p1, v2}, Lcom/android/systemui/statusbar/notification/MiuiNotificationListener$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/notification/MiuiNotificationListener;Landroid/service/notification/NotificationListenerService$RankingMap;I)V

    .line 7
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 10
    return-void
    .line 13
.end method

.method public final onNotificationRemoved(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;I)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/MiuiNotificationListener;->mBgHandler:Landroid/os/Handler;

    .line 2
    new-instance v7, Lcom/android/systemui/statusbar/notification/MiuiNotificationListener$$ExternalSyntheticLambda2;

    .line 4
    const/4 v6, 0x0

    .line 6
    move-object v1, v7

    .line 7
    move-object v2, p0

    .line 8
    move-object v3, p1

    .line 9
    move v4, p3

    .line 10
    move-object v5, p2

    .line 11
    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/statusbar/notification/MiuiNotificationListener$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/statusbar/notification/MiuiNotificationListener;Landroid/service/notification/StatusBarNotification;ILandroid/service/notification/NotificationListenerService$RankingMap;I)V

    .line 12
    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 15
    return-void
    .line 18
.end method
