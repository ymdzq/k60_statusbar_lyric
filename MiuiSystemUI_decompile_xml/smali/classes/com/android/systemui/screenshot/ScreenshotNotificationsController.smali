.class public final Lcom/android/systemui/screenshot/ScreenshotNotificationsController;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mNotificationManager:Landroid/app/NotificationManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/WindowManager;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotNotificationsController;->mContext:Landroid/content/Context;

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 7
    const-string v0, "notification"

    .line 10
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    move-result-object p1

    .line 15
    check-cast p1, Landroid/app/NotificationManager;

    .line 16
    iput-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotNotificationsController;->mNotificationManager:Landroid/app/NotificationManager;

    .line 18
    new-instance p0, Landroid/util/DisplayMetrics;

    .line 20
    invoke-direct {p0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 22
    invoke-interface {p2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 25
    move-result-object p1

    .line 28
    invoke-virtual {p1, p0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 29
    return-void
    .line 32
.end method


# virtual methods
.method public final notifyScreenshotError(I)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotNotificationsController;->mContext:Landroid/content/Context;

    .line 2
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object v1

    .line 7
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 8
    move-result-object p1

    .line 11
    new-instance v2, Landroid/app/Notification$Builder;

    .line 12
    const-string v3, "ALR"

    .line 14
    invoke-direct {v2, v0, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 16
    const v3, 0x7f130a86    # @string/screenshot_failed_title 'Couldn't save screenshot'

    .line 19
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 22
    move-result-object v4

    .line 25
    invoke-virtual {v2, v4}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 26
    move-result-object v2

    .line 29
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 30
    move-result-object v1

    .line 33
    invoke-virtual {v2, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 34
    move-result-object v1

    .line 37
    invoke-virtual {v1, p1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 38
    move-result-object v1

    .line 41
    const v2, 0x7f0817ef    # @drawable/stat_notify_image_error 'res/drawable/stat_notify_image_error.xml'

    .line 42
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 45
    move-result-object v1

    .line 48
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 49
    move-result-wide v2

    .line 52
    invoke-virtual {v1, v2, v3}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 53
    move-result-object v1

    .line 56
    const/4 v2, 0x1

    .line 57
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    .line 58
    move-result-object v1

    .line 61
    const-string v3, "err"

    .line 62
    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 64
    move-result-object v1

    .line 67
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 68
    move-result-object v1

    .line 71
    const v3, 0x106001c    # @android:color/system_notification_accent_color

    .line 72
    invoke-virtual {v0, v3}, Landroid/content/Context;->getColor(I)I

    .line 75
    move-result v3

    .line 78
    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 79
    move-result-object v1

    .line 82
    const-string v3, "device_policy"

    .line 83
    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 85
    move-result-object v3

    .line 88
    check-cast v3, Landroid/app/admin/DevicePolicyManager;

    .line 89
    const-string v4, "policy_disable_screen_capture"

    .line 91
    invoke-virtual {v3, v4}, Landroid/app/admin/DevicePolicyManager;->createAdminSupportIntent(Ljava/lang/String;)Landroid/content/Intent;

    .line 93
    move-result-object v7

    .line 96
    if-eqz v7, :cond_0

    .line 97
    iget-object v5, p0, Lcom/android/systemui/screenshot/ScreenshotNotificationsController;->mContext:Landroid/content/Context;

    .line 99
    const/4 v6, 0x0

    .line 101
    const/high16 v8, 0x4000000

    .line 102
    const/4 v9, 0x0

    .line 104
    sget-object v10, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 105
    invoke-static/range {v5 .. v10}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    .line 107
    move-result-object v3

    .line 110
    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 111
    :cond_0
    invoke-static {v0, v1, v2}, Lcom/android/systemui/SystemUIApplication;->overrideNotificationAppName(Landroid/content/Context;Landroid/app/Notification$Builder;Z)V

    .line 114
    new-instance v0, Landroid/app/Notification$BigTextStyle;

    .line 117
    invoke-direct {v0, v1}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    .line 119
    invoke-virtual {v0, p1}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    .line 122
    move-result-object p1

    .line 125
    invoke-virtual {p1}, Landroid/app/Notification$BigTextStyle;->build()Landroid/app/Notification;

    .line 126
    move-result-object p1

    .line 129
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotNotificationsController;->mNotificationManager:Landroid/app/NotificationManager;

    .line 130
    invoke-virtual {p0, v2, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 132
    return-void
    .line 135
.end method
