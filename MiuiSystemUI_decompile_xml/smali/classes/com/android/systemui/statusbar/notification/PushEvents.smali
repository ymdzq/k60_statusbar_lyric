.class public abstract Lcom/android/systemui/statusbar/notification/PushEvents;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# direct methods
.method public static getMessageId(Lcom/android/systemui/statusbar/notification/ExpandedNotification;)Ljava/lang/String;
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 2
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 8
    move-result-object v0

    .line 11
    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 12
    if-eqz v0, :cond_1

    .line 14
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 16
    move-result-object v0

    .line 19
    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 20
    const-string v1, "message_id"

    .line 22
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 27
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 28
    move-result v1

    .line 31
    if-eqz v1, :cond_0

    .line 32
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 34
    move-result-object p0

    .line 37
    iget-object p0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 38
    const-string v1, "adid"

    .line 40
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    .line 42
    move-result-wide v1

    .line 45
    const-wide/16 v3, 0x0

    .line 46
    cmp-long p0, v1, v3

    .line 48
    if-eqz p0, :cond_0

    .line 50
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 52
    move-result-object v0

    .line 55
    :cond_0
    return-object v0

    .line 56
    :cond_1
    const/4 p0, 0x0

    .line 57
    return-object p0
    .line 58
.end method
