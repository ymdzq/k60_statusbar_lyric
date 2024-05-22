.class public abstract Lcom/android/systemui/statusbar/notification/InCallUtils;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# direct methods
.method public static isGlobalInCallNotification(Landroid/content/Context;Ljava/lang/String;Landroid/app/Notification;)Z
    .locals 2

    .line 1
    sget-boolean v0, Lcom/miui/utils/configs/MiuiConfigs;->IS_INTERNATIONAL_BUILD:Z

    .line 2
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    return v1

    .line 7
    :cond_0
    const-string v0, "call"

    .line 8
    iget-object p2, p2, Landroid/app/Notification;->category:Ljava/lang/String;

    .line 10
    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 12
    move-result p2

    .line 15
    if-nez p2, :cond_1

    .line 16
    return v1

    .line 18
    :cond_1
    const-string p2, "com.android.incallui"

    .line 19
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 21
    move-result p2

    .line 24
    if-eqz p2, :cond_2

    .line 25
    return v1

    .line 27
    :cond_2
    const-string/jumbo p2, "telecom"

    .line 28
    invoke-virtual {p0, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 31
    move-result-object p0

    .line 34
    check-cast p0, Landroid/telecom/TelecomManager;

    .line 35
    invoke-virtual {p0}, Landroid/telecom/TelecomManager;->getDefaultDialerPackage()Ljava/lang/String;

    .line 37
    move-result-object p0

    .line 40
    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 41
    move-result p0

    .line 44
    return p0
    .line 45
.end method

.method public static isInCallNotification(Lcom/android/systemui/statusbar/notification/ExpandedNotification;)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 2
    move-result-object v0

    .line 5
    iget-object v0, v0, Landroid/app/Notification;->category:Ljava/lang/String;

    .line 6
    const-string v1, "call"

    .line 8
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result v0

    .line 13
    const/4 v1, 0x0

    .line 14
    if-nez v0, :cond_0

    .line 15
    return v1

    .line 17
    :cond_0
    const-string v0, "incall"

    .line 18
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    .line 20
    move-result-object v2

    .line 23
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 24
    move-result v0

    .line 27
    if-nez v0, :cond_1

    .line 28
    return v1

    .line 30
    :cond_1
    const-string v0, "com.android.incallui"

    .line 31
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->getOpPkg()Ljava/lang/String;

    .line 33
    move-result-object p0

    .line 36
    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 37
    move-result p0

    .line 40
    return p0
    .line 41
.end method
