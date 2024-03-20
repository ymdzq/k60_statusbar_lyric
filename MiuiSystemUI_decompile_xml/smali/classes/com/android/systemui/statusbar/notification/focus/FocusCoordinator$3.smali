.class public final Lcom/android/systemui/statusbar/notification/focus/FocusCoordinator$3;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/focus/FocusCoordinator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/focus/FocusCoordinator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/focus/FocusCoordinator$3;->this$0:Lcom/android/systemui/statusbar/notification/focus/FocusCoordinator;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onEntryAdded(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 4

    .line 1
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 2
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->isFocusNotification()Z

    .line 4
    move-result v0

    .line 7
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/focus/FocusCoordinator$3;->this$0:Lcom/android/systemui/statusbar/notification/focus/FocusCoordinator;

    .line 8
    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    .line 10
    if-eqz v0, :cond_0

    .line 12
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/focus/FocusCoordinator;->mFocusNotifications:Ljava/util/Map;

    .line 14
    check-cast v0, Landroid/util/ArrayMap;

    .line 16
    invoke-virtual {v0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/focus/FocusCoordinator;->mFocusNotifListener:Ljava/util/List;

    .line 21
    new-instance v2, Lcom/android/systemui/statusbar/notification/focus/FocusCoordinator$3$$ExternalSyntheticLambda0;

    .line 23
    const/4 v3, 0x3

    .line 25
    invoke-direct {v2, p1, v3}, Lcom/android/systemui/statusbar/notification/focus/FocusCoordinator$3$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)V

    .line 26
    check-cast v0, Ljava/util/ArrayList;

    .line 29
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 31
    :cond_0
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 34
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 36
    move-result-object v2

    .line 39
    invoke-static {v2}, Lcom/android/systemui/statusbar/notification/focus/FocusUtils;->isFocusNotification(Landroid/app/Notification;)Z

    .line 40
    move-result v2

    .line 43
    if-nez v2, :cond_1

    .line 44
    goto :goto_0

    .line 46
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 47
    move-result-object v0

    .line 50
    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 51
    const-string v2, "miui.focus.rvAod"

    .line 53
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 55
    move-result-object v0

    .line 58
    instance-of v0, v0, Landroid/widget/RemoteViews;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    goto :goto_1

    .line 61
    :catch_0
    :goto_0
    const/4 v0, 0x0

    .line 62
    :goto_1
    if-eqz v0, :cond_2

    .line 63
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/focus/FocusCoordinator;->mAodFocusNotifications:Ljava/util/Map;

    .line 65
    check-cast v0, Landroid/util/ArrayMap;

    .line 67
    invoke-virtual {v0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/focus/FocusCoordinator;->mAodFocusNotifListeners:Ljava/util/List;

    .line 72
    new-instance v2, Lcom/android/systemui/statusbar/notification/focus/FocusCoordinator$3$$ExternalSyntheticLambda0;

    .line 74
    const/4 v3, 0x4

    .line 76
    invoke-direct {v2, p1, v3}, Lcom/android/systemui/statusbar/notification/focus/FocusCoordinator$3$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)V

    .line 77
    check-cast v0, Ljava/util/ArrayList;

    .line 80
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 82
    :cond_2
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 85
    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/focus/FocusUtils;->showOnStatusBar(Lcom/android/systemui/statusbar/notification/ExpandedNotification;)Z

    .line 87
    move-result v0

    .line 90
    if-eqz v0, :cond_3

    .line 91
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/focus/FocusCoordinator;->mStatusBarFocusNotifications:Ljava/util/Map;

    .line 93
    check-cast v0, Landroid/util/ArrayMap;

    .line 95
    invoke-virtual {v0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/focus/FocusCoordinator;->mStatusBarFocusNotifListener:Ljava/util/List;

    .line 100
    new-instance v1, Lcom/android/systemui/statusbar/notification/focus/FocusCoordinator$3$$ExternalSyntheticLambda0;

    .line 102
    const/4 v2, 0x5

    .line 104
    invoke-direct {v1, p1, v2}, Lcom/android/systemui/statusbar/notification/focus/FocusCoordinator$3$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)V

    .line 105
    check-cast v0, Ljava/util/ArrayList;

    .line 108
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 110
    :cond_3
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/focus/FocusCoordinator;->-$$Nest$mupdatableFocusSettings(Lcom/android/systemui/statusbar/notification/focus/FocusCoordinator;)V

    .line 113
    return-void
    .line 116
.end method

.method public final onEntryRemoved(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/focus/FocusCoordinator$3;->this$0:Lcom/android/systemui/statusbar/notification/focus/FocusCoordinator;

    .line 2
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/focus/FocusCoordinator;->mFocusNotifications:Ljava/util/Map;

    .line 4
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    .line 6
    check-cast p2, Landroid/util/ArrayMap;

    .line 8
    invoke-virtual {p2, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 10
    move-result p2

    .line 13
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    .line 14
    if-eqz p2, :cond_0

    .line 16
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/focus/FocusCoordinator;->mFocusNotifications:Ljava/util/Map;

    .line 18
    check-cast p2, Landroid/util/ArrayMap;

    .line 20
    invoke-virtual {p2, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/focus/FocusCoordinator;->mFocusNotifListener:Ljava/util/List;

    .line 25
    new-instance v1, Lcom/android/systemui/statusbar/notification/focus/FocusCoordinator$3$$ExternalSyntheticLambda0;

    .line 27
    const/4 v2, 0x0

    .line 29
    invoke-direct {v1, p1, v2}, Lcom/android/systemui/statusbar/notification/focus/FocusCoordinator$3$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)V

    .line 30
    check-cast p2, Ljava/util/ArrayList;

    .line 33
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 35
    :cond_0
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/focus/FocusCoordinator;->mAodFocusNotifications:Ljava/util/Map;

    .line 38
    check-cast p2, Landroid/util/ArrayMap;

    .line 40
    invoke-virtual {p2, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 42
    move-result p2

    .line 45
    if-eqz p2, :cond_1

    .line 46
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/focus/FocusCoordinator;->mAodFocusNotifications:Ljava/util/Map;

    .line 48
    check-cast p2, Landroid/util/ArrayMap;

    .line 50
    invoke-virtual {p2, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/focus/FocusCoordinator;->mAodFocusNotifListeners:Ljava/util/List;

    .line 55
    new-instance v1, Lcom/android/systemui/statusbar/notification/focus/FocusCoordinator$3$$ExternalSyntheticLambda0;

    .line 57
    const/4 v2, 0x1

    .line 59
    invoke-direct {v1, p1, v2}, Lcom/android/systemui/statusbar/notification/focus/FocusCoordinator$3$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)V

    .line 60
    check-cast p2, Ljava/util/ArrayList;

    .line 63
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 65
    :cond_1
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/focus/FocusCoordinator;->mStatusBarFocusNotifications:Ljava/util/Map;

    .line 68
    check-cast p2, Landroid/util/ArrayMap;

    .line 70
    invoke-virtual {p2, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 72
    move-result p2

    .line 75
    if-eqz p2, :cond_2

    .line 76
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/focus/FocusCoordinator;->mStatusBarFocusNotifications:Ljava/util/Map;

    .line 78
    check-cast p2, Landroid/util/ArrayMap;

    .line 80
    invoke-virtual {p2, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/focus/FocusCoordinator;->mStatusBarFocusNotifListener:Ljava/util/List;

    .line 85
    new-instance v0, Lcom/android/systemui/statusbar/notification/focus/FocusCoordinator$3$$ExternalSyntheticLambda0;

    .line 87
    const/4 v1, 0x2

    .line 89
    invoke-direct {v0, p1, v1}, Lcom/android/systemui/statusbar/notification/focus/FocusCoordinator$3$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)V

    .line 90
    check-cast p2, Ljava/util/ArrayList;

    .line 93
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 95
    :cond_2
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/focus/FocusCoordinator;->-$$Nest$mupdatableFocusSettings(Lcom/android/systemui/statusbar/notification/focus/FocusCoordinator;)V

    .line 98
    return-void
    .line 101
.end method

.method public final onEntryUpdated(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)V
    .locals 3

    .line 1
    if-eqz p2, :cond_7

    .line 2
    iget-object p2, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 4
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->isFocusNotification()Z

    .line 6
    move-result p2

    .line 9
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/focus/FocusCoordinator$3;->this$0:Lcom/android/systemui/statusbar/notification/focus/FocusCoordinator;

    .line 10
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    .line 12
    if-eqz p2, :cond_0

    .line 14
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/focus/FocusCoordinator;->mFocusNotifications:Ljava/util/Map;

    .line 16
    check-cast p2, Landroid/util/ArrayMap;

    .line 18
    invoke-virtual {p2, v0, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/focus/FocusCoordinator;->mFocusNotifListener:Ljava/util/List;

    .line 23
    new-instance v1, Lcom/android/systemui/statusbar/notification/focus/FocusCoordinator$3$$ExternalSyntheticLambda0;

    .line 25
    const/4 v2, 0x6

    .line 27
    invoke-direct {v1, p1, v2}, Lcom/android/systemui/statusbar/notification/focus/FocusCoordinator$3$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)V

    .line 28
    check-cast p2, Ljava/util/ArrayList;

    .line 31
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 33
    goto :goto_0

    .line 36
    :cond_0
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/focus/FocusCoordinator;->mFocusNotifications:Ljava/util/Map;

    .line 37
    check-cast p2, Landroid/util/ArrayMap;

    .line 39
    invoke-virtual {p2, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 41
    move-result p2

    .line 44
    if-eqz p2, :cond_1

    .line 45
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/focus/FocusCoordinator;->mFocusNotifications:Ljava/util/Map;

    .line 47
    check-cast p2, Landroid/util/ArrayMap;

    .line 49
    invoke-virtual {p2, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/focus/FocusCoordinator;->mFocusNotifListener:Ljava/util/List;

    .line 54
    new-instance v1, Lcom/android/systemui/statusbar/notification/focus/FocusCoordinator$3$$ExternalSyntheticLambda0;

    .line 56
    const/4 v2, 0x7

    .line 58
    invoke-direct {v1, p1, v2}, Lcom/android/systemui/statusbar/notification/focus/FocusCoordinator$3$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)V

    .line 59
    check-cast p2, Ljava/util/ArrayList;

    .line 62
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 64
    :cond_1
    :goto_0
    iget-object p2, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 67
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 69
    move-result-object v1

    .line 72
    invoke-static {v1}, Lcom/android/systemui/statusbar/notification/focus/FocusUtils;->isFocusNotification(Landroid/app/Notification;)Z

    .line 73
    move-result v1

    .line 76
    if-nez v1, :cond_2

    .line 77
    goto :goto_1

    .line 79
    :cond_2
    :try_start_0
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 80
    move-result-object p2

    .line 83
    iget-object p2, p2, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 84
    const-string v1, "miui.focus.rvAod"

    .line 86
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 88
    move-result-object p2

    .line 91
    instance-of p2, p2, Landroid/widget/RemoteViews;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    goto :goto_2

    .line 94
    :catch_0
    :goto_1
    const/4 p2, 0x0

    .line 95
    :goto_2
    if-eqz p2, :cond_3

    .line 96
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/focus/FocusCoordinator;->mAodFocusNotifications:Ljava/util/Map;

    .line 98
    check-cast p2, Landroid/util/ArrayMap;

    .line 100
    invoke-virtual {p2, v0, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/focus/FocusCoordinator;->mAodFocusNotifListeners:Ljava/util/List;

    .line 105
    new-instance v1, Lcom/android/systemui/statusbar/notification/focus/FocusCoordinator$3$$ExternalSyntheticLambda0;

    .line 107
    const/16 v2, 0x8

    .line 109
    invoke-direct {v1, p1, v2}, Lcom/android/systemui/statusbar/notification/focus/FocusCoordinator$3$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)V

    .line 111
    check-cast p2, Ljava/util/ArrayList;

    .line 114
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 116
    goto :goto_3

    .line 119
    :cond_3
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/focus/FocusCoordinator;->mAodFocusNotifications:Ljava/util/Map;

    .line 120
    check-cast p2, Landroid/util/ArrayMap;

    .line 122
    invoke-virtual {p2, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 124
    move-result p2

    .line 127
    if-eqz p2, :cond_4

    .line 128
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/focus/FocusCoordinator;->mAodFocusNotifications:Ljava/util/Map;

    .line 130
    check-cast p2, Landroid/util/ArrayMap;

    .line 132
    invoke-virtual {p2, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/focus/FocusCoordinator;->mAodFocusNotifListeners:Ljava/util/List;

    .line 137
    new-instance v1, Lcom/android/systemui/statusbar/notification/focus/FocusCoordinator$3$$ExternalSyntheticLambda0;

    .line 139
    const/16 v2, 0x9

    .line 141
    invoke-direct {v1, p1, v2}, Lcom/android/systemui/statusbar/notification/focus/FocusCoordinator$3$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)V

    .line 143
    check-cast p2, Ljava/util/ArrayList;

    .line 146
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 148
    :cond_4
    :goto_3
    iget-object p2, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 151
    invoke-static {p2}, Lcom/android/systemui/statusbar/notification/focus/FocusUtils;->showOnStatusBar(Lcom/android/systemui/statusbar/notification/ExpandedNotification;)Z

    .line 153
    move-result p2

    .line 156
    if-eqz p2, :cond_5

    .line 157
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/focus/FocusCoordinator;->mStatusBarFocusNotifications:Ljava/util/Map;

    .line 159
    check-cast p2, Landroid/util/ArrayMap;

    .line 161
    invoke-virtual {p2, v0, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/focus/FocusCoordinator;->mStatusBarFocusNotifListener:Ljava/util/List;

    .line 166
    new-instance v0, Lcom/android/systemui/statusbar/notification/focus/FocusCoordinator$3$$ExternalSyntheticLambda0;

    .line 168
    const/16 v1, 0xa

    .line 170
    invoke-direct {v0, p1, v1}, Lcom/android/systemui/statusbar/notification/focus/FocusCoordinator$3$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)V

    .line 172
    check-cast p2, Ljava/util/ArrayList;

    .line 175
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 177
    goto :goto_4

    .line 180
    :cond_5
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/focus/FocusCoordinator;->mStatusBarFocusNotifications:Ljava/util/Map;

    .line 181
    check-cast p2, Landroid/util/ArrayMap;

    .line 183
    invoke-virtual {p2, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 185
    move-result p2

    .line 188
    if-eqz p2, :cond_6

    .line 189
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/focus/FocusCoordinator;->mStatusBarFocusNotifications:Ljava/util/Map;

    .line 191
    check-cast p2, Landroid/util/ArrayMap;

    .line 193
    invoke-virtual {p2, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/focus/FocusCoordinator;->mStatusBarFocusNotifListener:Ljava/util/List;

    .line 198
    new-instance v0, Lcom/android/systemui/statusbar/notification/focus/FocusCoordinator$3$$ExternalSyntheticLambda0;

    .line 200
    const/16 v1, 0xb

    .line 202
    invoke-direct {v0, p1, v1}, Lcom/android/systemui/statusbar/notification/focus/FocusCoordinator$3$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)V

    .line 204
    check-cast p2, Ljava/util/ArrayList;

    .line 207
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 209
    :cond_6
    :goto_4
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/focus/FocusCoordinator;->-$$Nest$mupdatableFocusSettings(Lcom/android/systemui/statusbar/notification/focus/FocusCoordinator;)V

    .line 212
    :cond_7
    return-void
    .line 215
.end method
