.class public final Lcom/android/systemui/statusbar/notification/collection/coordinator/RemoteInputCoordinator$RemoteInputHistoryExtender;
.super Lcom/android/systemui/statusbar/notification/collection/notifcollection/SelfTrackingLifetimeExtender;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/RemoteInputCoordinator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/RemoteInputCoordinator;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/RemoteInputCoordinator$RemoteInputHistoryExtender;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/RemoteInputCoordinator;

    .line 2
    invoke-static {}, Lcom/android/systemui/statusbar/notification/collection/coordinator/RemoteInputCoordinatorKt;->access$getDEBUG()Z

    .line 4
    move-result v0

    .line 7
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/coordinator/RemoteInputCoordinator;->mMainHandler:Landroid/os/Handler;

    .line 8
    const-string v1, "RemoteInputHistory"

    .line 10
    invoke-direct {p0, v1, v0, p1}, Lcom/android/systemui/statusbar/notification/collection/notifcollection/SelfTrackingLifetimeExtender;-><init>(Ljava/lang/String;ZLandroid/os/Handler;)V

    .line 12
    return-void
    .line 15
.end method


# virtual methods
.method public final onStartedLifetimeExtension(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 6

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/RemoteInputCoordinator$RemoteInputHistoryExtender;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/RemoteInputCoordinator;

    .line 2
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/RemoteInputCoordinator;->mRebuilder:Lcom/android/systemui/statusbar/RemoteInputNotificationRebuilder;

    .line 4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->remoteInputText:Ljava/lang/CharSequence;

    .line 9
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 11
    move-result v2

    .line 14
    if-eqz v2, :cond_0

    .line 15
    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->remoteInputTextWhenReset:Ljava/lang/CharSequence;

    .line 17
    :cond_0
    move-object v2, v1

    .line 19
    iget-object v4, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->remoteInputMimeType:Ljava/lang/String;

    .line 20
    iget-object v5, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->remoteInputUri:Landroid/net/Uri;

    .line 22
    const/4 v3, 0x0

    .line 24
    move-object v1, p1

    .line 25
    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/RemoteInputNotificationRebuilder;->rebuildWithRemoteInputInserted(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/CharSequence;ZLjava/lang/String;Landroid/net/Uri;)Landroid/service/notification/StatusBarNotification;

    .line 26
    move-result-object v0

    .line 29
    const-wide/16 v1, -0x7d0

    .line 30
    iput-wide v1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->lastRemoteInputSent:J

    .line 32
    const/4 v1, 0x0

    .line 34
    iput-object v1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->remoteInputTextWhenReset:Ljava/lang/CharSequence;

    .line 35
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/RemoteInputCoordinator;->mNotifUpdater:Lcom/android/systemui/statusbar/notification/collection/NotifCollection$$ExternalSyntheticLambda4;

    .line 37
    if-nez p0, :cond_1

    .line 39
    goto :goto_0

    .line 41
    :cond_1
    move-object v1, p0

    .line 42
    :goto_0
    const-string p0, "Extending lifetime of notification with remote input"

    .line 43
    invoke-virtual {v1, v0, p0}, Lcom/android/systemui/statusbar/notification/collection/NotifCollection$$ExternalSyntheticLambda4;->onInternalNotificationUpdate(Landroid/service/notification/StatusBarNotification;Ljava/lang/String;)V

    .line 45
    return-void
    .line 48
.end method

.method public final queryShouldExtendLifetime(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 7

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/RemoteInputCoordinator$RemoteInputHistoryExtender;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/RemoteInputCoordinator;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/RemoteInputCoordinator;->mNotificationRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    sget-boolean v0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->FORCE_REMOTE_INPUT_HISTORY:Z

    .line 9
    const/4 v1, 0x0

    .line 11
    if-nez v0, :cond_0

    .line 12
    goto :goto_2

    .line 14
    :cond_0
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    .line 15
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mRemoteInputController:Lcom/android/systemui/statusbar/RemoteInputController;

    .line 17
    const/4 v2, 0x1

    .line 19
    if-eqz p0, :cond_1

    .line 20
    iget-object p0, p0, Lcom/android/systemui/statusbar/RemoteInputController;->mSpinning:Landroid/util/ArrayMap;

    .line 22
    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 24
    move-result p0

    .line 27
    if-eqz p0, :cond_1

    .line 28
    move p0, v2

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    move p0, v1

    .line 32
    :goto_0
    if-nez p0, :cond_3

    .line 33
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 35
    move-result-wide v3

    .line 38
    iget-wide p0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->lastRemoteInputSent:J

    .line 39
    const-wide/16 v5, 0x1f4

    .line 41
    add-long/2addr p0, v5

    .line 43
    cmp-long p0, v3, p0

    .line 44
    if-gez p0, :cond_2

    .line 46
    move p0, v2

    .line 48
    goto :goto_1

    .line 49
    :cond_2
    move p0, v1

    .line 50
    :goto_1
    if-eqz p0, :cond_4

    .line 51
    :cond_3
    move v1, v2

    .line 53
    :cond_4
    :goto_2
    return v1
    .line 54
.end method
