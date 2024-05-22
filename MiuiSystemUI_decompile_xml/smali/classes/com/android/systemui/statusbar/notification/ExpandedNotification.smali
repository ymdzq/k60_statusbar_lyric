.class public final Lcom/android/systemui/statusbar/notification/ExpandedNotification;
.super Landroid/service/notification/StatusBarNotification;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public buzzBeeped:Z

.field public mAppIcon:Landroid/graphics/drawable/Drawable;

.field public mAppName:Ljava/lang/String;

.field public mAppUid:I

.field public final mCanFloat:Z

.field public final mCanLights:Z

.field public final mCanShowOnKeyguard:Z

.field public final mCanShowOngoing:Z

.field public final mCanSound:Z

.field public final mCanVibrate:Z

.field public mHasShownAfterUnlock:Z

.field public final mIsPrioritizedApp:Z

.field public final mIsSystemApp:Z

.field public mIsUpdate:Z

.field public final mPkgName:Ljava/lang/String;

.field public mTargetSdk:I

.field public seeTime:J

.field public statTextId:Ljava/lang/String;

.field public statusBarPrompting:Z


# direct methods
.method public constructor <init>(Landroid/service/notification/StatusBarNotification;)V
    .locals 12

    .line 1
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    .line 2
    move-result-object v1

    .line 5
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getOpPkg()Ljava/lang/String;

    .line 6
    move-result-object v2

    .line 9
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getId()I

    .line 10
    move-result v3

    .line 13
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    .line 14
    move-result-object v4

    .line 17
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUid()I

    .line 18
    move-result v5

    .line 21
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getInitialPid()I

    .line 22
    move-result v6

    .line 25
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 26
    move-result-object v7

    .line 29
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    .line 30
    move-result-object v8

    .line 33
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getOverrideGroupKey()Ljava/lang/String;

    .line 34
    move-result-object v9

    .line 37
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPostTime()J

    .line 38
    move-result-wide v10

    .line 41
    move-object v0, p0

    .line 42
    invoke-direct/range {v0 .. v11}, Landroid/service/notification/StatusBarNotification;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILandroid/app/Notification;Landroid/os/UserHandle;Ljava/lang/String;J)V

    .line 43
    const/4 v0, 0x0

    .line 46
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->statusBarPrompting:Z

    .line 47
    sget-object v0, Lcom/android/systemui/statusbar/notification/NotificationUtil;->PKG_HOME:Ljava/lang/String;

    .line 49
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 51
    move-result-object v0

    .line 54
    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 55
    const-string v1, "inner_notif_bean"

    .line 57
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 59
    move-result-object v0

    .line 62
    check-cast v0, Lcom/android/systemui/statusbar/notification/NotificationUtil$InnerNotifBean;

    .line 63
    if-nez v0, :cond_0

    .line 65
    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/NotificationUtil;->generateInnerNotifBean(Landroid/service/notification/StatusBarNotification;)Lcom/android/systemui/statusbar/notification/NotificationUtil$InnerNotifBean;

    .line 67
    move-result-object v0

    .line 70
    :cond_0
    iget-object p1, v0, Lcom/android/systemui/statusbar/notification/NotificationUtil$InnerNotifBean;->mPkgName:Ljava/lang/String;

    .line 71
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->mPkgName:Ljava/lang/String;

    .line 73
    iget-boolean p1, v0, Lcom/android/systemui/statusbar/notification/NotificationUtil$InnerNotifBean;->mIsSystemApp:Z

    .line 75
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->mIsSystemApp:Z

    .line 77
    iget-boolean p1, v0, Lcom/android/systemui/statusbar/notification/NotificationUtil$InnerNotifBean;->mIsPrioritizedApp:Z

    .line 79
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->mIsPrioritizedApp:Z

    .line 81
    iget-boolean p1, v0, Lcom/android/systemui/statusbar/notification/NotificationUtil$InnerNotifBean;->mCanFloat:Z

    .line 83
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->mCanFloat:Z

    .line 85
    iget-boolean p1, v0, Lcom/android/systemui/statusbar/notification/NotificationUtil$InnerNotifBean;->mCanShowOnKeyguard:Z

    .line 87
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->mCanShowOnKeyguard:Z

    .line 89
    iget-boolean p1, v0, Lcom/android/systemui/statusbar/notification/NotificationUtil$InnerNotifBean;->mCanVibrate:Z

    .line 91
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->mCanVibrate:Z

    .line 93
    iget-boolean p1, v0, Lcom/android/systemui/statusbar/notification/NotificationUtil$InnerNotifBean;->mCanSound:Z

    .line 95
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->mCanSound:Z

    .line 97
    iget-boolean p1, v0, Lcom/android/systemui/statusbar/notification/NotificationUtil$InnerNotifBean;->mCanLights:Z

    .line 99
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->mCanLights:Z

    .line 101
    iget-boolean p1, v0, Lcom/android/systemui/statusbar/notification/NotificationUtil$InnerNotifBean;->mCanShowOngoing:Z

    .line 103
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->mCanShowOngoing:Z

    .line 105
    return-void
    .line 107
