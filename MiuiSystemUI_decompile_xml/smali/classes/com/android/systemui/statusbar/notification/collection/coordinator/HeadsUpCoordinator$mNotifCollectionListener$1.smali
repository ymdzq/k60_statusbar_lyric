.class public final Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$mNotifCollectionListener$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$mNotifCollectionListener$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onEntryAdded(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 11

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$mNotifCollectionListener$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;

    .line 2
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->mVisualInterruptionDecisionProvider:Lcom/android/systemui/statusbar/notification/interruption/VisualInterruptionDecisionProvider;

    .line 4
    check-cast v0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderWrapper;

    .line 6
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderWrapper;->makeUnloggedFullScreenIntentDecision(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderWrapper$FullScreenIntentDecisionImpl;

    .line 8
    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->mVisualInterruptionDecisionProvider:Lcom/android/systemui/statusbar/notification/interruption/VisualInterruptionDecisionProvider;

    .line 12
    move-object v2, v1

    .line 14
    check-cast v2, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderWrapper;

    .line 15
    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderWrapper;->logFullScreenIntentDecision(Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderWrapper$FullScreenIntentDecisionImpl;)V

    .line 17
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->mSystemClock:Lcom/android/systemui/util/time/SystemClock;

    .line 20
    iget-boolean v3, v0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderWrapper$FullScreenIntentDecisionImpl;->shouldInterrupt:Z

    .line 22
    if-eqz v3, :cond_0

    .line 24
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->mLaunchFullScreenIntentProvider:Lcom/android/systemui/statusbar/notification/collection/provider/LaunchFullScreenIntentProvider;

    .line 26
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/collection/provider/LaunchFullScreenIntentProvider;->launchFullScreenIntent(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 28
    goto :goto_0

    .line 31
    :cond_0
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderWrapper$FullScreenIntentDecisionImpl;->wouldInterruptWithoutDnd:Z

    .line 32
    if-eqz v0, :cond_1

    .line 34
    move-object v0, v2

    .line 36
    check-cast v0, Lcom/android/systemui/util/time/SystemClockImpl;

    .line 37
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 42
    move-result-wide v3

    .line 45
    invoke-virtual {p0, p1, v3, v4}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->addForFSIReconsideration(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;J)V

    .line 46
    :cond_1
    :goto_0
    check-cast v1, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderWrapper;

    .line 49
    iget-object v0, v1, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderWrapper;->wrapped:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;

    .line 51
    const/4 v1, 0x1

    .line 53
    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->checkHeadsUp(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)Z

    .line 54
    move-result v0

    .line 57
    if-eqz v0, :cond_2

    .line 58
    sget-object v0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderWrapper$DecisionImpl;->SHOULD_INTERRUPT:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderWrapper$DecisionImpl;

    .line 60
    goto :goto_1

    .line 62
    :cond_2
    sget-object v0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderWrapper$DecisionImpl;->SHOULD_NOT_INTERRUPT:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderWrapper$DecisionImpl;

    .line 63
    :goto_1
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderWrapper$DecisionImpl;->getShouldInterrupt()Z

    .line 65
    move-result v7

    .line 68
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->mPostedEntries:Ljava/util/LinkedHashMap;

    .line 69
    new-instance v1, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$PostedEntry;

    .line 71
    const/4 v5, 0x1

    .line 73
    const/4 v6, 0x0

    .line 74
    const/4 v8, 0x1

    .line 75
    const/4 v9, 0x0

    .line 76
    const/4 v10, 0x0

    .line 77
    move-object v3, v1

    .line 78
    move-object v4, p1

    .line 79
    invoke-direct/range {v3 .. v10}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$PostedEntry;-><init>(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;ZZZZZZ)V

    .line 80
    iget-object v3, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    .line 83
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    check-cast v2, Lcom/android/systemui/util/time/SystemClockImpl;

    .line 88
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 90
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 93
    move-result-wide v0

    .line 96
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->setUpdateTime(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;J)V

    .line 97
    return-void
    .line 100
.end method

.method public final onEntryCleanUp(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$mNotifCollectionListener$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->mHeadsUpViewBinder:Lcom/android/systemui/statusbar/notification/interruption/HeadsUpViewBinder;

    .line 4
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpViewBinder;->abortBindCallback(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 6
    return-void
    .line 9
.end method

.method public final onEntryRemoved(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$mNotifCollectionListener$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;

    .line 2
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->mPostedEntries:Ljava/util/LinkedHashMap;

    .line 4
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    .line 6
    invoke-virtual {p2, v0}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->mEntriesUpdateTimes:Landroid/util/ArrayMap;

    .line 11
    invoke-virtual {p2, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->cancelHeadsUpBind(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 16
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    .line 19
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/AlertingNotificationManager;->isAlerting(Ljava/lang/String;)Z

    .line 21
    move-result p2

    .line 24
    if-eqz p2, :cond_2

    .line 25
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    .line 27
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mRemoteInputController:Lcom/android/systemui/statusbar/RemoteInputController;

    .line 29
    const/4 p2, 0x1

    .line 31
    const/4 v1, 0x0

    .line 32
    if-eqz p0, :cond_0

    .line 33
    iget-object p0, p0, Lcom/android/systemui/statusbar/RemoteInputController;->mSpinning:Landroid/util/ArrayMap;

    .line 35
    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 37
    move-result p0

    .line 40
    if-eqz p0, :cond_0

    .line 41
    move p0, p2

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    move p0, v1

    .line 45
    :goto_0
    if-eqz p0, :cond_1

    .line 46
    sget-boolean p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->FORCE_REMOTE_INPUT_HISTORY:Z

    .line 48
    if-nez p0, :cond_1

    .line 50
    goto :goto_1

    .line 52
    :cond_1
    move p2, v1

    .line 53
    :goto_1
    invoke-virtual {p1, v0, p2}, Lcom/android/systemui/statusbar/AlertingNotificationManager;->removeNotification(Ljava/lang/String;Z)Z

    .line 54
    :cond_2
    return-void
    .line 57
.end method

.method public final onEntryUpdated(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 12

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$mNotifCollectionListener$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;

    .line 2
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->mVisualInterruptionDecisionProvider:Lcom/android/systemui/statusbar/notification/interruption/VisualInterruptionDecisionProvider;

    .line 4
    check-cast v0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderWrapper;

    .line 6
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderWrapper;->wrapped:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;

    .line 8
    const/4 v1, 0x1

    .line 10
    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->checkHeadsUp(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)Z

    .line 11
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    sget-object v0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderWrapper$DecisionImpl;->SHOULD_INTERRUPT:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderWrapper$DecisionImpl;

    .line 17
    goto :goto_0

    .line 19
    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderWrapper$DecisionImpl;->SHOULD_NOT_INTERRUPT:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderWrapper$DecisionImpl;

    .line 20
    :goto_0
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderWrapper$DecisionImpl;->getShouldInterrupt()Z

    .line 22
    move-result v4

    .line 25
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->interruption:Z

    .line 26
    const/4 v8, 0x0

    .line 28
    if-eqz v0, :cond_2

    .line 29
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 31
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 33
    move-result-object v0

    .line 36
    iget v0, v0, Landroid/app/Notification;->flags:I

    .line 37
    and-int/lit8 v0, v0, 0x8

    .line 39
    if-nez v0, :cond_1

    .line 41
    goto :goto_1

    .line 43
    :cond_1
    move v5, v8

    .line 44
    goto :goto_2

    .line 45
    :cond_2
    :goto_1
    move v5, v1

    .line 46
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    .line 47
    iget-object v9, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    .line 49
    invoke-virtual {v0, v9}, Lcom/android/systemui/statusbar/AlertingNotificationManager;->isAlerting(Ljava/lang/String;)Z

    .line 51
    move-result v6

    .line 54
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->isEntryBinding(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Z

    .line 55
    move-result v7

    .line 58
    iget-object v10, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->mPostedEntries:Ljava/util/LinkedHashMap;

    .line 59
    new-instance v11, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$mNotifCollectionListener$1$onEntryUpdated$posted$1;

    .line 61
    move-object v2, v11

    .line 63
    move-object v3, p1

    .line 64
    invoke-direct/range {v2 .. v7}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$mNotifCollectionListener$1$onEntryUpdated$posted$1;-><init>(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;ZZZZ)V

    .line 65
    invoke-virtual {v10, v9, v11}, Ljava/util/LinkedHashMap;->compute(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    .line 68
    move-result-object v2

    .line 71
    check-cast v2, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$PostedEntry;

    .line 72
    if-eqz v2, :cond_3

    .line 74
    iget-boolean v3, v2, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$PostedEntry;->shouldHeadsUpEver:Z

    .line 76
    if-nez v3, :cond_3

    .line 78
    goto :goto_3

    .line 80
    :cond_3
    move v1, v8

    .line 81
    :goto_3
    if-eqz v1, :cond_5

    .line 82
    iget-boolean v1, v2, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$PostedEntry;->isAlerting:Z

    .line 84
    if-eqz v1, :cond_4

    .line 86
    iget-object v1, v2, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$PostedEntry;->key:Ljava/lang/String;

    .line 88
    invoke-virtual {v0, v1, v8}, Lcom/android/systemui/statusbar/AlertingNotificationManager;->removeNotification(Ljava/lang/String;Z)Z

    .line 90
    goto :goto_4

    .line 93
    :cond_4
    iget-boolean v0, v2, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$PostedEntry;->isBinding:Z

    .line 94
    if-eqz v0, :cond_5

    .line 96
    iget-object v0, v2, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$PostedEntry;->entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 98
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->cancelHeadsUpBind(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 100
    :cond_5
    :goto_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->mSystemClock:Lcom/android/systemui/util/time/SystemClock;

    .line 103
    check-cast v0, Lcom/android/systemui/util/time/SystemClockImpl;

    .line 105
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 107
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 110
    move-result-wide v0

    .line 113
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->setUpdateTime(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;J)V

    .line 114
    return-void
    .line 117
.end method

.method public final onRankingApplied()V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$mNotifCollectionListener$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;

    .line 4
    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->mNotifPipeline:Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    .line 6
    const/4 v3, 0x0

    .line 8
    if-nez v2, :cond_0

    .line 9
    move-object v2, v3

    .line 11
    :cond_0
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->getAllNotifs()Ljava/util/Collection;

    .line 12
    move-result-object v2

    .line 15
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 16
    move-result-object v2

    .line 19
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    move-result v4

    .line 23
    if-eqz v4, :cond_c

    .line 24
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    move-result-object v4

    .line 29
    check-cast v4, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 30
    iget-object v5, v4, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    .line 32
    iget-object v6, v1, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->mEntriesUpdateTimes:Landroid/util/ArrayMap;

    .line 34
    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 36
    move-result v5

    .line 39
    iget-object v7, v1, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->mSystemClock:Lcom/android/systemui/util/time/SystemClock;

    .line 40
    iget-object v8, v4, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    .line 42
    const-wide/16 v9, 0x7d0

    .line 44
    const/4 v12, 0x0

    .line 46
    if-nez v5, :cond_2

    .line 47
    goto :goto_1

    .line 49
    :cond_2
    invoke-virtual {v6, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    move-result-object v5

    .line 53
    check-cast v5, Ljava/lang/Long;

    .line 54
    if-nez v5, :cond_3

    .line 56
    goto :goto_1

    .line 58
    :cond_3
    invoke-virtual {v5}, Ljava/lang/Number;->longValue()J

    .line 59
    move-result-wide v5

    .line 62
    move-object v13, v7

    .line 63
    check-cast v13, Lcom/android/systemui/util/time/SystemClockImpl;

    .line 64
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 69
    move-result-wide v13

    .line 72
    sub-long/2addr v13, v5

    .line 73
    cmp-long v5, v13, v9

    .line 74
    if-gtz v5, :cond_4

    .line 76
    const/4 v5, 0x1

    .line 78
    goto :goto_2

    .line 79
    :cond_4
    :goto_1
    move v5, v12

    .line 80
    :goto_2
    if-eqz v5, :cond_1

    .line 81
    iget-boolean v5, v4, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->interruption:Z

    .line 83
    if-nez v5, :cond_1

    .line 85
    iget-object v5, v1, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->mFSIUpdateCandidates:Landroid/util/ArrayMap;

    .line 87
    invoke-virtual {v5, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    move-result-object v6

    .line 92
    check-cast v6, Ljava/lang/Long;

    .line 93
    if-nez v6, :cond_5

    .line 95
    goto :goto_3

    .line 97
    :cond_5
    invoke-virtual {v6}, Ljava/lang/Number;->longValue()J

    .line 98
    move-result-wide v13

    .line 101
    check-cast v7, Lcom/android/systemui/util/time/SystemClockImpl;

    .line 102
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 104
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 107
    move-result-wide v6

    .line 110
    sub-long/2addr v6, v13

    .line 111
    cmp-long v6, v6, v9

    .line 112
    if-gtz v6, :cond_6

    .line 114
    const/4 v6, 0x1

    .line 116
    goto :goto_4

    .line 117
    :cond_6
    :goto_3
    move v6, v12

    .line 118
    :goto_4
    iget-object v7, v1, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->mLogger:Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinatorLogger;

    .line 119
    iget-object v9, v1, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->mVisualInterruptionDecisionProvider:Lcom/android/systemui/statusbar/notification/interruption/VisualInterruptionDecisionProvider;

    .line 121
    const-string v10, "HeadsUpCoordinator"

    .line 123
    if-eqz v6, :cond_8

    .line 125
    move-object v6, v9

    .line 127
    check-cast v6, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderWrapper;

    .line 128
    invoke-virtual {v6, v4}, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderWrapper;->makeUnloggedFullScreenIntentDecision(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderWrapper$FullScreenIntentDecisionImpl;

    .line 130
    move-result-object v6

    .line 133
    iget-boolean v13, v6, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderWrapper$FullScreenIntentDecisionImpl;->shouldInterrupt:Z

    .line 134
    iget-object v14, v6, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderWrapper$FullScreenIntentDecisionImpl;->logReason:Ljava/lang/String;

    .line 136
    if-eqz v13, :cond_7

    .line 138
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 140
    sget-object v11, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 143
    sget-object v12, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinatorLogger$logEntryUpdatedToFullScreen$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinatorLogger$logEntryUpdatedToFullScreen$2;

    .line 145
    iget-object v7, v7, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinatorLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 147
    invoke-virtual {v7, v10, v11, v12, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 149
    move-result-object v10

    .line 152
    invoke-interface {v10, v8}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 153
    invoke-interface {v10, v14}, Lcom/android/systemui/log/LogMessage;->setStr2(Ljava/lang/String;)V

    .line 156
    invoke-virtual {v7, v10}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 159
    check-cast v9, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderWrapper;

    .line 162
    invoke-virtual {v9, v6}, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderWrapper;->logFullScreenIntentDecision(Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderWrapper$FullScreenIntentDecisionImpl;)V

    .line 164
    iget-object v6, v1, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->mLaunchFullScreenIntentProvider:Lcom/android/systemui/statusbar/notification/collection/provider/LaunchFullScreenIntentProvider;

    .line 167
    invoke-virtual {v6, v4}, Lcom/android/systemui/statusbar/notification/collection/provider/LaunchFullScreenIntentProvider;->launchFullScreenIntent(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 169
    invoke-virtual {v5, v8}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    goto/16 :goto_0

    .line 175
    :cond_7
    iget-boolean v13, v6, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderWrapper$FullScreenIntentDecisionImpl;->wouldInterruptWithoutDnd:Z

    .line 177
    if-nez v13, :cond_8

    .line 179
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 181
    sget-object v13, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 184
    sget-object v15, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinatorLogger$logEntryDisqualifiedFromFullScreen$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinatorLogger$logEntryDisqualifiedFromFullScreen$2;

    .line 186
    iget-object v11, v7, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinatorLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 188
    invoke-virtual {v11, v10, v13, v15, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 190
    move-result-object v13

    .line 193
    invoke-interface {v13, v8}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 194
    invoke-interface {v13, v14}, Lcom/android/systemui/log/LogMessage;->setStr2(Ljava/lang/String;)V

    .line 197
    invoke-virtual {v11, v13}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 200
    move-object v11, v9

    .line 203
    check-cast v11, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderWrapper;

    .line 204
    invoke-virtual {v11, v6}, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderWrapper;->logFullScreenIntentDecision(Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderWrapper$FullScreenIntentDecisionImpl;)V

    .line 206
    invoke-virtual {v5, v8}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    :cond_8
    check-cast v9, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderWrapper;

    .line 212
    iget-object v5, v9, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderWrapper;->wrapped:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;

    .line 214
    invoke-virtual {v5, v4, v12}, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->checkHeadsUp(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)Z

    .line 216
    move-result v5

    .line 219
    if-eqz v5, :cond_9

    .line 220
    sget-object v5, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderWrapper$DecisionImpl;->SHOULD_INTERRUPT:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderWrapper$DecisionImpl;

    .line 222
    goto :goto_5

    .line 224
    :cond_9
    sget-object v5, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderWrapper$DecisionImpl;->SHOULD_NOT_INTERRUPT:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderWrapper$DecisionImpl;

    .line 225
    :goto_5
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderWrapper$DecisionImpl;->getShouldInterrupt()Z

    .line 227
    move-result v6

    .line 230
    iget-object v9, v1, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->mPostedEntries:Ljava/util/LinkedHashMap;

    .line 231
    invoke-virtual {v9, v8}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    move-result-object v9

    .line 236
    check-cast v9, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$PostedEntry;

    .line 237
    if-eqz v9, :cond_a

    .line 239
    iget-boolean v9, v9, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$PostedEntry;->shouldHeadsUpEver:Z

    .line 241
    goto :goto_6

    .line 243
    :cond_a
    move v9, v12

    .line 244
    :goto_6
    if-eq v9, v6, :cond_b

    .line 245
    const/4 v11, 0x1

    .line 247
    goto :goto_7

    .line 248
    :cond_b
    move v11, v12

    .line 249
    :goto_7
    if-eqz v11, :cond_1

    .line 250
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderWrapper$DecisionImpl;->getLogReason()Ljava/lang/String;

    .line 252
    move-result-object v5

    .line 255
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 256
    sget-object v9, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 259
    sget-object v11, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinatorLogger$logEntryUpdatedByRanking$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinatorLogger$logEntryUpdatedByRanking$2;

    .line 261
    iget-object v7, v7, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinatorLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 263
    invoke-virtual {v7, v10, v9, v11, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 265
    move-result-object v9

    .line 268
    invoke-interface {v9, v8}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 269
    invoke-interface {v9, v6}, Lcom/android/systemui/log/LogMessage;->setBool1(Z)V

    .line 272
    invoke-interface {v9, v5}, Lcom/android/systemui/log/LogMessage;->setStr2(Ljava/lang/String;)V

    .line 275
    invoke-virtual {v7, v9}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 278
    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$mNotifCollectionListener$1;->onEntryUpdated(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 281
    goto/16 :goto_0

    .line 284
    :cond_c
    return-void
    .line 286
.end method
