.class public final Lcom/android/systemui/statusbar/notification/logging/NotificationPanelLoggerImpl;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# direct methods
.method public static toNotificationProto(Ljava/util/List;)Lcom/android/systemui/statusbar/notification/logging/nano/Notifications$NotificationList;
    .locals 9

    .line 1
    new-instance v0, Lcom/android/systemui/statusbar/notification/logging/nano/Notifications$NotificationList;

    .line 2
    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/logging/nano/Notifications$NotificationList;-><init>()V

    .line 4
    if-nez p0, :cond_0

    .line 7
    return-object v0

    .line 9
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 10
    move-result v1

    .line 13
    new-array v1, v1, [Lcom/android/systemui/statusbar/notification/logging/nano/Notifications$Notification;

    .line 14
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 16
    move-result-object p0

    .line 19
    const/4 v2, 0x0

    .line 20
    move v3, v2

    .line 21
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    move-result v4

    .line 25
    if-eqz v4, :cond_8

    .line 26
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    move-result-object v4

    .line 31
    check-cast v4, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 32
    iget-object v5, v4, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 34
    if-eqz v5, :cond_7

    .line 36
    new-instance v6, Lcom/android/systemui/statusbar/notification/logging/nano/Notifications$Notification;

    .line 38
    invoke-direct {v6}, Lcom/android/systemui/statusbar/notification/logging/nano/Notifications$Notification;-><init>()V

    .line 40
    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getUid()I

    .line 43
    move-result v7

    .line 46
    iput v7, v6, Lcom/android/systemui/statusbar/notification/logging/nano/Notifications$Notification;->uid:I

    .line 47
    iget-object v7, v5, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->mPkgName:Ljava/lang/String;

    .line 49
    iput-object v7, v6, Lcom/android/systemui/statusbar/notification/logging/nano/Notifications$Notification;->packageName:Ljava/lang/String;

    .line 51
    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getInstanceId()Lcom/android/internal/logging/InstanceId;

    .line 53
    move-result-object v7

    .line 56
    if-eqz v7, :cond_1

    .line 57
    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getInstanceId()Lcom/android/internal/logging/InstanceId;

    .line 59
    move-result-object v7

    .line 62
    invoke-virtual {v7}, Lcom/android/internal/logging/InstanceId;->getId()I

    .line 63
    move-result v7

    .line 66
    iput v7, v6, Lcom/android/systemui/statusbar/notification/logging/nano/Notifications$Notification;->instanceId:I

    .line 67
    :cond_1
    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 69
    move-result-object v7

    .line 72
    if-eqz v7, :cond_2

    .line 73
    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 75
    move-result-object v5

    .line 78
    invoke-virtual {v5}, Landroid/app/Notification;->isGroupSummary()Z

    .line 79
    move-result v5

    .line 82
    iput-boolean v5, v6, Lcom/android/systemui/statusbar/notification/logging/nano/Notifications$Notification;->isGroupSummary:Z

    .line 83
    :cond_2
    iget v4, v4, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mBucket:I

    .line 85
    const/4 v5, 0x1

    .line 87
    const/4 v7, 0x2

    .line 88
    if-eq v4, v5, :cond_5

    .line 89
    if-eq v4, v7, :cond_6

    .line 91
    const/4 v5, 0x6

    .line 93
    const/4 v7, 0x3

    .line 94
    if-eq v4, v7, :cond_6

    .line 95
    const/4 v8, 0x4

    .line 97
    if-eq v4, v8, :cond_5

    .line 98
    if-eq v4, v5, :cond_4

    .line 100
    const/4 v5, 0x7

    .line 102
    if-eq v4, v5, :cond_3

    .line 103
    move v5, v2

    .line 105
    goto :goto_1

    .line 106
    :cond_3
    const/4 v5, 0x5

    .line 107
    goto :goto_1

    .line 108
    :cond_4
    move v5, v8

    .line 109
    goto :goto_1

    .line 110
    :cond_5
    move v5, v7

    .line 111
    :cond_6
    :goto_1
    iput v5, v6, Lcom/android/systemui/statusbar/notification/logging/nano/Notifications$Notification;->section:I

    .line 112
    aput-object v6, v1, v3

    .line 114
    :cond_7
    add-int/lit8 v3, v3, 0x1

    .line 116
    goto :goto_0

    .line 118
    :cond_8
    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/logging/nano/Notifications$NotificationList;->notifications:[Lcom/android/systemui/statusbar/notification/logging/nano/Notifications$Notification;

    .line 119
    return-object v0
    .line 121
.end method
