.class public abstract Lcom/android/systemui/statusbar/notification/NotificationSettingsHelper;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final DEBUG:Z

.field public static final sINM:Landroid/app/INotificationManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/miui/utils/configs/MiuiDebugConfig;->DEBUG_NOTIFICATION:Z

    .line 2
    sput-boolean v0, Lcom/android/systemui/statusbar/notification/NotificationSettingsHelper;->DEBUG:Z

    .line 4
    const-string v0, "notification"

    .line 6
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 8
    move-result-object v0

    .line 11
    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    .line 12
    move-result-object v0

    .line 15
    sput-object v0, Lcom/android/systemui/statusbar/notification/NotificationSettingsHelper;->sINM:Landroid/app/INotificationManager;

    .line 16
    return-void
    .line 18
.end method

.method public static canShowBadge(Ljava/lang/String;)Z
    .locals 6

    .line 1
    const-string v0, "canShowBadge"

    .line 2
    const-class v1, Lcom/android/systemui/settings/UserTracker;

    .line 4
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    move-result-object v1

    .line 9
    check-cast v1, Lcom/android/systemui/settings/UserTracker;

    .line 10
    check-cast v1, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 12
    invoke-virtual {v1}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserContext()Landroid/content/Context;

    .line 14
    move-result-object v1

    .line 17
    invoke-static {v1}, Lcom/android/systemui/statusbar/notification/NotificationUtil;->isUserOwner(Landroid/content/Context;)Z

    .line 18
    move-result v2

    .line 21
    const/4 v3, 0x0

    .line 22
    if-eqz v2, :cond_0

    .line 23
    sget-boolean v0, Lcom/android/systemui/statusbar/notification/NotificationSettingsManager;->DEBUG:Z

    .line 25
    sget-object v0, Lcom/android/systemui/statusbar/notification/NotificationSettingsManager$Holder;->INSTANCE:Lcom/android/systemui/statusbar/notification/NotificationSettingsManager;

    .line 27
    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/statusbar/notification/NotificationSettingsManager;->canShowBadge(Landroid/content/Context;Ljava/lang/String;)Z

    .line 29
    move-result p0

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    new-instance v2, Landroid/os/Bundle;

    .line 34
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 36
    const-string v4, "package"

    .line 39
    invoke-virtual {v2, v4, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    :try_start_0
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 44
    move-result-object v1

    .line 47
    const-string v4, "content://statusbar.notification"

    .line 48
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 50
    move-result-object v4

    .line 53
    const/4 v5, 0x0

    .line 54
    invoke-virtual {v1, v4, v0, v5, v2}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 55
    move-result-object v1

    .line 58
    if-eqz v1, :cond_1

    .line 59
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 61
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    goto :goto_0

    .line 65
    :catch_0
    move-exception v0

    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    .line 67
    const-string v2, "canShowBadge "

    .line 69
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    move-result-object p0

    .line 80
    const-string v1, "NotifiSettingsHelper"

    .line 81
    invoke-static {v1, p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 83
    :cond_1
    move p0, v3

    .line 86
    :goto_0
    if-eqz p0, :cond_2

    .line 87
    const/4 v3, 0x1

    .line 89
    :cond_2
    return v3
    .line 90
.end method

.method public static canShowOngoing(Ljava/lang/String;)Z
    .locals 6

    .line 1
    const-string v0, "canShowOngoing"

    .line 2
    const-class v1, Lcom/android/systemui/settings/UserTracker;

    .line 4
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    move-result-object v1

    .line 9
    check-cast v1, Lcom/android/systemui/settings/UserTracker;

    .line 10
    check-cast v1, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 12
    invoke-virtual {v1}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserContext()Landroid/content/Context;

    .line 14
    move-result-object v1

    .line 17
    invoke-static {v1}, Lcom/android/systemui/statusbar/notification/NotificationUtil;->isUserOwner(Landroid/content/Context;)Z

    .line 18
    move-result v2

    .line 21
    if-eqz v2, :cond_0

    .line 22
    sget-boolean v0, Lcom/android/systemui/statusbar/notification/NotificationSettingsManager;->DEBUG:Z

    .line 24
    sget-object v0, Lcom/android/systemui/statusbar/notification/NotificationSettingsManager$Holder;->INSTANCE:Lcom/android/systemui/statusbar/notification/NotificationSettingsManager;

    .line 26
    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/statusbar/notification/NotificationSettingsManager;->canShowOngoing(Landroid/content/Context;Ljava/lang/String;)Z

    .line 28
    move-result p0

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    new-instance v2, Landroid/os/Bundle;

    .line 33
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 35
    const-string v3, "package"

    .line 38
    invoke-virtual {v2, v3, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    const/4 v3, 0x1

    .line 43
    :try_start_0
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 44
    move-result-object v1

    .line 47
    const-string v4, "content://statusbar.notification"

    .line 48
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 50
    move-result-object v4

    .line 53
    const/4 v5, 0x0

    .line 54
    invoke-virtual {v1, v4, v0, v5, v2}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 55
    move-result-object v1

    .line 58
    if-eqz v1, :cond_1

    .line 59
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 61
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    goto :goto_0

    .line 65
    :catch_0
    move-exception v0

    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    .line 67
    const-string v2, "Error canShowOngoing "

    .line 69
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    move-result-object p0

    .line 80
    const-string v1, "NotifiSettingsHelper"

    .line 81
    invoke-static {v1, p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 83
    :cond_1
    move p0, v3

    .line 86
    :goto_0
    return p0
    .line 87
.end method

.method public static isNonBlockable(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2
    move-result-object p0

    .line 5
    const v0, 0x107008b    # @android:array/config_network_type_tcp_buffers

    .line 6
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 9
    move-result-object p0

    .line 12
    const/4 v0, 0x0

    .line 13
    if-eqz p0, :cond_3

    .line 14
    array-length v1, p0

    .line 16
    move v2, v0

    .line 17
    :goto_0
    if-ge v2, v1, :cond_3

    .line 18
    aget-object v3, p0, v2

    .line 20
    if-nez v3, :cond_0

    .line 22
    goto :goto_1

    .line 24
    :cond_0
    const-string v4, ":"

    .line 25
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 27
    move-result v5

    .line 30
    const/4 v6, 0x1

    .line 31
    if-eqz v5, :cond_1

    .line 32
    const/4 v5, 0x2

    .line 34
    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 35
    move-result-object v3

    .line 38
    aget-object v4, v3, v0

    .line 39
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    move-result v4

    .line 44
    if-eqz v4, :cond_2

    .line 45
    aget-object v3, v3, v6

    .line 47
    const-string v4, ""

    .line 49
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    move-result v3

    .line 54
    if-eqz v3, :cond_2

    .line 55
    return v6

    .line 57
    :cond_1
    aget-object v3, p0, v2

    .line 58
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    move-result v3

    .line 63
    if-eqz v3, :cond_2

    .line 64
    return v6

    .line 66
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 67
    goto :goto_0

    .line 69
    :cond_3
    return v0
    .line 70
.end method

.method public static isNotificationsBanned(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    .line 1
    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationUtil;->getPackageUid(Landroid/content/Context;Ljava/lang/String;)I

    .line 2
    move-result p0

    .line 5
    :try_start_0
    sget-object v0, Lcom/android/systemui/statusbar/notification/NotificationSettingsHelper;->sINM:Landroid/app/INotificationManager;

    .line 6
    invoke-interface {v0, p1, p0}, Landroid/app/INotificationManager;->areNotificationsEnabledForPackage(Ljava/lang/String;I)Z

    .line 8
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    xor-int/lit8 p0, p0, 0x1

    .line 12
    goto :goto_0

    .line 14
    :catch_0
    move-exception p0

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    const-string v1, "areNotificationsEnabledForPackage "

    .line 18
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    move-result-object p1

    .line 29
    const-string v0, "NotifiSettingsHelper"

    .line 30
    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 32
    const/4 p0, 0x0

    .line 35
    :goto_0
    return p0
    .line 36
.end method

.method public static showGoogleStyle()Z
    .locals 2

    .line 1
    const-class v0, Lcom/miui/systemui/SettingsManager;

    .line 2
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, Lcom/miui/systemui/SettingsManager;

    .line 8
    iget v0, v0, Lcom/miui/systemui/SettingsManager;->notifStyle:I

    .line 10
    const/4 v1, 0x1

    .line 12
    if-ne v0, v1, :cond_0

    .line 13
    goto :goto_0

    .line 15
    :cond_0
    const/4 v1, 0x0

    .line 16
    :goto_0
    return v1
    .line 17
.end method

.method public static showMiuiStyle()Z
    .locals 1

    .line 1
    const-class v0, Lcom/miui/systemui/SettingsManager;

    .line 2
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, Lcom/miui/systemui/SettingsManager;

    .line 8
    iget v0, v0, Lcom/miui/systemui/SettingsManager;->notifStyle:I

    .line 10
    if-nez v0, :cond_0

    .line 12
    const/4 v0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    return v0
    .line 17
.end method
