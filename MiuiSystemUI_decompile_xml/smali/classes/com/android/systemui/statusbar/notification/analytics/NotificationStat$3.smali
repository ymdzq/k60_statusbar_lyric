.class public final Lcom/android/systemui/statusbar/notification/analytics/NotificationStat$3;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$MiuiClearAllListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat$3;->this$0:Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onEnd(ILjava/util/List;)V
    .locals 12

    .line 1
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 2
    move-result p1

    .line 5
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat$3;->this$0:Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;

    .line 6
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->mPanelStat:Lcom/android/systemui/statusbar/notification/analytics/NotificationPanelStat;

    .line 8
    const/4 v0, 0x1

    .line 10
    if-eqz p2, :cond_1

    .line 11
    iput-boolean v0, p2, Lcom/android/systemui/statusbar/notification/analytics/NotificationPanelStat;->mIsRemoveAll:Z

    .line 13
    sget-object v1, Lcom/miui/systemui/events/NotifAction;->CLEAR_ALL:Lcom/miui/systemui/events/NotifAction;

    .line 15
    iget-object v2, p2, Lcom/android/systemui/statusbar/notification/analytics/NotificationPanelStat;->mFistNotifAction:Lcom/miui/systemui/events/NotifAction;

    .line 17
    sget-object v3, Lcom/miui/systemui/events/NotifAction;->NONE:Lcom/miui/systemui/events/NotifAction;

    .line 19
    if-ne v2, v3, :cond_0

    .line 21
    iput-object v1, p2, Lcom/android/systemui/statusbar/notification/analytics/NotificationPanelStat;->mFistNotifAction:Lcom/miui/systemui/events/NotifAction;

    .line 23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 25
    :cond_0
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->mPanelStat:Lcom/android/systemui/statusbar/notification/analytics/NotificationPanelStat;

    .line 28
    iput-boolean v0, p2, Lcom/android/systemui/statusbar/notification/analytics/NotificationPanelStat;->mIsRemove:Z

    .line 30
    :cond_1
    const-class p2, Lcom/android/systemui/statusbar/notification/unimportant/FoldNotifManager;

    .line 32
    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 34
    move-result-object p2

    .line 37
    check-cast p2, Lcom/android/systemui/statusbar/notification/unimportant/FoldNotifManager;

    .line 38
    iget-boolean p2, p2, Lcom/android/systemui/statusbar/notification/unimportant/FoldNotifManager;->isShowingUnimportant:Z

    .line 40
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 42
    check-cast v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 44
    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    .line 46
    new-instance v11, Lcom/miui/systemui/events/CancelAllEvent;

    .line 48
    if-eqz p2, :cond_2

    .line 50
    move v3, p1

    .line 52
    goto :goto_0

    .line 53
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->getNotificationsCount()I

    .line 54
    move-result v2

    .line 57
    move v3, v2

    .line 58
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->getUnfoldedNotificationsCount()I

    .line 59
    move-result v4

    .line 62
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->mPanelStat:Lcom/android/systemui/statusbar/notification/analytics/NotificationPanelStat;

    .line 63
    if-eqz v2, :cond_3

    .line 65
    iget v2, v2, Lcom/android/systemui/statusbar/notification/analytics/NotificationPanelStat;->mPanelSlidingTimes:I

    .line 67
    if-lez v2, :cond_3

    .line 69
    const-string/jumbo v2, "true"

    .line 71
    goto :goto_1

    .line 74
    :cond_3
    const-string v2, "false"

    .line 75
    :goto_1
    move-object v5, v2

    .line 77
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->getScreenOrientationString()Ljava/lang/String;

    .line 78
    move-result-object v6

    .line 81
    iget v2, p0, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->mBarState:I

    .line 82
    if-ne v2, v0, :cond_4

    .line 84
    const-string v0, "null"

    .line 86
    goto :goto_2

    .line 88
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->mPanelSessionId:Ljava/lang/String;

    .line 89
    :goto_2
    move-object v7, v0

    .line 91
    const/4 v8, 0x0

    .line 92
    if-eqz p2, :cond_5

    .line 93
    const-string p2, "49.2.2.1.23694"

    .line 95
    :goto_3
    move-object v9, p2

    .line 97
    goto :goto_4

    .line 98
    :cond_5
    if-eqz v1, :cond_6

    .line 99
    const-string p2, "49.3.0.1.23722"

    .line 101
    goto :goto_3

    .line 103
    :cond_6
    const-string p2, "49.2.1.1.23690"

    .line 104
    goto :goto_3

    .line 106
    :goto_4
    const v10, 0x1509c44

    .line 107
    move-object v2, v11

    .line 110
    invoke-direct/range {v2 .. v10}, Lcom/miui/systemui/events/CancelAllEvent;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    .line 111
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->mEventTracker:Lcom/miui/interfaces/IEventTracker;

    .line 114
    invoke-interface {p2, v11}, Lcom/miui/interfaces/IEventTracker;->track(Ljava/lang/Object;)V

    .line 116
    new-instance p2, Ljava/util/HashMap;

    .line 119
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 121
    const-string v0, "notification_count"

    .line 124
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 126
    move-result-object p1

    .line 129
    invoke-virtual {p2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->mContext:Landroid/content/Context;

    .line 133
    const-string v0, "delete_all"

    .line 135
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->onPluginEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 137
    return-void
    .line 140
.end method
