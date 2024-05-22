.class public final Lcom/android/systemui/statusbar/notification/collection/provider/HighPriorityProvider;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mGroupMembershipManager:Lcom/android/systemui/statusbar/notification/collection/render/GroupMembershipManager;

.field public final mPeopleNotificationIdentifier:Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifierImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifierImpl;Lcom/android/systemui/statusbar/notification/collection/render/GroupMembershipManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/provider/HighPriorityProvider;->mPeopleNotificationIdentifier:Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifierImpl;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/provider/HighPriorityProvider;->mGroupMembershipManager:Lcom/android/systemui/statusbar/notification/collection/render/GroupMembershipManager;

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final isHighPriority(Lcom/android/systemui/statusbar/notification/collection/ListEntry;Z)Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    return v0

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->getRepresentativeEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 6
    move-result-object v1

    .line 9
    if-nez v1, :cond_1

    .line 10
    return v0

    .line 12
    :cond_1
    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    .line 13
    invoke-virtual {v2}, Landroid/service/notification/NotificationListenerService$Ranking;->getImportance()I

    .line 15
    move-result v2

    .line 18
    const/4 v3, 0x3

    .line 19
    const/4 v4, 0x1

    .line 20
    if-ge v2, v3, :cond_b

    .line 21
    if-eqz p2, :cond_6

    .line 23
    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    .line 25
    invoke-virtual {v2}, Landroid/service/notification/NotificationListenerService$Ranking;->getChannel()Landroid/app/NotificationChannel;

    .line 27
    move-result-object v2

    .line 30
    if-eqz v2, :cond_2

    .line 31
    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    .line 33
    invoke-virtual {v2}, Landroid/service/notification/NotificationListenerService$Ranking;->getChannel()Landroid/app/NotificationChannel;

    .line 35
    move-result-object v2

    .line 38
    invoke-virtual {v2}, Landroid/app/NotificationChannel;->hasUserSetImportance()Z

    .line 39
    move-result v2

    .line 42
    if-eqz v2, :cond_2

    .line 43
    move v2, v4

    .line 45
    goto :goto_0

    .line 46
    :cond_2
    move v2, v0

    .line 47
    :goto_0
    if-nez v2, :cond_5

    .line 48
    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 50
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 52
    move-result-object v2

    .line 55
    invoke-virtual {v2}, Landroid/app/Notification;->isMediaNotification()Z

    .line 56
    move-result v2

    .line 59
    if-nez v2, :cond_4

    .line 60
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/collection/provider/HighPriorityProvider;->mPeopleNotificationIdentifier:Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifierImpl;

    .line 62
    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifierImpl;->getPeopleNotificationType(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)I

    .line 64
    move-result v2

    .line 67
    if-eqz v2, :cond_3

    .line 68
    move v2, v4

    .line 70
    goto :goto_1

    .line 71
    :cond_3
    move v2, v0

    .line 72
    :goto_1
    if-nez v2, :cond_4

    .line 73
    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 75
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 77
    move-result-object v1

    .line 80
    const-class v2, Landroid/app/Notification$MessagingStyle;

    .line 81
    invoke-virtual {v1, v2}, Landroid/app/Notification;->isStyle(Ljava/lang/Class;)Z

    .line 83
    move-result v1

    .line 86
    if-eqz v1, :cond_5

    .line 87
    :cond_4
    move v1, v4

    .line 89
    goto :goto_2

    .line 90
    :cond_5
    move v1, v0

    .line 91
    :goto_2
    if-nez v1, :cond_b

    .line 92
    :cond_6
    instance-of v1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 94
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/collection/provider/HighPriorityProvider;->mGroupMembershipManager:Lcom/android/systemui/statusbar/notification/collection/render/GroupMembershipManager;

    .line 96
    if-eqz v1, :cond_8

    .line 98
    move-object v1, p1

    .line 100
    check-cast v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 101
    move-object v3, v2

    .line 103
    check-cast v3, Lcom/android/systemui/statusbar/notification/collection/render/GroupMembershipManagerImpl;

    .line 104
    invoke-virtual {v3, v1}, Lcom/android/systemui/statusbar/notification/collection/render/GroupMembershipManagerImpl;->getGroupSummary(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 106
    move-result-object v3

    .line 109
    if-ne v3, v1, :cond_7

    .line 110
    move v1, v4

    .line 112
    goto :goto_3

    .line 113
    :cond_7
    move v1, v0

    .line 114
    :goto_3
    if-nez v1, :cond_8

    .line 115
    goto :goto_4

    .line 117
    :cond_8
    check-cast v2, Lcom/android/systemui/statusbar/notification/collection/render/GroupMembershipManagerImpl;

    .line 118
    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/notification/collection/render/GroupMembershipManagerImpl;->getChildren(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Ljava/util/List;

    .line 120
    move-result-object v1

    .line 123
    if-eqz v1, :cond_a

    .line 124
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 126
    move-result-object v1

    .line 129
    :cond_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 130
    move-result v2

    .line 133
    if-eqz v2, :cond_a

    .line 134
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 136
    move-result-object v2

    .line 139
    check-cast v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 140
    if-eq v2, p1, :cond_9

    .line 142
    invoke-virtual {p0, v2, p2}, Lcom/android/systemui/statusbar/notification/collection/provider/HighPriorityProvider;->isHighPriority(Lcom/android/systemui/statusbar/notification/collection/ListEntry;Z)Z

    .line 144
    move-result v2

    .line 147
    if-eqz v2, :cond_9

    .line 148
    move p0, v4

    .line 150
    goto :goto_5

    .line 151
    :cond_a
    :goto_4
    move p0, v0

    .line 152
    :goto_5
    if-eqz p0, :cond_c

    .line 153
    :cond_b
    move v0, v4

    .line 155
    :cond_c
    return v0
    .line 156
.end method
