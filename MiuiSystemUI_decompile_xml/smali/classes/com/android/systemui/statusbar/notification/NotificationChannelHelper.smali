.class public abstract Lcom/android/systemui/statusbar/notification/NotificationChannelHelper;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# direct methods
.method public static createConversationChannelIfNeeded(Landroid/content/Context;Landroid/app/INotificationManager;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Landroid/app/NotificationChannel;)Landroid/app/NotificationChannel;
    .locals 8

    .line 1
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getConversationId()Ljava/lang/String;

    .line 2
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    return-object p3

    .line 12
    :cond_0
    iget-object v0, p2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 13
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getShortcutId()Ljava/lang/String;

    .line 15
    move-result-object v7

    .line 18
    iget-object v0, p2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 19
    iget-object v4, v0, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->mPkgName:Ljava/lang/String;

    .line 21
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getUid()I

    .line 23
    move-result v0

    .line 26
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 27
    move-result v1

    .line 30
    if-nez v1, :cond_2

    .line 31
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 33
    move-result v1

    .line 36
    if-nez v1, :cond_2

    .line 37
    iget-object v1, p2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    .line 39
    invoke-virtual {v1}, Landroid/service/notification/NotificationListenerService$Ranking;->getConversationShortcutInfo()Landroid/content/pm/ShortcutInfo;

    .line 41
    move-result-object v1

    .line 44
    if-nez v1, :cond_1

    .line 45
    goto :goto_0

    .line 47
    :cond_1
    :try_start_0
    invoke-static {p2}, Lcom/android/systemui/statusbar/notification/NotificationChannelHelper;->getName(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Ljava/lang/CharSequence;

    .line 48
    move-result-object p2

    .line 51
    invoke-virtual {p3, p2}, Landroid/app/NotificationChannel;->setName(Ljava/lang/CharSequence;)V

    .line 52
    invoke-interface {p1, v4, v0, p3, v7}, Landroid/app/INotificationManager;->createConversationNotificationChannelForPackage(Ljava/lang/String;ILandroid/app/NotificationChannel;Ljava/lang/String;)V

    .line 55
    invoke-virtual {p0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    .line 58
    move-result-object v2

    .line 61
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 62
    move-result v3

    .line 65
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    .line 66
    move-result-object v5

    .line 69
    const/4 v6, 0x0

    .line 70
    move-object v1, p1

    .line 71
    invoke-interface/range {v1 .. v7}, Landroid/app/INotificationManager;->getConversationNotificationChannel(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Landroid/app/NotificationChannel;

    .line 72
    move-result-object p3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    goto :goto_0

    .line 76
    :catch_0
    move-exception p0

    .line 77
    const-string p1, "NotificationChannelHelper"

    .line 78
    const-string p2, "Could not create conversation channel"

    .line 80
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 82
    :cond_2
    :goto_0
    return-object p3
    .line 85
.end method

.method public static getName(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Ljava/lang/CharSequence;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    .line 2
    invoke-virtual {v0}, Landroid/service/notification/NotificationListenerService$Ranking;->getConversationShortcutInfo()Landroid/content/pm/ShortcutInfo;

    .line 4
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->getLabel()Ljava/lang/CharSequence;

    .line 8
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    .line 14
    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService$Ranking;->getConversationShortcutInfo()Landroid/content/pm/ShortcutInfo;

    .line 16
    move-result-object p0

    .line 19
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->getLabel()Ljava/lang/CharSequence;

    .line 20
    move-result-object p0

    .line 23
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 24
    move-result-object p0

    .line 27
    return-object p0

    .line 28
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 29
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 31
    move-result-object p0

    .line 34
    iget-object p0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 35
    const-string v0, "android.conversationTitle"

    .line 37
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 39
    move-result-object v0

    .line 42
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 43
    move-result v1

    .line 46
    if-eqz v1, :cond_1

    .line 47
    const-string v0, "android.title"

    .line 49
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 51
    move-result-object v0

    .line 54
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 55
    move-result p0

    .line 58
    if-eqz p0, :cond_2

    .line 59
    const-string v0, "fallback"

    .line 61
    :cond_2
    return-object v0
.end method
