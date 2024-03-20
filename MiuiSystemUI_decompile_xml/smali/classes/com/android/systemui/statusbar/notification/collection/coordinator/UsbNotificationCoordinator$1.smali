.class public final Lcom/android/systemui/statusbar/notification/collection/coordinator/UsbNotificationCoordinator$1;
.super Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifFilter;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/UsbNotificationCoordinator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/UsbNotificationCoordinator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/UsbNotificationCoordinator$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/UsbNotificationCoordinator;

    .line 2
    const-string p1, "UsbNotifCoordinator"

    .line 4
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifFilter;-><init>(Ljava/lang/String;)V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final shouldFilterOut(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;J)Z
    .locals 4

    .line 1
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/UsbNotificationCoordinator$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/UsbNotificationCoordinator;

    .line 4
    iget-boolean p2, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/UsbNotificationCoordinator;->mDisableUsbBySim:Z

    .line 6
    const/4 p3, 0x0

    .line 8
    if-nez p2, :cond_0

    .line 9
    iget-boolean p2, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/UsbNotificationCoordinator;->mIsScreenshotMode:Z

    .line 11
    if-eqz p2, :cond_b

    .line 13
    :cond_0
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getId()I

    .line 15
    move-result p2

    .line 18
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->mPkgName:Ljava/lang/String;

    .line 19
    const-string v1, "android"

    .line 21
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    move-result v0

    .line 26
    const/4 v2, 0x1

    .line 27
    if-eqz v0, :cond_2

    .line 28
    iget v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/UsbNotificationCoordinator;->mPtpNotificationId:I

    .line 30
    if-eq p2, v0, :cond_1

    .line 32
    iget v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/UsbNotificationCoordinator;->mMtpNotificationId:I

    .line 34
    if-eq p2, v0, :cond_1

    .line 36
    iget v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/UsbNotificationCoordinator;->mCdInstallNotificationId:I

    .line 38
    if-ne p2, v0, :cond_2

    .line 40
    :cond_1
    move p2, v2

    .line 42
    goto :goto_0

    .line 43
    :cond_2
    move p2, p3

    .line 44
    :goto_0
    if-nez p2, :cond_a

    .line 45
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getId()I

    .line 47
    move-result p2

    .line 50
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/UsbNotificationCoordinator;->mEnableUsbModeSelection:Z

    .line 51
    if-eqz v0, :cond_4

    .line 53
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->mPkgName:Ljava/lang/String;

    .line 55
    const-string v3, "com.android.systemui"

    .line 57
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    move-result v0

    .line 62
    if-eqz v0, :cond_4

    .line 63
    const v0, 0x53505542

    .line 65
    if-eq p2, v0, :cond_3

    .line 68
    const v0, 0x53505256

    .line 70
    if-eq p2, v0, :cond_3

    .line 73
    const v0, 0x5344534b

    .line 75
    if-eq p2, v0, :cond_3

    .line 78
    const v0, 0x534d4f56

    .line 80
    if-ne p2, v0, :cond_4

    .line 83
    :cond_3
    move p2, v2

    .line 85
    goto :goto_1

    .line 86
    :cond_4
    move p2, p3

    .line 87
    :goto_1
    if-nez p2, :cond_a

    .line 88
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getId()I

    .line 90
    move-result p2

    .line 93
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->mPkgName:Ljava/lang/String;

    .line 94
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 96
    move-result v0

    .line 99
    if-eqz v0, :cond_6

    .line 100
    iget p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/UsbNotificationCoordinator;->mChargingNotificationId:I

    .line 102
    if-eq p2, p0, :cond_5

    .line 104
    const/16 p0, 0x20

    .line 106
    if-ne p2, p0, :cond_6

    .line 108
    :cond_5
    move p0, v2

    .line 110
    goto :goto_2

    .line 111
    :cond_6
    move p0, p3

    .line 112
    :goto_2
    if-nez p0, :cond_a

    .line 113
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getId()I

    .line 115
    move-result p0

    .line 118
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->mPkgName:Ljava/lang/String;

    .line 119
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 121
    move-result p1

    .line 124
    if-eqz p1, :cond_8

    .line 125
    const p1, 0x53466666

    .line 127
    if-eq p0, p1, :cond_7

    .line 130
    const p1, 0x53488888

    .line 132
    if-ne p0, p1, :cond_8

    .line 135
    :cond_7
    move p0, v2

    .line 137
    goto :goto_3

    .line 138
    :cond_8
    move p0, p3

    .line 139
    :goto_3
    if-eqz p0, :cond_9

    .line 140
    goto :goto_4

    .line 142
    :cond_9
    move p0, p3

    .line 143
    goto :goto_5

    .line 144
    :cond_a
    :goto_4
    move p0, v2

    .line 145
    :goto_5
    if-eqz p0, :cond_b

    .line 146
    move p3, v2

    .line 148
    :cond_b
    return p3
    .line 149
.end method
