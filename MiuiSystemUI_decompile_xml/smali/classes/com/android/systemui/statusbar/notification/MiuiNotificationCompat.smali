.class public abstract Lcom/android/systemui/statusbar/notification/MiuiNotificationCompat;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# direct methods
.method public static getMiuiAction(Landroid/app/Notification;)Landroid/app/Notification$Action;
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 2
    const-string v1, "miui.contractedAction"

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 6
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 12
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 14
    move-result-object v0

    .line 17
    instance-of v1, v0, Landroid/app/Notification$Action;

    .line 18
    if-eqz v1, :cond_0

    .line 20
    check-cast v0, Landroid/app/Notification$Action;

    .line 22
    return-object v0

    .line 24
    :cond_0
    iget-object v0, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    .line 25
    const/4 v1, 0x0

    .line 27
    if-eqz v0, :cond_2

    .line 28
    array-length v0, v0

    .line 30
    if-nez v0, :cond_1

    .line 31
    goto :goto_0

    .line 33
    :cond_1
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 34
    const-string v2, "miui.showAction"

    .line 36
    const/4 v3, 0x0

    .line 38
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 39
    move-result v0

    .line 42
    if-eqz v0, :cond_2

    .line 43
    iget-object p0, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    .line 45
    aget-object p0, p0, v3

    .line 47
    return-object p0

    .line 49
    :cond_2
    :goto_0
    return-object v1
    .line 50
.end method

.method public static getTargetPkg(Landroid/app/Notification;)Ljava/lang/CharSequence;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 2
    const-string v1, "miui.targetPkg"

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 6
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    iget-object p0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 12
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 14
    move-result-object p0

    .line 17
    return-object p0

    .line 18
    :cond_0
    iget-object p0, p0, Landroid/app/Notification;->extraNotification:Landroid/app/MiuiNotification;

    .line 19
    invoke-virtual {p0}, Landroid/app/MiuiNotification;->getTargetPkg()Ljava/lang/CharSequence;

    .line 21
    move-result-object p0

    .line 24
    return-object p0
    .line 25
.end method
