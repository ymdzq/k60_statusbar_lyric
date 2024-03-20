.class public abstract Lcom/android/systemui/statusbar/notification/focus/FocusUtils;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# direct methods
.method public static getFocusView(Landroid/app/Notification;Landroid/content/Context;)Landroid/widget/RemoteViews;
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/focus/FocusUtils;->isFocusNotification(Landroid/app/Notification;)Z

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    return-object v1

    .line 9
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 10
    move-result-object p1

    .line 13
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 14
    move-result-object p1

    .line 17
    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    .line 18
    and-int/lit8 p1, p1, 0x30

    .line 20
    if-eqz p1, :cond_2

    .line 22
    const/16 v0, 0x20

    .line 24
    if-ne p1, v0, :cond_1

    .line 26
    goto :goto_0

    .line 28
    :cond_1
    const/4 p1, 0x0

    .line 29
    goto :goto_1

    .line 30
    :cond_2
    :goto_0
    const/4 p1, 0x1

    .line 31
    :goto_1
    if-eqz p1, :cond_3

    .line 32
    iget-object p1, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 34
    const-string v0, "miui.focus.rvNight"

    .line 36
    const-class v1, Landroid/widget/RemoteViews;

    .line 38
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 40
    move-result-object p1

    .line 43
    move-object v1, p1

    .line 44
    check-cast v1, Landroid/widget/RemoteViews;

    .line 45
    :cond_3
    if-nez v1, :cond_4

    .line 47
    iget-object p1, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 49
    const-string v0, "miui.focus.rv"

    .line 51
    const-class v1, Landroid/widget/RemoteViews;

    .line 53
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 55
    move-result-object p1

    .line 58
    move-object v1, p1

    .line 59
    check-cast v1, Landroid/widget/RemoteViews;

    .line 60
    :cond_4
    invoke-static {p0, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector;->handleFocusAppIcon(Landroid/app/Notification;Landroid/widget/RemoteViews;)V

    .line 62
    new-instance p0, Landroid/widget/RemoteViews;

    .line 65
    invoke-direct {p0, v1}, Landroid/widget/RemoteViews;-><init>(Landroid/widget/RemoteViews;)V

    .line 67
    return-object p0
    .line 70
.end method

.method public static isFocusNotification(Landroid/app/Notification;)Z
    .locals 1

    .line 1
    :try_start_0
    iget-object p0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 2
    const-string v0, "miui.focus.rv"

    .line 4
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 6
    move-result-object p0

    .line 9
    instance-of p0, p0, Landroid/widget/RemoteViews;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    return p0

    .line 12
    :catch_0
    const/4 p0, 0x0

    .line 13
    return p0
    .line 14
.end method

.method public static isUpdatableFocusNotification(Landroid/app/Notification;)Z
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/focus/FocusUtils;->isFocusNotification(Landroid/app/Notification;)Z

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    return v1

    .line 9
    :cond_0
    iget p0, p0, Landroid/app/Notification;->flags:I

    .line 10
    and-int/lit8 p0, p0, 0x10

    .line 12
    if-nez p0, :cond_1

    .line 14
    const/4 v1, 0x1

    .line 16
    :cond_1
    return v1
    .line 17
.end method

.method public static showOnStatusBar(Lcom/android/systemui/statusbar/notification/ExpandedNotification;)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 2
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/focus/FocusUtils;->isFocusNotification(Landroid/app/Notification;)Z

    .line 6
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-nez v0, :cond_0

    .line 11
    return v1

    .line 13
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 14
    move-result-object v0

    .line 17
    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/focus/FocusUtils;->isFocusNotification(Landroid/app/Notification;)Z

    .line 18
    move-result v0

    .line 21
    const-string v2, ""

    .line 22
    if-nez v0, :cond_1

    .line 24
    goto :goto_0

    .line 26
    :cond_1
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 27
    move-result-object v0

    .line 30
    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 31
    const-string v3, "miui.focus.ticker"

    .line 33
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 35
    move-result-object v2

    .line 38
    :goto_0
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 39
    move-result-object p0

    .line 42
    iget-object p0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 43
    const-string v0, "miui.focus.rvBar"

    .line 45
    const-class v3, Landroid/widget/RemoteViews;

    .line 47
    invoke-virtual {p0, v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 49
    move-result-object p0

    .line 52
    check-cast p0, Landroid/widget/RemoteViews;

    .line 53
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 55
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    if-eqz v0, :cond_2

    .line 59
    if-eqz p0, :cond_3

    .line 61
    :cond_2
    const/4 v1, 0x1

    .line 63
    :catch_0
    :cond_3
    return v1
    .line 64
.end method