.end method


# virtual methods
.method public final canShowOnKeyguard()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->isFocusNotification()Z

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    return v1

    .line 9
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->mCanShowOnKeyguard:Z

    .line 10
    if-eqz v0, :cond_1

    .line 12
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->isEnableKeyguard()Z

    .line 14
    move-result p0

    .line 17
    if-eqz p0, :cond_1

    .line 18
    goto :goto_0

    .line 20
    :cond_1
    const/4 v1, 0x0

    .line 21
    :goto_0
    return v1
    .line 22
.end method

.method public final getAppName()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/NotificationUtil;->isHybrid(Landroid/service/notification/StatusBarNotification;)Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 8
    move-result-object v0

    .line 11
    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 12
    const-string v1, "miui.substName"

    .line 14
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 19
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 20
    move-result v1

    .line 23
    if-nez v1, :cond_0

    .line 24
    return-object v0

    .line 26
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->mAppName:Ljava/lang/String;

    .line 27
    return-object p0
    .line 29
.end method

.method public final getFloatTime()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 2
    move-result-object p0

    .line 5
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 6
    const-string v1, "miui.floatTime"

    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 10
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    iget-object p0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 16
    const/16 v0, 0x1388

    .line 18
    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 20
    move-result p0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget-object p0, p0, Landroid/app/Notification;->extraNotification:Landroid/app/MiuiNotification;

    .line 25
    invoke-virtual {p0}, Landroid/app/MiuiNotification;->getFloatTime()I

    .line 27
    move-result p0

    .line 30
    :goto_0
    return p0
    .line 31
.end method

.method public final getLongPressIntent()Landroid/app/PendingIntent;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->mIsSystemApp:Z

    .line 2
    if-nez v0, :cond_1

    .line 4
    sget-boolean v0, Lcom/android/systemui/statusbar/notification/NotificationSettingsManager;->DEBUG:Z

    .line 6
    sget-object v0, Lcom/android/systemui/statusbar/notification/NotificationSettingsManager$Holder;->INSTANCE:Lcom/android/systemui/statusbar/notification/NotificationSettingsManager;

    .line 8
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->getOpPkg()Ljava/lang/String;

    .line 10
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationSettingsManager;->canSendSubstituteNotification(Ljava/lang/String;)Z

    .line 14
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    goto :goto_0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 23
    :goto_1
    const/4 v1, 0x0

    .line 24
    if-eqz v0, :cond_2

    .line 25
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 27
    move-result-object p0

    .line 30
    iget-object p0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 31
    const-string v0, "miui.longPressIntent"

    .line 33
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 35
    move-result-object p0

    .line 38
    instance-of v0, p0, Landroid/app/PendingIntent;

    .line 39
    if-eqz v0, :cond_2

    .line 41
    check-cast p0, Landroid/app/PendingIntent;

    .line 43
    move-object v1, p0

    .line 45
    :cond_2
    return-object v1
    .line 46
.end method

.method public final getMessageClassName()Ljava/lang/CharSequence;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 2
    move-result-object p0

    .line 5
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 6
    const-string v1, "miui.messageClassName"

    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 10
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    iget-object p0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 16
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 18
    move-result-object p0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-object p0, p0, Landroid/app/Notification;->extraNotification:Landroid/app/MiuiNotification;

    .line 23
    invoke-virtual {p0}, Landroid/app/MiuiNotification;->getMessageClassName()Ljava/lang/CharSequence;

    .line 25
    move-result-object p0

    .line 28
    :goto_0
    return-object p0
    .line 29
