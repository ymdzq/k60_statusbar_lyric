.class public abstract Lcom/android/systemui/statusbar/NotificationListener;
.super Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/collection/PipelineDumpable;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mDispatchRankingUpdateRunnable:Lcom/android/systemui/statusbar/NotificationListener$$ExternalSyntheticLambda0;

.field public final mMainExecutor:Ljava/util/concurrent/Executor;

.field public final mNotificationHandlers:Ljava/util/List;

.field public final mNotificationManager:Landroid/app/NotificationManager;

.field public final mRankingMapQueue:Ljava/util/Deque;

.field public final mSettingsListeners:Ljava/util/ArrayList;

.field public mSkippingRankingUpdatesSince:J

.field public final mSystemClock:Lcom/android/systemui/util/time/SystemClock;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/NotificationManager;Lcom/android/systemui/util/time/SystemClock;Ljava/util/concurrent/Executor;Lcom/android/systemui/plugins/PluginManager;)V
    .locals 2

    .line 1
    invoke-direct {p0, p5}, Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins;-><init>(Lcom/android/systemui/plugins/PluginManager;)V

    .line 2
    new-instance p5, Ljava/util/ArrayList;

    .line 5
    invoke-direct {p5}, Ljava/util/ArrayList;-><init>()V

    .line 7
    iput-object p5, p0, Lcom/android/systemui/statusbar/NotificationListener;->mNotificationHandlers:Ljava/util/List;

    .line 10
    new-instance p5, Ljava/util/ArrayList;

    .line 12
    invoke-direct {p5}, Ljava/util/ArrayList;-><init>()V

    .line 14
    iput-object p5, p0, Lcom/android/systemui/statusbar/NotificationListener;->mSettingsListeners:Ljava/util/ArrayList;

    .line 17
    new-instance p5, Ljava/util/concurrent/ConcurrentLinkedDeque;

    .line 19
    invoke-direct {p5}, Ljava/util/concurrent/ConcurrentLinkedDeque;-><init>()V

    .line 21
    iput-object p5, p0, Lcom/android/systemui/statusbar/NotificationListener;->mRankingMapQueue:Ljava/util/Deque;

    .line 24
    new-instance p5, Lcom/android/systemui/statusbar/NotificationListener$$ExternalSyntheticLambda0;

    .line 26
    invoke-direct {p5, p0}, Lcom/android/systemui/statusbar/NotificationListener$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/NotificationListener;)V

    .line 28
    iput-object p5, p0, Lcom/android/systemui/statusbar/NotificationListener;->mDispatchRankingUpdateRunnable:Lcom/android/systemui/statusbar/NotificationListener$$ExternalSyntheticLambda0;

    .line 31
    const-wide/16 v0, -0x1

    .line 33
    iput-wide v0, p0, Lcom/android/systemui/statusbar/NotificationListener;->mSkippingRankingUpdatesSince:J

    .line 35
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationListener;->mContext:Landroid/content/Context;

    .line 37
    iput-object p2, p0, Lcom/android/systemui/statusbar/NotificationListener;->mNotificationManager:Landroid/app/NotificationManager;

    .line 39
    iput-object p3, p0, Lcom/android/systemui/statusbar/NotificationListener;->mSystemClock:Lcom/android/systemui/util/time/SystemClock;

    .line 41
    iput-object p4, p0, Lcom/android/systemui/statusbar/NotificationListener;->mMainExecutor:Ljava/util/concurrent/Executor;

    .line 43
    return-void
    .line 45
.end method


