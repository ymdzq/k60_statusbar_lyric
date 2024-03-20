.class public final Lcom/android/systemui/statusbar/notification/collection/coordinator/KeyguardCoordinator$unseenNotifFilter$1;
.super Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifFilter;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public hasFilteredAnyNotifs:Z

.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/KeyguardCoordinator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/KeyguardCoordinator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/KeyguardCoordinator$unseenNotifFilter$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/KeyguardCoordinator;

    .line 2
    const-string p1, "KeyguardCoordinator-unseen"

    .line 4
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifFilter;-><init>(Ljava/lang/String;)V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onCleanup()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/KeyguardCoordinator$unseenNotifFilter$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/KeyguardCoordinator;

    .line 2
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/KeyguardCoordinator;->logger:Lcom/android/systemui/statusbar/notification/collection/coordinator/KeyguardCoordinatorLogger;

    .line 4
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/KeyguardCoordinator$unseenNotifFilter$1;->hasFilteredAnyNotifs:Z

    .line 6
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    sget-object v3, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 11
    sget-object v4, Lcom/android/systemui/statusbar/notification/collection/coordinator/KeyguardCoordinatorLogger$logProviderHasFilteredOutSeenNotifs$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/collection/coordinator/KeyguardCoordinatorLogger$logProviderHasFilteredOutSeenNotifs$2;

    .line 13
    const-string v5, "KeyguardCoordinator"

    .line 15
    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/collection/coordinator/KeyguardCoordinatorLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 17
    const/4 v6, 0x0

    .line 19
    invoke-virtual {v1, v5, v3, v4, v6}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 20
    move-result-object v3

    .line 23
    invoke-interface {v3, v2}, Lcom/android/systemui/log/LogMessage;->setBool1(Z)V

    .line 24
    invoke-virtual {v1, v3}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 27
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/KeyguardCoordinator;->seenNotifsProvider:Lcom/android/systemui/statusbar/notification/collection/provider/SeenNotificationsProviderImpl;

    .line 30
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/KeyguardCoordinator$unseenNotifFilter$1;->hasFilteredAnyNotifs:Z

    .line 32
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/notification/collection/provider/SeenNotificationsProviderImpl;->hasFilteredOutSeenNotifications:Z

    .line 34
    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/KeyguardCoordinator$unseenNotifFilter$1;->hasFilteredAnyNotifs:Z

    .line 37
    return-void
    .line 39
.end method

.method public final shouldFilterOut(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;J)Z
    .locals 2

    .line 1
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/KeyguardCoordinator$unseenNotifFilter$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/KeyguardCoordinator;

    .line 2
    iget-boolean p3, p2, Lcom/android/systemui/statusbar/notification/collection/coordinator/KeyguardCoordinator;->unseenFilterEnabled:Z

    .line 4
    const/4 v0, 0x1

    .line 6
    const/4 v1, 0x0

    .line 7
    if-nez p3, :cond_0

    .line 8
    goto :goto_4

    .line 10
    :cond_0
    iget-object p3, p2, Lcom/android/systemui/statusbar/notification/collection/coordinator/KeyguardCoordinator;->keyguardRepository:Lcom/android/systemui/keyguard/data/repository/KeyguardRepository;

    .line 11
    check-cast p3, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;

    .line 13
    invoke-virtual {p3}, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;->isKeyguardShowing()Z

    .line 15
    move-result p3

    .line 18
    if-nez p3, :cond_1

    .line 19
    goto :goto_4

    .line 21
    :cond_1
    iget-object p2, p2, Lcom/android/systemui/statusbar/notification/collection/coordinator/KeyguardCoordinator;->unseenNotifications:Ljava/util/Set;

    .line 22
    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 24
    move-result p2

    .line 27
    if-eqz p2, :cond_2

    .line 28
    goto :goto_4

    .line 30
    :cond_2
    iget-object p2, p1, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->mAttachState:Lcom/android/systemui/statusbar/notification/collection/ListAttachState;

    .line 31
    iget-object p2, p2, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->parent:Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    .line 33
    if-eqz p2, :cond_3

    .line 35
    iget-object p2, p2, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->mSummary:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 37
    goto :goto_0

    .line 39
    :cond_3
    const/4 p2, 0x0

    .line 40
    :goto_0
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 41
    move-result p2

    .line 44
    if-eqz p2, :cond_4

    .line 45
    goto :goto_4

    .line 47
    :cond_4
    iget-object p2, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 48
    if-nez p2, :cond_5

    .line 50
    move p2, v1

    .line 52
    goto :goto_1

    .line 53
    :cond_5
    iget-object p2, p2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 54
    iget-object p2, p2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 56
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 58
    move-result-object p2

    .line 61
    invoke-virtual {p2}, Landroid/app/Notification;->isMediaNotification()Z

    .line 62
    move-result p2

    .line 65
    :goto_1
    if-eqz p2, :cond_6

    .line 66
    goto :goto_2

    .line 68
    :cond_6
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 69
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->isOngoing()Z

    .line 71
    move-result p1

    .line 74
    if-eqz p1, :cond_7

    .line 75
    :goto_2
    move p1, v0

    .line 77
    goto :goto_3

    .line 78
    :cond_7
    move p1, v1

    .line 79
    :goto_3
    if-eqz p1, :cond_8

    .line 80
    :goto_4
    move p1, v1

    .line 82
    goto :goto_5

    .line 83
    :cond_8
    move p1, v0

    .line 84
    :goto_5
    iget-boolean p2, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/KeyguardCoordinator$unseenNotifFilter$1;->hasFilteredAnyNotifs:Z

    .line 85
    if-nez p2, :cond_a

    .line 87
    if-eqz p1, :cond_9

    .line 89
    goto :goto_6

    .line 91
    :cond_9
    move v0, v1

    .line 92
    :cond_a
    :goto_6
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/KeyguardCoordinator$unseenNotifFilter$1;->hasFilteredAnyNotifs:Z

    .line 93
    return p1
    .line 95
.end method