.end method

.method public final getMessageCount()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 2
    move-result-object p0

    .line 5
    iget v0, p0, Landroid/app/Notification;->number:I

    .line 6
    if-lez v0, :cond_0

    .line 8
    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 11
    const-string v1, "miui.messageCount"

    .line 13
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 15
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    iget-object p0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 21
    const/4 v0, 0x1

    .line 23
    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 24
    move-result v0

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    iget-object p0, p0, Landroid/app/Notification;->extraNotification:Landroid/app/MiuiNotification;

    .line 29
    invoke-virtual {p0}, Landroid/app/MiuiNotification;->getMessageCount()I

    .line 31
    move-result v0

    .line 34
    :goto_0
    return v0
    .line 35
.end method

.method public final getMiuiTimeout()J
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 2
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/focus/FocusUtils;->isFocusNotification(Landroid/app/Notification;)Z

    .line 6
    move-result v0

    .line 9
    const-wide/16 v1, 0x0

    .line 10
    if-eqz v0, :cond_1

    .line 12
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 14
    move-result-object p0

    .line 17
    iget-object p0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 18
    const-string v0, "miui.timeout"

    .line 20
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 22
    move-result v3

    .line 25
    if-eqz v3, :cond_0

    .line 26
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    .line 28
    move-result-wide v1

    .line 31
    :cond_0
    return-wide v1

    .line 32
    :cond_1
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 33
    move-result-object p0

    .line 36
    invoke-virtual {p0}, Landroid/app/Notification;->getTimeoutAfter()J

    .line 37
    move-result-wide v3

    .line 40
    cmp-long p0, v3, v1

    .line 41
    if-nez p0, :cond_2

    .line 43
    sget-boolean p0, Lcom/android/systemui/statusbar/notification/NotificationSettingsManager;->DEBUG:Z

    .line 45
    sget-object p0, Lcom/android/systemui/statusbar/notification/NotificationSettingsManager$Holder;->INSTANCE:Lcom/android/systemui/statusbar/notification/NotificationSettingsManager;

    .line 47
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    :cond_2
    return-wide v1
    .line 52
.end method

