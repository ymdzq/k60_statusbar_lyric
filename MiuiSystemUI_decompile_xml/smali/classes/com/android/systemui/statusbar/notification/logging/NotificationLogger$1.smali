.class public final Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final mTmpCurrentlyVisibleNotifications:Landroid/util/ArraySet;

.field public final mTmpNewlyVisibleNotifications:Landroid/util/ArraySet;

.field public final mTmpNoLongerVisibleNotifications:Landroid/util/ArraySet;

.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$1;->this$0:Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance p1, Landroid/util/ArraySet;

    .line 7
    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$1;->mTmpNewlyVisibleNotifications:Landroid/util/ArraySet;

    .line 12
    new-instance p1, Landroid/util/ArraySet;

    .line 14
    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$1;->mTmpCurrentlyVisibleNotifications:Landroid/util/ArraySet;

    .line 19
    new-instance p1, Landroid/util/ArraySet;

    .line 21
    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$1;->mTmpNoLongerVisibleNotifications:Landroid/util/ArraySet;

    .line 26
    return-void
    .line 28
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$1;->this$0:Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 4
    move-result-wide v1

    .line 7
    iput-wide v1, v0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->mLastVisibilityReportUptimeMs:J

    .line 8
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$1;->this$0:Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;

    .line 10
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->mNotifLiveDataStore:Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataStoreImpl;

    .line 12
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataStoreImpl;->activeNotifList:Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataImpl;

    .line 14
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataImpl;->getValue()Ljava/lang/Object;

    .line 16
    move-result-object v0

    .line 19
    check-cast v0, Ljava/util/List;

    .line 20
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 22
    move-result v1

    .line 25
    const/4 v2, 0x0

    .line 26
    :goto_0
    if-ge v2, v1, :cond_2

    .line 27
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 29
    move-result-object v3

    .line 32
    check-cast v3, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 33
    iget-object v4, v3, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 35
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    .line 37
    move-result-object v4

    .line 40
    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$1;->this$0:Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;

    .line 41
    iget-object v5, v5, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->mListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    .line 43
    check-cast v5, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$NotificationListContainerImpl;

    .line 45
    iget-object v5, v5, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$NotificationListContainerImpl;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 47
    invoke-virtual {v5, v3}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->isInVisibleLocation(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    .line 49
    move-result v5

    .line 52
    invoke-static {v3}, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->getNotificationLocation(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;

    .line 53
    move-result-object v3

    .line 56
    invoke-static {v4, v2, v1, v5, v3}, Lcom/android/internal/statusbar/NotificationVisibility;->obtain(Ljava/lang/String;IIZLcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;)Lcom/android/internal/statusbar/NotificationVisibility;

    .line 57
    move-result-object v3

    .line 60
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$1;->this$0:Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;

    .line 61
    iget-object v4, v4, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->mCurrentlyVisibleNotifications:Landroid/util/ArraySet;

    .line 63
    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 65
    move-result v4

    .line 68
    if-eqz v5, :cond_0

    .line 69
    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$1;->mTmpCurrentlyVisibleNotifications:Landroid/util/ArraySet;

    .line 71
    invoke-virtual {v5, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 73
    if-nez v4, :cond_1

    .line 76
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$1;->mTmpNewlyVisibleNotifications:Landroid/util/ArraySet;

    .line 78
    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 80
    goto :goto_1

    .line 83
    :cond_0
    invoke-virtual {v3}, Lcom/android/internal/statusbar/NotificationVisibility;->recycle()V

    .line 84
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 87
    goto :goto_0

    .line 89
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$1;->mTmpNoLongerVisibleNotifications:Landroid/util/ArraySet;

    .line 90
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$1;->this$0:Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;

    .line 92
    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->mCurrentlyVisibleNotifications:Landroid/util/ArraySet;

    .line 94
    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 96
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$1;->mTmpNoLongerVisibleNotifications:Landroid/util/ArraySet;

    .line 99
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$1;->mTmpCurrentlyVisibleNotifications:Landroid/util/ArraySet;

    .line 101
    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->removeAll(Landroid/util/ArraySet;)Z

    .line 103
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$1;->this$0:Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;

    .line 106
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$1;->mTmpNewlyVisibleNotifications:Landroid/util/ArraySet;

    .line 108
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$1;->mTmpNoLongerVisibleNotifications:Landroid/util/ArraySet;

    .line 110
    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->logNotificationVisibilityChanges(Ljava/util/Collection;Ljava/util/Collection;)V

    .line 112
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$1;->this$0:Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;

    .line 115
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->mCurrentlyVisibleNotifications:Landroid/util/ArraySet;

    .line 117
    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->recycleAllVisibilityObjects(Landroid/util/ArraySet;)V

    .line 119
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$1;->this$0:Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;

    .line 122
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->mCurrentlyVisibleNotifications:Landroid/util/ArraySet;

    .line 124
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$1;->mTmpCurrentlyVisibleNotifications:Landroid/util/ArraySet;

    .line 126
    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 128
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$1;->this$0:Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;

    .line 131
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->mExpansionStateLogger:Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger;

    .line 133
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$1;->mTmpCurrentlyVisibleNotifications:Landroid/util/ArraySet;

    .line 135
    invoke-virtual {v0, v2, v2}, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger;->onVisibilityChanged(Ljava/util/Collection;Ljava/util/Collection;)V

    .line 137
    const-wide/16 v2, 0x1000

    .line 140
    const-string v0, "Notifications [Active]"

    .line 142
    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 144
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$1;->this$0:Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;

    .line 147
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->mCurrentlyVisibleNotifications:Landroid/util/ArraySet;

    .line 149
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    .line 151
    move-result v0

    .line 154
    const-string v1, "Notifications [Visible]"

    .line 155
    invoke-static {v2, v3, v1, v0}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 157
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$1;->this$0:Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;

    .line 160
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$1;->mTmpNoLongerVisibleNotifications:Landroid/util/ArraySet;

    .line 162
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 164
    invoke-static {v1}, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->recycleAllVisibilityObjects(Landroid/util/ArraySet;)V

    .line 167
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$1;->mTmpCurrentlyVisibleNotifications:Landroid/util/ArraySet;

    .line 170
    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 172
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$1;->mTmpNewlyVisibleNotifications:Landroid/util/ArraySet;

    .line 175
    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 177
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$1;->mTmpNoLongerVisibleNotifications:Landroid/util/ArraySet;

    .line 180
    invoke-virtual {p0}, Landroid/util/ArraySet;->clear()V

    .line 182
    return-void
    .line 185
.end method
