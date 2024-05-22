.class public final Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$mLifetimeExtender$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifLifetimeExtender;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$mLifetimeExtender$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final cancelLifetimeExtension(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$mLifetimeExtender$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->mNotifsExtendingLifetime:Landroid/util/ArrayMap;

    .line 4
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 9
    check-cast p0, Ljava/lang/Runnable;

    .line 10
    if-eqz p0, :cond_0

    .line 12
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 14
    :cond_0
    return-void
    .line 17
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "HeadsUpCoordinator"

    .line 2
    return-object p0
    .line 4
.end method

.method public final maybeExtendLifetime(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)Z
    .locals 9

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$mLifetimeExtender$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;

    .line 2
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    .line 4
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    .line 6
    invoke-virtual {p2, v0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->canRemoveImmediately(Ljava/lang/String;)Z

    .line 8
    move-result p2

    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz p2, :cond_0

    .line 13
    return v1

    .line 15
    :cond_0
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    .line 16
    iget-object v2, p2, Lcom/android/systemui/statusbar/AlertingNotificationManager;->mAlertEntries:Landroid/util/ArrayMap;

    .line 18
    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    move-result-object v2

    .line 23
    check-cast v2, Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;

    .line 24
    if-eqz v2, :cond_1

    .line 26
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;->isSticky()Z

    .line 28
    move-result v1

    .line 31
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->mNotifsExtendingLifetime:Landroid/util/ArrayMap;

    .line 32
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->mExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 34
    const/4 v4, 0x1

    .line 36
    if-eqz v1, :cond_3

    .line 37
    iget-object v1, p2, Lcom/android/systemui/statusbar/AlertingNotificationManager;->mAlertEntries:Landroid/util/ArrayMap;

    .line 39
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    move-result-object v0

    .line 44
    check-cast v0, Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;

    .line 45
    const-wide/16 v5, 0x0

    .line 47
    if-eqz v0, :cond_2

    .line 49
    iget-wide v0, v0, Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;->mEarliestRemovaltime:J

    .line 51
    iget-object p2, p2, Lcom/android/systemui/statusbar/AlertingNotificationManager;->mClock:Lcom/android/systemui/statusbar/AlertingNotificationManager$Clock;

    .line 53
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 58
    move-result-wide v7

    .line 61
    sub-long/2addr v0, v7

    .line 62
    invoke-static {v5, v6, v0, v1}, Ljava/lang/Math;->max(JJ)J

    .line 63
    move-result-wide v5

    .line 66
    :cond_2
    new-instance p2, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$mActionPressListener$1$1;

    .line 67
    invoke-direct {p2, p0, p1, v4}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$mActionPressListener$1$1;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)V

    .line 69
    invoke-interface {v3, p2, v5, v6}, Lcom/android/systemui/util/concurrency/DelayableExecutor;->executeDelayed(Ljava/lang/Runnable;J)Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;

    .line 72
    move-result-object p0

    .line 75
    invoke-virtual {v2, p1, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    goto :goto_0

    .line 79
    :cond_3
    new-instance p2, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$mActionPressListener$1$1;

    .line 80
    const/4 v0, 0x2

    .line 82
    invoke-direct {p2, p0, p1, v0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$mActionPressListener$1$1;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)V

    .line 83
    check-cast v3, Lcom/android/systemui/util/concurrency/ExecutorImpl;

    .line 86
    invoke-virtual {v3, p2}, Lcom/android/systemui/util/concurrency/ExecutorImpl;->execute(Ljava/lang/Runnable;)V

    .line 88
    const/4 p0, 0x0

    .line 91
    invoke-virtual {v2, p1, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    :goto_0
    return v4
    .line 95
.end method

.method public final setCallback(Lcom/android/systemui/statusbar/notification/collection/NotifCollection$$ExternalSyntheticLambda2;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$mLifetimeExtender$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->mEndLifetimeExtension:Lcom/android/systemui/statusbar/notification/collection/NotifCollection$$ExternalSyntheticLambda2;

    .line 4
    return-void
    .line 6
.end method
