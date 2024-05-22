.class public final synthetic Lcom/android/systemui/statusbar/NotificationListener$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/NotificationListener;

.field public final synthetic f$1:Landroid/service/notification/StatusBarNotification;

.field public final synthetic f$2:Lcom/android/systemui/statusbar/notification/NotificationUtil$InnerNotifBean;

.field public final synthetic f$3:Landroid/service/notification/NotificationListenerService$RankingMap;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/notification/MiuiNotificationListener;Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/notification/NotificationUtil$InnerNotifBean;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationListener$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/statusbar/NotificationListener;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/statusbar/NotificationListener$$ExternalSyntheticLambda3;->f$1:Landroid/service/notification/StatusBarNotification;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/statusbar/NotificationListener$$ExternalSyntheticLambda3;->f$2:Lcom/android/systemui/statusbar/notification/NotificationUtil$InnerNotifBean;

    .line 9
    iput-object p4, p0, Lcom/android/systemui/statusbar/NotificationListener$$ExternalSyntheticLambda3;->f$3:Landroid/service/notification/NotificationListenerService$RankingMap;

    .line 11
    return-void
    .line 13
.end method


# virtual methods
.method public final run()V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationListener$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/statusbar/NotificationListener;

    .line 2
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationListener$$ExternalSyntheticLambda3;->f$1:Landroid/service/notification/StatusBarNotification;

    .line 4
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationListener$$ExternalSyntheticLambda3;->f$2:Lcom/android/systemui/statusbar/notification/NotificationUtil$InnerNotifBean;

    .line 6
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationListener$$ExternalSyntheticLambda3;->f$3:Landroid/service/notification/NotificationListenerService$RankingMap;

    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    sget-object v3, Lcom/android/systemui/statusbar/notification/NotificationUtil;->PKG_HOME:Ljava/lang/String;

    .line 13
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 15
    move-result-object v3

    .line 18
    iget-object v3, v3, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 19
    const-string v4, "inner_notif_bean"

    .line 21
    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 23
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 26
    move-result-object v2

    .line 29
    iget-object v3, v0, Lcom/android/systemui/statusbar/NotificationListener;->mContext:Landroid/content/Context;

    .line 30
    sget-boolean v4, Lcom/android/systemui/statusbar/RemoteInputController;->ENABLE_REMOTE_INPUT:Z

    .line 32
    if-nez v4, :cond_0

    .line 34
    goto :goto_5

    .line 36
    :cond_0
    iget-object v4, v2, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 37
    if-eqz v4, :cond_8

    .line 39
    const-string v5, "android.wearable.EXTENSIONS"

    .line 41
    invoke-virtual {v4, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 43
    move-result v4

    .line 46
    if-eqz v4, :cond_8

    .line 47
    iget-object v4, v2, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    .line 49
    if-eqz v4, :cond_1

    .line 51
    array-length v4, v4

    .line 53
    if-nez v4, :cond_8

    .line 54
    :cond_1
    new-instance v4, Landroid/app/Notification$WearableExtender;

    .line 56
    invoke-direct {v4, v2}, Landroid/app/Notification$WearableExtender;-><init>(Landroid/app/Notification;)V

    .line 58
    invoke-virtual {v4}, Landroid/app/Notification$WearableExtender;->getActions()Ljava/util/List;

    .line 61
    move-result-object v4

    .line 64
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 65
    move-result v5

    .line 68
    const/4 v6, 0x0

    .line 69
    const/4 v7, 0x0

    .line 70
    move v8, v6

    .line 71
    :goto_0
    if-ge v8, v5, :cond_7

    .line 72
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 74
    move-result-object v9

    .line 77
    check-cast v9, Landroid/app/Notification$Action;

    .line 78
    if-nez v9, :cond_2

    .line 80
    goto :goto_3

    .line 82
    :cond_2
    invoke-virtual {v9}, Landroid/app/Notification$Action;->getRemoteInputs()[Landroid/app/RemoteInput;

    .line 83
    move-result-object v10

    .line 86
    if-nez v10, :cond_3

    .line 87
    goto :goto_3

    .line 89
    :cond_3
    array-length v11, v10

    .line 90
    move v12, v6

    .line 91
    :goto_1
    if-ge v12, v11, :cond_5

    .line 92
    aget-object v13, v10, v12

    .line 94
    invoke-virtual {v13}, Landroid/app/RemoteInput;->getAllowFreeFormInput()Z

    .line 96
    move-result v13

    .line 99
    if-eqz v13, :cond_4

    .line 100
    move-object v7, v9

    .line 102
    goto :goto_2

    .line 103
    :cond_4
    add-int/lit8 v12, v12, 0x1

    .line 104
    goto :goto_1

    .line 106
    :cond_5
    :goto_2
    if-eqz v7, :cond_6

    .line 107
    goto :goto_4

    .line 109
    :cond_6
    :goto_3
    add-int/lit8 v8, v8, 0x1

    .line 110
    goto :goto_0

    .line 112
    :cond_7
    :goto_4
    if-eqz v7, :cond_8

    .line 113
    invoke-static {v3, v2}, Landroid/app/Notification$Builder;->recoverBuilder(Landroid/content/Context;Landroid/app/Notification;)Landroid/app/Notification$Builder;

    .line 115
    move-result-object v2

    .line 118
    filled-new-array {v7}, [Landroid/app/Notification$Action;

    .line 119
    move-result-object v3

    .line 122
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setActions([Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    .line 123
    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    .line 126
    :cond_8
    :goto_5
    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationListener;->mNotificationHandlers:Ljava/util/List;

    .line 129
    check-cast v0, Ljava/util/ArrayList;

    .line 131
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 133
    move-result-object v0

    .line 136
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 137
    move-result v2

    .line 140
    if-eqz v2, :cond_9

    .line 141
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 143
    move-result-object v2

    .line 146
    check-cast v2, Lcom/android/systemui/statusbar/NotificationListener$NotificationHandler;

    .line 147
    invoke-interface {v2, v1, p0}, Lcom/android/systemui/statusbar/NotificationListener$NotificationHandler;->onNotificationPosted(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    .line 149
    goto :goto_6

    .line 152
    :cond_9
    return-void
    .line 153
.end method