.method public final getOpPkg()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/service/notification/StatusBarNotification;->getOpPkg()Ljava/lang/String;

    .line 2
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    invoke-super {p0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    .line 12
    move-result-object p0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-super {p0}, Landroid/service/notification/StatusBarNotification;->getOpPkg()Ljava/lang/String;

    .line 17
    move-result-object p0

    .line 20
    :goto_0
    return-object p0
    .line 21
.end method

.method public final getPackageName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->mPkgName:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getTargetPackageName()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/NotificationUtil;->isHybrid(Landroid/service/notification/StatusBarNotification;)Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 8
    move-result-object v0

    .line 11
    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 12
    const-string v1, "miui.category"

    .line 14
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 19
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 20
    move-result v1

    .line 23
    if-nez v1, :cond_0

    .line 24
    return-object v0

    .line 26
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->mPkgName:Ljava/lang/String;

    .line 27
    return-object p0
    .line 29
.end method

.method public final isEnableFloat()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 2
    move-result-object p0

    .line 5
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 6
    const-string v1, "miui.enableFloat"

    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 10
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    iget-object p0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 16
    const/4 v0, 0x1

    .line 18
    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 19
    move-result p0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-object p0, p0, Landroid/app/Notification;->extraNotification:Landroid/app/MiuiNotification;

    .line 24
    invoke-virtual {p0}, Landroid/app/MiuiNotification;->isEnableFloat()Z

    .line 26
    move-result p0

    .line 29
    :goto_0
    return p0
    .line 30
.end method

.method public final isEnableKeyguard()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 2
    move-result-object p0

    .line 5
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 6
    const-string v1, "miui.enableKeyguard"

    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 10
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    iget-object p0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 16
    const/4 v0, 0x1

    .line 18
    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 19
    move-result p0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-object p0, p0, Landroid/app/Notification;->extraNotification:Landroid/app/MiuiNotification;

    .line 24
    invoke-virtual {p0}, Landroid/app/MiuiNotification;->isEnableKeyguard()Z

    .line 26
    move-result p0

    .line 29
    :goto_0
    return p0
    .line 30
.end method

.method public final isFocusNotification()Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 2
    move-result-object p0

    .line 5
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/focus/FocusUtils;->isFocusNotification(Landroid/app/Notification;)Z

    .line 6
    move-result p0

    .line 9
    return p0
    .line 10
.end method

.method public final isPersistent()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->mIsSystemApp:Z

    .line 2
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 7
    move-result-object p0

    .line 10
    iget-object p0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 11
    const-string v0, "miui.isPersistent"

    .line 13
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 15
    move-result p0

    .line 18
    if-eqz p0, :cond_0

    .line 19
    const/4 v1, 0x1

    .line 21
    :cond_0
    return v1
    .line 22
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    invoke-super {p0}, Landroid/service/notification/StatusBarNotification;->toString()Ljava/lang/String;

    .line 4
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    const-string v1, "\n    pkgName="

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->mPkgName:Ljava/lang/String;

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    const-string v1, " appUid="

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    iget v1, p0, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->mAppUid:I

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    const-string v1, " sdk="

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    iget v1, p0, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->mTargetSdk:I

    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    const-string v1, " sysApp="

    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->mIsSystemApp:Z

    .line 46
    const-string v2, "T"

    .line 48
    const-string v3, "F"

    .line 50
    if-eqz v1, :cond_0

    .line 52
    move-object v1, v2

    .line 54
    goto :goto_0

    .line 55
    :cond_0
    move-object v1, v3

    .line 56
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    const-string v1, " priApp="

    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->mIsPrioritizedApp:Z

    .line 65
    if-eqz v1, :cond_1

    .line 67
    move-object v1, v2

    .line 69
    goto :goto_1

    .line 70
    :cond_1
    move-object v1, v3

    .line 71
    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    const-string v1, " hasShown="

    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->mHasShownAfterUnlock:Z

    .line 80
    if-eqz v1, :cond_2

    .line 82
    move-object v1, v2

    .line 84
    goto :goto_2

    .line 85
    :cond_2
    move-object v1, v3

    .line 86
    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    const-string v1, " float="

    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->mCanFloat:Z

    .line 95
    if-eqz v1, :cond_3

    .line 97
    move-object v1, v2

    .line 99
    goto :goto_3

    .line 100
    :cond_3
    move-object v1, v3

    .line 101
    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    const-string v1, " keyguard="

    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->mCanShowOnKeyguard:Z

    .line 110
    if-eqz v1, :cond_4

    .line 112
    move-object v1, v2

    .line 114
    goto :goto_4

    .line 115
    :cond_4
    move-object v1, v3

    .line 116
    :goto_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    const-string v1, " buzz="

    .line 120
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->mCanVibrate:Z

    .line 125
    if-eqz v1, :cond_5

    .line 127
    move-object v1, v2

    .line 129
    goto :goto_5

    .line 130
    :cond_5
    move-object v1, v3

    .line 131
    :goto_5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    const-string v1, " beep="

    .line 135
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->mCanSound:Z

    .line 140
    if-eqz v1, :cond_6

    .line 142
    move-object v1, v2

    .line 144
    goto :goto_6

    .line 145
    :cond_6
    move-object v1, v3

    .line 146
    :goto_6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    const-string v1, " blink="

    .line 150
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->mCanLights:Z

    .line 155
    if-eqz v1, :cond_7

    .line 157
    move-object v1, v2

    .line 159
    goto :goto_7

    .line 160
    :cond_7
    move-object v1, v3

    .line 161
    :goto_7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    const-string v1, " peek=F fullscreen=F ongoing="

    .line 165
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->mCanShowOngoing:Z

    .line 170
    if-eqz v1, :cond_8

    .line 172
    move-object v1, v2

    .line 174
    goto :goto_8

    .line 175
    :cond_8
    move-object v1, v3

    .line 176
    :goto_8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    const-string v1, "\n    showMiuiAction="

    .line 180
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 185
    move-result-object v1

    .line 188
    invoke-static {v1}, Lcom/android/systemui/statusbar/notification/MiuiNotificationCompat;->getMiuiAction(Landroid/app/Notification;)Landroid/app/Notification$Action;

    .line 189
    move-result-object v1

    .line 192
    const/4 v4, 0x1

    .line 193
    const/4 v5, 0x0

    .line 194
    if-eqz v1, :cond_9

    .line 195
    move v1, v4

    .line 197
    goto :goto_9

    .line 198
    :cond_9
    move v1, v5

    .line 199
    :goto_9
    if-eqz v1, :cond_a

    .line 200
    move-object v1, v2

    .line 202
    goto :goto_a

    .line 203
    :cond_a
    move-object v1, v3

    .line 204
    :goto_a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    const-string v1, " enableFloat="

    .line 208
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->isEnableFloat()Z

    .line 213
    move-result v1

    .line 216
    if-eqz v1, :cond_b

    .line 217
    move-object v1, v2

    .line 219
    goto :goto_b

    .line 220
    :cond_b
    move-object v1, v3

    .line 221
    :goto_b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    const-string v1, " floatWhenDnd="

    .line 225
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->mIsSystemApp:Z

    .line 230
    if-eqz v1, :cond_c

    .line 232
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 234
    move-result-object v1

    .line 237
    iget-object v1, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 238
    const-string v6, "miui.floatWhenDnd"

    .line 240
    invoke-virtual {v1, v6, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 242
    move-result v1

    .line 245
    if-eqz v1, :cond_c

    .line 246
    goto :goto_c

    .line 248
    :cond_c
    move v4, v5

    .line 249
    :goto_c
    if-eqz v4, :cond_d

    .line 250
    move-object v1, v2

    .line 252
    goto :goto_d

    .line 253
    :cond_d
    move-object v1, v3

    .line 254
    :goto_d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    const-string v1, " enableKeyguard="

    .line 258
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->isEnableKeyguard()Z

    .line 263
    move-result v1

    .line 266
    if-eqz v1, :cond_e

    .line 267
    move-object v1, v2

    .line 269
    goto :goto_e

    .line 270
    :cond_e
    move-object v1, v3

    .line 271
    :goto_e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    const-string v1, " floatTime="

    .line 275
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->getFloatTime()I

    .line 280
    move-result v1

    .line 283
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 284
    const-string v1, " messageCount="

    .line 287
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->getMessageCount()I

    .line 292
    move-result v1

    .line 295
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 296
    const-string v1, " persistent="

    .line 299
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->isPersistent()Z

    .line 304
    move-result v1

    .line 307
    if-eqz v1, :cond_f

    .line 308
    move-object v1, v2

    .line 310
    goto :goto_f

    .line 311
    :cond_f
    move-object v1, v3

    .line 312
    :goto_f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    const-string v1, " customHeight="

    .line 316
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 321
    move-result-object v1

    .line 324
    iget-object v1, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 325
    const-string v4, "miui.customHeight"

    .line 327
    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 329
    move-result v1

    .line 332
    if-eqz v1, :cond_10

    .line 333
    move-object v1, v2

    .line 335
    goto :goto_10

    .line 336
    :cond_10
    move-object v1, v3

    .line 337
    :goto_10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    const-string v1, " foldReason="

    .line 341
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/NotificationUtil;->getFoldReason(Landroid/service/notification/StatusBarNotification;)I

    .line 346
    move-result v1

    .line 349
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 350
    const-string v1, " isUpdate="

    .line 353
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->mIsUpdate:Z

    .line 358
    if-eqz v1, :cond_11

    .line 360
    move-object v1, v2

    .line 362
    goto :goto_11

    .line 363
    :cond_11
    move-object v1, v3

    .line 364
    :goto_11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    const-string v1, " timeout="

    .line 368
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->getMiuiTimeout()J

    .line 373
    move-result-wide v4

    .line 376
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 377
    const-string v1, " buzzBeeped="

    .line 380
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->buzzBeeped:Z

    .line 385
    if-eqz p0, :cond_12

    .line 387
    goto :goto_12

    .line 389
    :cond_12
    move-object v2, v3

    .line 390
    :goto_12
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 394
    move-result-object p0

    .line 397
    return-object p0
    .line 398
.end method