# virtual methods
.method public final addNotificationHandler(Lcom/android/systemui/statusbar/NotificationListener$NotificationHandler;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationListener;->mNotificationHandlers:Ljava/util/List;

    .line 2
    check-cast v0, Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationListener;->mNotificationHandlers:Ljava/util/List;

    .line 12
    check-cast p0, Ljava/util/ArrayList;

    .line 14
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    return-void

    .line 19
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 20
    const-string p1, "Listener is already added"

    .line 22
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 24
    throw p0
    .line 27
.end method

.method public final dumpPipeline(Lcom/android/systemui/statusbar/notification/collection/PipelineDumper;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationListener;->mNotificationHandlers:Ljava/util/List;

    .line 2
    const-string v0, "notificationHandlers"

    .line 4
    invoke-virtual {p1, p0, v0}, Lcom/android/systemui/statusbar/notification/collection/PipelineDumper;->dump(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    return-void
    .line 9
.end method

.method public onListenerConnected()V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins;->mConnected:Z

    .line 3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins;->mPlugins:Ljava/util/ArrayList;

    .line 5
    new-instance v1, Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins$$ExternalSyntheticLambda1;

    .line 7
    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins;)V

    .line 9
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 12
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins;->getActiveNotifications()[Landroid/service/notification/StatusBarNotification;

    .line 15
    move-result-object v0

    .line 18
    if-nez v0, :cond_0

    .line 19
    const-string p0, "NotificationListener"

    .line 21
    const-string v0, "onListenerConnected unable to get active notifications."

    .line 23
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    return-void

    .line 28
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins;->getCurrentRanking()Landroid/service/notification/NotificationListenerService$RankingMap;

    .line 29
    move-result-object v1

    .line 32
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationListener;->mMainExecutor:Ljava/util/concurrent/Executor;

    .line 33
    new-instance v3, Lcom/android/systemui/statusbar/NotificationListener$$ExternalSyntheticLambda1;

    .line 35
    invoke-direct {v3, p0, v0, v1}, Lcom/android/systemui/statusbar/NotificationListener$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/NotificationListener;[Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    .line 37
    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 40
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationListener;->mNotificationManager:Landroid/app/NotificationManager;

    .line 43
    invoke-virtual {v0}, Landroid/app/NotificationManager;->shouldHideSilentStatusBarIcons()Z

    .line 45
    move-result v0

    .line 48
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationListener;->onSilentStatusBarIconsVisibilityChanged(Z)V

    .line 49
    return-void
    .line 52
.end method

.method public onNotificationChannelModified(Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannel;I)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins;->mPlugins:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    move-result-object v0

    .line 7
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    move-result v1

    .line 11
    if-eqz v1, :cond_1

    .line 12
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    move-result-object v1

    .line 17
    check-cast v1, Lcom/android/systemui/plugins/NotificationListenerController;

    .line 18
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/android/systemui/plugins/NotificationListenerController;->onNotificationChannelModified(Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannel;I)Z

    .line 20
    move-result v1

    .line 23
    if-eqz v1, :cond_0

    .line 24
    const/4 v0, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/4 v0, 0x0

    .line 28
    :goto_0
    if-nez v0, :cond_2

    .line 29
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationListener;->mMainExecutor:Ljava/util/concurrent/Executor;

    .line 31
    new-instance v7, Lcom/android/systemui/statusbar/NotificationListener$$ExternalSyntheticLambda4;

    .line 33
    move-object v1, v7

    .line 35
    move-object v2, p0

    .line 36
    move-object v3, p1

    .line 37
    move-object v4, p2

    .line 38
    move-object v5, p3

    .line 39
    move v6, p4

    .line 40
    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/statusbar/NotificationListener$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/statusbar/NotificationListener;Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannel;I)V

    .line 41
    invoke-interface {v0, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 44
    :cond_2
    return-void
    .line 47
.end method

.method public onNotificationRankingUpdate(Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_1

    .line 2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins;->mPlugins:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 9
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 19
    check-cast v1, Lcom/android/systemui/plugins/NotificationListenerController;

    .line 20
    invoke-interface {v1, p1}, Lcom/android/systemui/plugins/NotificationListenerController;->getCurrentRanking(Landroid/service/notification/NotificationListenerService$RankingMap;)Landroid/service/notification/NotificationListenerService$RankingMap;

    .line 22
    move-result-object p1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationListener;->mRankingMapQueue:Ljava/util/Deque;

    .line 27
    check-cast v0, Ljava/util/concurrent/ConcurrentLinkedDeque;

    .line 29
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->addLast(Ljava/lang/Object;)V

    .line 31
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationListener;->mMainExecutor:Ljava/util/concurrent/Executor;

    .line 34
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationListener;->mDispatchRankingUpdateRunnable:Lcom/android/systemui/statusbar/NotificationListener$$ExternalSyntheticLambda0;

    .line 36
    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 38
    :cond_1
    return-void
    .line 41
.end method

.method public final onNotificationRemoved(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 1

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/NotificationListener;->onNotificationRemoved(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;I)V

    return-void
.end method

.method public onNotificationRemoved(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;I)V
    .locals 2

    if-eqz p1, :cond_2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins;->mPlugins:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/plugins/NotificationListenerController;

    .line 2
    invoke-interface {v1, p1, p2}, Lcom/android/systemui/plugins/NotificationListenerController;->onNotificationRemoved(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    .line 3
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationListener;->mMainExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/systemui/statusbar/NotificationListener$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/systemui/statusbar/NotificationListener$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/statusbar/NotificationListener;Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method

.method public final onSilentStatusBarIconsVisibilityChanged(Z)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationListener;->mSettingsListeners:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    move-result-object p0

    .line 7
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 17
    check-cast v0, Lcom/android/systemui/statusbar/NotificationListener$NotificationSettingsListener;

    .line 18
    check-cast v0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController$1;

    .line 20
    xor-int/lit8 v1, p1, 0x1

    .line 22
    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController$1;->this$0:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    .line 24
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mShowLowPriority:Z

    .line 26
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->updateStatusBarIcons()V

    .line 28
    goto :goto_0

    .line 31
    :cond_0
    return-void
    .line 32
.end method

.method public final registerAsSystemService()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationListener;->mContext:Landroid/content/Context;

    .line 2
    new-instance v1, Landroid/content/ComponentName;

    .line 4
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationListener;->mContext:Landroid/content/Context;

    .line 6
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 8
    move-result-object v2

    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    move-result-object v3

    .line 15
    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 16
    move-result-object v3

    .line 19
    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    const/4 v2, -0x1

    .line 23
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins;->registerAsSystemService(Landroid/content/Context;Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    goto :goto_0

    .line 27
    :catch_0
    move-exception p0

    .line 28
    const-string v0, "NotificationListener"

    .line 29
    const-string v1, "Unable to register notification listener"

    .line 31
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 33
    :goto_0
    return-void
    .line 36
.end method
