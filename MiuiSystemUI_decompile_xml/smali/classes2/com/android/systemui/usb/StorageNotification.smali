.class public final Lcom/android/systemui/usb/StorageNotification;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/CoreStartable;


# instance fields
.field public final mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field public final mContext:Landroid/content/Context;

.field public final mFinishReceiver:Lcom/android/systemui/usb/StorageNotification$2;

.field public final mListener:Lcom/android/systemui/usb/StorageNotification$1;

.field public final mMoveCallback:Lcom/android/systemui/usb/StorageNotification$4;

.field public final mMoves:Landroid/util/SparseArray;

.field public final mNotificationManager:Landroid/app/NotificationManager;

.field public final mSnoozeReceiver:Lcom/android/systemui/usb/StorageNotification$2;

.field public final mStorageManager:Landroid/os/storage/StorageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/app/NotificationManager;Landroid/os/storage/StorageManager;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/util/SparseArray;

    .line 5
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/systemui/usb/StorageNotification;->mMoves:Landroid/util/SparseArray;

    .line 10
    new-instance v0, Lcom/android/systemui/usb/StorageNotification$1;

    .line 12
    invoke-direct {v0, p0}, Lcom/android/systemui/usb/StorageNotification$1;-><init>(Lcom/android/systemui/usb/StorageNotification;)V

    .line 14
    iput-object v0, p0, Lcom/android/systemui/usb/StorageNotification;->mListener:Lcom/android/systemui/usb/StorageNotification$1;

    .line 17
    new-instance v0, Lcom/android/systemui/usb/StorageNotification$2;

    .line 19
    const/4 v1, 0x0

    .line 21
    invoke-direct {v0, p0, v1}, Lcom/android/systemui/usb/StorageNotification$2;-><init>(Lcom/android/systemui/usb/StorageNotification;I)V

    .line 22
    iput-object v0, p0, Lcom/android/systemui/usb/StorageNotification;->mSnoozeReceiver:Lcom/android/systemui/usb/StorageNotification$2;

    .line 25
    new-instance v0, Lcom/android/systemui/usb/StorageNotification$2;

    .line 27
    const/4 v1, 0x1

    .line 29
    invoke-direct {v0, p0, v1}, Lcom/android/systemui/usb/StorageNotification$2;-><init>(Lcom/android/systemui/usb/StorageNotification;I)V

    .line 30
    iput-object v0, p0, Lcom/android/systemui/usb/StorageNotification;->mFinishReceiver:Lcom/android/systemui/usb/StorageNotification$2;

    .line 33
    new-instance v0, Lcom/android/systemui/usb/StorageNotification$4;

    .line 35
    invoke-direct {v0, p0}, Lcom/android/systemui/usb/StorageNotification$4;-><init>(Lcom/android/systemui/usb/StorageNotification;)V

    .line 37
    iput-object v0, p0, Lcom/android/systemui/usb/StorageNotification;->mMoveCallback:Lcom/android/systemui/usb/StorageNotification$4;

    .line 40
    iput-object p1, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    .line 42
    iput-object p2, p0, Lcom/android/systemui/usb/StorageNotification;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 44
    iput-object p3, p0, Lcom/android/systemui/usb/StorageNotification;->mNotificationManager:Landroid/app/NotificationManager;

    .line 46
    iput-object p4, p0, Lcom/android/systemui/usb/StorageNotification;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 48
    return-void
    .line 50
.end method


# virtual methods
.method public final buildNotificationBuilder(Landroid/os/storage/VolumeInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
    .locals 3

    .line 1
    new-instance v0, Landroid/app/Notification$Builder;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    .line 4
    const-string v1, "DSK"

    .line 6
    invoke-direct {v0, p0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    .line 11
    move-result-object v1

    .line 14
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getState()I

    .line 15
    invoke-virtual {v1}, Landroid/os/storage/DiskInfo;->isSd()Z

    .line 18
    move-result p1

    .line 21
    const v2, 0x1080555    # @android:drawable/ic_signal_cellular_2_4_bar

    .line 22
    if-eqz p1, :cond_0

    .line 25
    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {v1}, Landroid/os/storage/DiskInfo;->isUsb()Z

    .line 28
    move-result p1

    .line 31
    if-eqz p1, :cond_1

    .line 32
    const v2, 0x1080583    # @android:drawable/ic_wifi_signal_0

    .line 34
    :cond_1
    :goto_0
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 37
    move-result-object p1

    .line 40
    const v0, 0x106001c    # @android:color/system_notification_accent_color

    .line 41
    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    .line 44
    move-result v0

    .line 47
    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 48
    move-result-object p1

    .line 51
    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 52
    move-result-object p1

    .line 55
    invoke-virtual {p1, p3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 56
    move-result-object p1

    .line 59
    new-instance p2, Landroid/app/Notification$BigTextStyle;

    .line 60
    invoke-direct {p2}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 62
    invoke-virtual {p2, p3}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    .line 65
    move-result-object p2

    .line 68
    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 69
    move-result-object p1

    .line 72
    const/4 p2, 0x1

    .line 73
    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    .line 74
    move-result-object p1

    .line 77
    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setLocalOnly(Z)Landroid/app/Notification$Builder;

    .line 78
    move-result-object p1

    .line 81
    new-instance p2, Landroid/app/Notification$TvExtender;

    .line 82
    invoke-direct {p2}, Landroid/app/Notification$TvExtender;-><init>()V

    .line 84
    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->extend(Landroid/app/Notification$Extender;)Landroid/app/Notification$Builder;

    .line 87
    move-result-object p1

    .line 90
    const/4 p2, 0x0

    .line 91
    invoke-static {p0, p1, p2}, Lcom/android/systemui/SystemUIApplication;->overrideNotificationAppName(Landroid/content/Context;Landroid/app/Notification$Builder;Z)V

    .line 92
    return-object p1
    .line 95
.end method

.method public final buildUnmountPendingIntent(Landroid/os/storage/VolumeInfo;)Landroid/app/PendingIntent;
    .locals 6

    .line 1
    new-instance v2, Landroid/content/Intent;

    .line 2
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 4
    invoke-virtual {p0}, Lcom/android/systemui/usb/StorageNotification;->isTv()Z

    .line 7
    move-result v0

    .line 10
    const-string v1, "android.os.storage.extra.VOLUME_ID"

    .line 11
    if-eqz v0, :cond_0

    .line 13
    const-string v0, "com.android.tv.settings"

    .line 15
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 17
    const-string v0, "com.android.tv.settings.action.UNMOUNT_STORAGE"

    .line 20
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 22
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    .line 25
    move-result-object v0

    .line 28
    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 29
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    .line 32
    move-result-object p1

    .line 35
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 36
    move-result v1

    .line 39
    iget-object v0, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    .line 40
    const/high16 v3, 0x14000000

    .line 42
    const/4 v4, 0x0

    .line 44
    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 45
    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    .line 47
    move-result-object p0

    .line 50
    return-object p0

    .line 51
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/usb/StorageNotification;->isAutomotive()Z

    .line 52
    move-result v0

    .line 55
    const/high16 v3, 0x14000000

    .line 56
    iget-object p0, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    .line 58
    if-eqz v0, :cond_1

    .line 60
    const-string v0, "com.android.car.settings"

    .line 62
    const-string v4, "com.android.car.settings.storage.StorageUnmountReceiver"

    .line 64
    invoke-virtual {v2, v0, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 66
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    .line 69
    move-result-object v0

    .line 72
    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    .line 76
    move-result-object p1

    .line 79
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 80
    move-result p1

    .line 83
    sget-object v0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 84
    invoke-static {p0, p1, v2, v3, v0}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    .line 86
    move-result-object p0

    .line 89
    return-object p0

    .line 90
    :cond_1
    const-string v0, "com.android.settings"

    .line 91
    const-string v4, "com.android.settings.deviceinfo.StorageUnmountReceiver"

    .line 93
    invoke-virtual {v2, v0, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 95
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    .line 98
    move-result-object v0

    .line 101
    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    .line 105
    move-result-object p1

    .line 108
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 109
    move-result p1

    .line 112
    sget-object v0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 113
    invoke-static {p0, p1, v2, v3, v0}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    .line 115
    move-result-object p0

    .line 118
    return-object p0
    .line 119
.end method

.method public final isAutomotive()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 4
    move-result-object p0

    .line 7
    const-string v0, "android.hardware.type.automotive"

    .line 8
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 10
    move-result p0

    .line 13
    return p0
    .line 14
.end method

.method public final isTv()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 4
    move-result-object p0

    .line 7
    const-string v0, "android.software.leanback"

    .line 8
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 10
    move-result p0

    .line 13
    return p0
    .line 14
.end method

.method public final onDiskScannedInternal(Landroid/os/storage/DiskInfo;I)V
    .locals 10

    .line 1
    const v0, 0x5344534b

    .line 2
    iget-object v1, p0, Lcom/android/systemui/usb/StorageNotification;->mNotificationManager:Landroid/app/NotificationManager;

    .line 5
    if-nez p2, :cond_4

    .line 7
    iget-wide v2, p1, Landroid/os/storage/DiskInfo;->size:J

    .line 9
    const-wide/16 v4, 0x0

    .line 11
    cmp-long p2, v2, v4

    .line 13
    if-lez p2, :cond_4

    .line 15
    invoke-virtual {p1}, Landroid/os/storage/DiskInfo;->getDescription()Ljava/lang/String;

    .line 17
    move-result-object p2

    .line 20
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 21
    move-result-object p2

    .line 24
    const v2, 0x10403eb    # @android:string/font_family_display_1_material

    .line 25
    iget-object v3, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    .line 28
    invoke-virtual {v3, v2, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 30
    move-result-object p2

    .line 33
    invoke-virtual {p1}, Landroid/os/storage/DiskInfo;->getDescription()Ljava/lang/String;

    .line 34
    move-result-object v2

    .line 37
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 38
    move-result-object v2

    .line 41
    const v4, 0x10403ea    # @android:string/font_family_caption_material

    .line 42
    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 45
    move-result-object v2

    .line 48
    new-instance v4, Landroid/app/Notification$Builder;

    .line 49
    const-string v5, "DSK"

    .line 51
    invoke-direct {v4, v3, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 53
    invoke-virtual {p1}, Landroid/os/storage/DiskInfo;->isSd()Z

    .line 56
    move-result v5

    .line 59
    const v6, 0x1080555    # @android:drawable/ic_signal_cellular_2_4_bar

    .line 60
    if-eqz v5, :cond_0

    .line 63
    goto :goto_0

    .line 65
    :cond_0
    invoke-virtual {p1}, Landroid/os/storage/DiskInfo;->isUsb()Z

    .line 66
    move-result v5

    .line 69
    if-eqz v5, :cond_1

    .line 70
    const v6, 0x1080583    # @android:drawable/ic_wifi_signal_0

    .line 72
    :cond_1
    :goto_0
    invoke-virtual {v4, v6}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 75
    move-result-object v4

    .line 78
    const v5, 0x106001c    # @android:color/system_notification_accent_color

    .line 79
    invoke-virtual {v3, v5}, Landroid/content/Context;->getColor(I)I

    .line 82
    move-result v5

    .line 85
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 86
    move-result-object v4

    .line 89
    invoke-virtual {v4, p2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 90
    move-result-object p2

    .line 93
    invoke-virtual {p2, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 94
    move-result-object p2

    .line 97
    new-instance v6, Landroid/content/Intent;

    .line 98
    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 100
    invoke-virtual {p0}, Lcom/android/systemui/usb/StorageNotification;->isTv()Z

    .line 103
    move-result v4

    .line 106
    if-eqz v4, :cond_2

    .line 107
    const-string v4, "com.android.tv.settings"

    .line 109
    invoke-virtual {v6, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    const-string v4, "com.android.tv.settings.action.NEW_STORAGE"

    .line 114
    invoke-virtual {v6, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 116
    goto :goto_1

    .line 119
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/usb/StorageNotification;->isAutomotive()Z

    .line 120
    move-result v4

    .line 123
    if-eqz v4, :cond_3

    .line 124
    const/4 p0, 0x0

    .line 126
    goto :goto_2

    .line 127
    :cond_3
    const-string v4, "com.android.settings"

    .line 128
    const-string v5, "com.android.settings.deviceinfo.StorageWizardInit"

    .line 130
    invoke-virtual {v6, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 132
    :goto_1
    invoke-virtual {p1}, Landroid/os/storage/DiskInfo;->getId()Ljava/lang/String;

    .line 135
    move-result-object v4

    .line 138
    const-string v5, "android.os.storage.extra.DISK_ID"

    .line 139
    invoke-virtual {v6, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 141
    invoke-virtual {p1}, Landroid/os/storage/DiskInfo;->getId()Ljava/lang/String;

    .line 144
    move-result-object v4

    .line 147
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    .line 148
    move-result v5

    .line 151
    iget-object v4, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    .line 152
    const/high16 v7, 0x14000000

    .line 154
    const/4 v8, 0x0

    .line 156
    sget-object v9, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 157
    invoke-static/range {v4 .. v9}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    .line 159
    move-result-object p0

    .line 162
    :goto_2
    invoke-virtual {p2, p0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 163
    move-result-object p0

    .line 166
    new-instance p2, Landroid/app/Notification$BigTextStyle;

    .line 167
    invoke-direct {p2}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 169
    invoke-virtual {p2, v2}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    .line 172
    move-result-object p2

    .line 175
    invoke-virtual {p0, p2}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 176
    move-result-object p0

    .line 179
    const/4 p2, 0x1

    .line 180
    invoke-virtual {p0, p2}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    .line 181
    move-result-object p0

    .line 184
    invoke-virtual {p0, p2}, Landroid/app/Notification$Builder;->setLocalOnly(Z)Landroid/app/Notification$Builder;

    .line 185
    move-result-object p0

    .line 188
    const-string p2, "err"

    .line 189
    invoke-virtual {p0, p2}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 191
    move-result-object p0

    .line 194
    new-instance p2, Landroid/app/Notification$TvExtender;

    .line 195
    invoke-direct {p2}, Landroid/app/Notification$TvExtender;-><init>()V

    .line 197
    invoke-virtual {p0, p2}, Landroid/app/Notification$Builder;->extend(Landroid/app/Notification$Extender;)Landroid/app/Notification$Builder;

    .line 200
    move-result-object p0

    .line 203
    const/4 p2, 0x0

    .line 204
    invoke-static {v3, p0, p2}, Lcom/android/systemui/SystemUIApplication;->overrideNotificationAppName(Landroid/content/Context;Landroid/app/Notification$Builder;Z)V

    .line 205
    invoke-virtual {p1}, Landroid/os/storage/DiskInfo;->getId()Ljava/lang/String;

    .line 208
    move-result-object p1

    .line 211
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    .line 212
    move-result-object p0

    .line 215
    sget-object p2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 216
    invoke-virtual {v1, p1, v0, p0, p2}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 218
    goto :goto_3

    .line 221
    :cond_4
    invoke-virtual {p1}, Landroid/os/storage/DiskInfo;->getId()Ljava/lang/String;

    .line 222
    move-result-object p0

    .line 225
    sget-object p1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 226
    invoke-virtual {v1, p0, v0, p1}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 228
    :goto_3
    return-void
    .line 231
.end method

.method public final onVolumeStateChangedInternal(Landroid/os/storage/VolumeInfo;)V
    .locals 12

    .line 1
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getType()I

    .line 2
    move-result v0

    .line 5
    const-string v1, "StorageNotification"

    .line 6
    const/4 v2, 0x1

    .line 8
    if-eqz v0, :cond_1

    .line 9
    if-eq v0, v2, :cond_0

    .line 11
    goto/16 :goto_6

    .line 13
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    const-string v2, "Notifying about private volume: "

    .line 17
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->toString()Ljava/lang/String;

    .line 22
    move-result-object p1

    .line 25
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    move-result-object p1

    .line 32
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    invoke-virtual {p0}, Lcom/android/systemui/usb/StorageNotification;->updateMissingPrivateVolumes()V

    .line 36
    goto/16 :goto_6

    .line 39
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 41
    const-string v3, "Notifying about public volume: "

    .line 43
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->toString()Ljava/lang/String;

    .line 48
    move-result-object v3

    .line 51
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    move-result-object v0

    .line 58
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getMountUserId()I

    .line 62
    move-result v0

    .line 65
    const/16 v3, -0x2710

    .line 66
    if-ne v0, v3, :cond_2

    .line 68
    const-string p0, "Ignore public volume state change event of removed user"

    .line 70
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    goto/16 :goto_6

    .line 75
    :cond_2
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getState()I

    .line 77
    move-result v0

    .line 80
    iget-object v1, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    .line 81
    const-string v3, "progress"

    .line 83
    const-string v4, "err"

    .line 85
    const/4 v5, 0x0

    .line 87
    packed-switch v0, :pswitch_data_0

    .line 88
    :pswitch_0
    goto/16 :goto_5

    .line 91
    :pswitch_1
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->isPrimary()Z

    .line 93
    move-result v0

    .line 96
    if-nez v0, :cond_3

    .line 97
    goto/16 :goto_5

    .line 99
    :cond_3
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    .line 101
    move-result-object v0

    .line 104
    invoke-virtual {v0}, Landroid/os/storage/DiskInfo;->getDescription()Ljava/lang/String;

    .line 105
    move-result-object v2

    .line 108
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 109
    move-result-object v2

    .line 112
    const v3, 0x10403c7    # @android:string/fingerprint_acquired_too_slow

    .line 113
    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 116
    move-result-object v2

    .line 119
    invoke-virtual {v0}, Landroid/os/storage/DiskInfo;->getDescription()Ljava/lang/String;

    .line 120
    move-result-object v0

    .line 123
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 124
    move-result-object v0

    .line 127
    const v3, 0x10403c6    # @android:string/fingerprint_acquired_too_fast

    .line 128
    invoke-virtual {v1, v3, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 131
    move-result-object v0

    .line 134
    invoke-virtual {p0, p1, v2, v0}, Lcom/android/systemui/usb/StorageNotification;->buildNotificationBuilder(Landroid/os/storage/VolumeInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 135
    move-result-object v0

    .line 138
    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 139
    move-result-object v0

    .line 142
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    .line 143
    move-result-object v0

    .line 146
    goto :goto_0

    .line 147
    :pswitch_2
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->isPrimary()Z

    .line 148
    move-result v0

    .line 151
    if-nez v0, :cond_4

    .line 152
    goto/16 :goto_5

    .line 154
    :cond_4
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    .line 156
    move-result-object v0

    .line 159
    invoke-virtual {v0}, Landroid/os/storage/DiskInfo;->getDescription()Ljava/lang/String;

    .line 160
    move-result-object v2

    .line 163
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 164
    move-result-object v2

    .line 167
    const v3, 0x10403d7    # @android:string/fingerprint_error_timeout

    .line 168
    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 171
    move-result-object v2

    .line 174
    invoke-virtual {v0}, Landroid/os/storage/DiskInfo;->getDescription()Ljava/lang/String;

    .line 175
    move-result-object v0

    .line 178
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 179
    move-result-object v0

    .line 182
    const v3, 0x10403d6    # @android:string/fingerprint_error_security_update_required

    .line 183
    invoke-virtual {v1, v3, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 186
    move-result-object v0

    .line 189
    invoke-virtual {p0, p1, v2, v0}, Lcom/android/systemui/usb/StorageNotification;->buildNotificationBuilder(Landroid/os/storage/VolumeInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 190
    move-result-object v0

    .line 193
    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 194
    move-result-object v0

    .line 197
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    .line 198
    move-result-object v0

    .line 201
    :goto_0
    move-object v5, v0

    .line 202
    goto/16 :goto_5

    .line 203
    :pswitch_3
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    .line 205
    move-result-object v0

    .line 208
    invoke-virtual {v0}, Landroid/os/storage/DiskInfo;->getDescription()Ljava/lang/String;

    .line 209
    move-result-object v2

    .line 212
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 213
    move-result-object v2

    .line 216
    const v3, 0x10403e7    # @android:string/font_family_body_1_material

    .line 217
    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 220
    move-result-object v2

    .line 223
    invoke-virtual {v0}, Landroid/os/storage/DiskInfo;->getDescription()Ljava/lang/String;

    .line 224
    move-result-object v0

    .line 227
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 228
    move-result-object v0

    .line 231
    const v3, 0x10403e6    # @android:string/floating_toolbar_open_overflow_description

    .line 232
    invoke-virtual {v1, v3, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 235
    move-result-object v0

    .line 238
    invoke-virtual {p0}, Lcom/android/systemui/usb/StorageNotification;->isAutomotive()Z

    .line 239
    move-result v1

    .line 242
    if-eqz v1, :cond_5

    .line 243
    invoke-virtual {p0, p1}, Lcom/android/systemui/usb/StorageNotification;->buildUnmountPendingIntent(Landroid/os/storage/VolumeInfo;)Landroid/app/PendingIntent;

    .line 245
    move-result-object v5

    .line 248
    goto :goto_2

    .line 249
    :cond_5
    new-instance v8, Landroid/content/Intent;

    .line 250
    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 252
    invoke-virtual {p0}, Lcom/android/systemui/usb/StorageNotification;->isTv()Z

    .line 255
    move-result v1

    .line 258
    if-eqz v1, :cond_6

    .line 259
    const-string v1, "com.android.tv.settings"

    .line 261
    invoke-virtual {v8, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 263
    const-string v1, "com.android.tv.settings.action.NEW_STORAGE"

    .line 266
    invoke-virtual {v8, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 268
    goto :goto_1

    .line 271
    :cond_6
    invoke-virtual {p0}, Lcom/android/systemui/usb/StorageNotification;->isAutomotive()Z

    .line 272
    move-result v1

    .line 275
    if-eqz v1, :cond_7

    .line 276
    goto :goto_2

    .line 278
    :cond_7
    const-string v1, "com.android.settings"

    .line 279
    const-string v3, "com.android.settings.deviceinfo.StorageWizardInit"

    .line 281
    invoke-virtual {v8, v1, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 283
    :goto_1
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    .line 286
    move-result-object v1

    .line 289
    const-string v3, "android.os.storage.extra.VOLUME_ID"

    .line 290
    invoke-virtual {v8, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 292
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    .line 295
    move-result-object v1

    .line 298
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 299
    move-result v7

    .line 302
    iget-object v6, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    .line 303
    const/high16 v9, 0x14000000

    .line 305
    const/4 v10, 0x0

    .line 307
    sget-object v11, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 308
    invoke-static/range {v6 .. v11}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    .line 310
    move-result-object v5

    .line 313
    :goto_2
    invoke-virtual {p0, p1, v2, v0}, Lcom/android/systemui/usb/StorageNotification;->buildNotificationBuilder(Landroid/os/storage/VolumeInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 314
    move-result-object v0

    .line 317
    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 318
    move-result-object v0

    .line 321
    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 322
    move-result-object v0

    .line 325
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    .line 326
    move-result-object v5

    .line 329
    goto/16 :goto_5

    .line 330
    :pswitch_4
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    .line 332
    move-result-object v0

    .line 335
    invoke-virtual {v0}, Landroid/os/storage/DiskInfo;->getDescription()Ljava/lang/String;

    .line 336
    move-result-object v4

    .line 339
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 340
    move-result-object v4

    .line 343
    const v5, 0x10403e9    # @android:string/font_family_button_material

    .line 344
    invoke-virtual {v1, v5, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 347
    move-result-object v4

    .line 350
    invoke-virtual {v0}, Landroid/os/storage/DiskInfo;->getDescription()Ljava/lang/String;

    .line 351
    move-result-object v0

    .line 354
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 355
    move-result-object v0

    .line 358
    const v5, 0x10403e8    # @android:string/font_family_body_2_material

    .line 359
    invoke-virtual {v1, v5, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 362
    move-result-object v0

    .line 365
    invoke-virtual {p0, p1, v4, v0}, Lcom/android/systemui/usb/StorageNotification;->buildNotificationBuilder(Landroid/os/storage/VolumeInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 366
    move-result-object v0

    .line 369
    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 370
    move-result-object v0

    .line 373
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 374
    move-result-object v0

    .line 377
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    .line 378
    move-result-object v5

    .line 381
    goto/16 :goto_5

    .line 382
    :pswitch_5
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    .line 384
    move-result-object v0

    .line 387
    iget-object v3, p0, Lcom/android/systemui/usb/StorageNotification;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 388
    invoke-virtual {v3, v0}, Landroid/os/storage/StorageManager;->findRecordByUuid(Ljava/lang/String;)Landroid/os/storage/VolumeRecord;

    .line 390
    move-result-object v0

    .line 393
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    .line 394
    move-result-object v3

    .line 397
    if-eqz v0, :cond_e

    .line 398
    invoke-virtual {v0}, Landroid/os/storage/VolumeRecord;->isSnoozed()Z

    .line 400
    move-result v0

    .line 403
    if-eqz v0, :cond_8

    .line 404
    invoke-virtual {v3}, Landroid/os/storage/DiskInfo;->isAdoptable()Z

    .line 406
    move-result v0

    .line 409
    if-eqz v0, :cond_8

    .line 410
    goto/16 :goto_5

    .line 412
    :cond_8
    invoke-virtual {v3}, Landroid/os/storage/DiskInfo;->getDescription()Ljava/lang/String;

    .line 414
    move-result-object v0

    .line 417
    invoke-virtual {v3}, Landroid/os/storage/DiskInfo;->getDescription()Ljava/lang/String;

    .line 418
    move-result-object v4

    .line 421
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 422
    move-result-object v4

    .line 425
    const v6, 0x10403d8    # @android:string/fingerprint_error_unable_to_process

    .line 426
    invoke-virtual {v1, v6, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 429
    move-result-object v4

    .line 432
    iget-object v6, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    .line 433
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 435
    move-result v7

    .line 438
    invoke-virtual {p1, v7}, Landroid/os/storage/VolumeInfo;->getPathForUser(I)Ljava/io/File;

    .line 439
    move-result-object v7

    .line 442
    if-eqz v7, :cond_9

    .line 443
    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 445
    move-result-object v5

    .line 448
    :cond_9
    new-instance v8, Landroid/content/Intent;

    .line 449
    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 451
    new-instance v7, Landroid/content/Intent;

    .line 454
    const-string v9, "android.intent.action.PICK"

    .line 456
    invoke-direct {v7, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 458
    const-string v10, "com.mi.android.globalFileexplorer"

    .line 461
    invoke-virtual {v7, v10}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 463
    invoke-static {v6, v7}, Lcom/miui/utils/IntentUtils;->isIntentActivityExist(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 466
    move-result v7

    .line 469
    const-string v11, "com.android.fileexplorer.FileExplorerTabActivity"

    .line 470
    if-eqz v7, :cond_a

    .line 472
    invoke-virtual {v8, v10, v11}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 474
    goto :goto_3

    .line 477
    :cond_a
    new-instance v7, Landroid/content/Intent;

    .line 478
    invoke-direct {v7, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 480
    const-string v9, "com.android.fileexplorer"

    .line 483
    invoke-virtual {v7, v9}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 485
    invoke-static {v6, v7}, Lcom/miui/utils/IntentUtils;->isIntentActivityExist(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 488
    move-result v7

    .line 491
    if-eqz v7, :cond_b

    .line 492
    invoke-virtual {v8, v9, v11}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 494
    :cond_b
    :goto_3
    const/high16 v7, 0x10000000

    .line 497
    invoke-virtual {v8, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 499
    const-string v7, "current_directory"

    .line 502
    invoke-virtual {v8, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 504
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    .line 507
    move-result-object v5

    .line 510
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    .line 511
    move-result v7

    .line 514
    const/high16 v9, 0x14000000

    .line 515
    const/4 v10, 0x0

    .line 517
    sget-object v11, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 518
    invoke-static/range {v6 .. v11}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    .line 520
    move-result-object v5

    .line 523
    invoke-virtual {p0, p1, v0, v4}, Lcom/android/systemui/usb/StorageNotification;->buildNotificationBuilder(Landroid/os/storage/VolumeInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 524
    move-result-object v0

    .line 527
    new-instance v4, Landroid/app/Notification$Action;

    .line 528
    const v6, 0x10403c8    # @android:string/fingerprint_acquired_try_adjusting

    .line 530
    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 533
    move-result-object v6

    .line 536
    const v7, 0x10803d5    # @android:drawable/ic_info_outline_24

    .line 537
    invoke-direct {v4, v7, v6, v5}, Landroid/app/Notification$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 540
    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    .line 543
    move-result-object v0

    .line 546
    new-instance v4, Landroid/app/Notification$Action;

    .line 547
    const v6, 0x10403e5    # @android:string/floating_toolbar_close_overflow_description

    .line 549
    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 552
    move-result-object v6

    .line 555
    invoke-virtual {p0, p1}, Lcom/android/systemui/usb/StorageNotification;->buildUnmountPendingIntent(Landroid/os/storage/VolumeInfo;)Landroid/app/PendingIntent;

    .line 556
    move-result-object v7

    .line 559
    const v8, 0x10803be    # @android:drawable/ic_feedback_indicator

    .line 560
    invoke-direct {v4, v8, v6, v7}, Landroid/app/Notification$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 563
    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    .line 566
    move-result-object v0

    .line 569
    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 570
    move-result-object v0

    .line 573
    const-string v4, "DSK_FLOAT"

    .line 574
    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 576
    move-result-object v0

    .line 579
    const-string/jumbo v4, "sys"

    .line 580
    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 583
    move-result-object v0

    .line 586
    invoke-virtual {v3}, Landroid/os/storage/DiskInfo;->isAdoptable()Z

    .line 587
    move-result v4

    .line 590
    if-eqz v4, :cond_c

    .line 591
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    .line 593
    move-result-object v4

    .line 596
    new-instance v5, Landroid/content/Intent;

    .line 597
    const-string v6, "com.android.systemui.action.SNOOZE_VOLUME"

    .line 599
    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 601
    const-string v6, "android.os.storage.extra.FS_UUID"

    .line 604
    invoke-virtual {v5, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 606
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    .line 609
    move-result v4

    .line 612
    const/high16 v6, 0x14000000

    .line 613
    sget-object v7, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 615
    invoke-static {v1, v4, v5, v6, v7}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    .line 617
    move-result-object v1

    .line 620
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 621
    :cond_c
    invoke-virtual {v3}, Landroid/os/storage/DiskInfo;->isSd()Z

    .line 624
    move-result v1

    .line 627
    if-eqz v1, :cond_d

    .line 628
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 630
    goto :goto_4

    .line 633
    :cond_d
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 634
    :goto_4
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    .line 637
    move-result-object v0

    .line 640
    goto/16 :goto_0

    .line 641
    :pswitch_6
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    .line 643
    move-result-object v0

    .line 646
    invoke-virtual {v0}, Landroid/os/storage/DiskInfo;->getDescription()Ljava/lang/String;

    .line 647
    move-result-object v4

    .line 650
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 651
    move-result-object v4

    .line 654
    const v5, 0x10403ca    # @android:string/fingerprint_authenticated

    .line 655
    invoke-virtual {v1, v5, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 658
    move-result-object v4

    .line 661
    invoke-virtual {v0}, Landroid/os/storage/DiskInfo;->getDescription()Ljava/lang/String;

    .line 662
    move-result-object v0

    .line 665
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 666
    move-result-object v0

    .line 669
    const v5, 0x10403c9    # @android:string/fingerprint_app_setting_name

    .line 670
    invoke-virtual {v1, v5, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 673
    move-result-object v0

    .line 676
    invoke-virtual {p0, p1, v4, v0}, Lcom/android/systemui/usb/StorageNotification;->buildNotificationBuilder(Landroid/os/storage/VolumeInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 677
    move-result-object v0

    .line 680
    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 681
    move-result-object v0

    .line 684
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 685
    move-result-object v0

    .line 688
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    .line 689
    move-result-object v5

    .line 692
    :cond_e
    :goto_5
    const v0, 0x53505542

    .line 693
    iget-object p0, p0, Lcom/android/systemui/usb/StorageNotification;->mNotificationManager:Landroid/app/NotificationManager;

    .line 696
    if-eqz v5, :cond_f

    .line 698
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    .line 700
    move-result-object v1

    .line 703
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getMountUserId()I

    .line 704
    move-result p1

    .line 707
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 708
    move-result-object p1

    .line 711
    invoke-virtual {p0, v1, v0, v5, p1}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 712
    goto :goto_6

    .line 715
    :cond_f
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    .line 716
    move-result-object v1

    .line 719
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getMountUserId()I

    .line 720
    move-result p1

    .line 723
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 724
    move-result-object p1

    .line 727
    invoke-virtual {p0, v1, v0, p1}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 728
    :goto_6
    return-void

    .line 731
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
    .line 732
.end method

.method public final start()V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    iget-object v1, v0, Lcom/android/systemui/usb/StorageNotification;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 4
    iget-object v2, v0, Lcom/android/systemui/usb/StorageNotification;->mListener:Lcom/android/systemui/usb/StorageNotification$1;

    .line 6
    invoke-virtual {v1, v2}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 8
    iget-object v3, v0, Lcom/android/systemui/usb/StorageNotification;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 11
    iget-object v4, v0, Lcom/android/systemui/usb/StorageNotification;->mSnoozeReceiver:Lcom/android/systemui/usb/StorageNotification$2;

    .line 13
    new-instance v5, Landroid/content/IntentFilter;

    .line 15
    const-string v2, "com.android.systemui.action.SNOOZE_VOLUME"

    .line 17
    invoke-direct {v5, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 19
    const/4 v6, 0x0

    .line 22
    const/4 v7, 0x0

    .line 23
    const/4 v8, 0x2

    .line 24
    const-string v9, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    .line 25
    invoke-virtual/range {v3 .. v9}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;ILjava/lang/String;)V

    .line 27
    iget-object v10, v0, Lcom/android/systemui/usb/StorageNotification;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 30
    iget-object v11, v0, Lcom/android/systemui/usb/StorageNotification;->mFinishReceiver:Lcom/android/systemui/usb/StorageNotification$2;

    .line 32
    new-instance v12, Landroid/content/IntentFilter;

    .line 34
    const-string v2, "com.android.systemui.action.FINISH_WIZARD"

    .line 36
    invoke-direct {v12, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 38
    const/4 v13, 0x0

    .line 41
    const/4 v14, 0x0

    .line 42
    const/4 v15, 0x2

    .line 43
    const-string v16, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    .line 44
    invoke-virtual/range {v10 .. v16}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;ILjava/lang/String;)V

    .line 46
    invoke-virtual {v1}, Landroid/os/storage/StorageManager;->getDisks()Ljava/util/List;

    .line 49
    move-result-object v2

    .line 52
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 53
    move-result-object v2

    .line 56
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 57
    move-result v3

    .line 60
    if-eqz v3, :cond_0

    .line 61
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 63
    move-result-object v3

    .line 66
    check-cast v3, Landroid/os/storage/DiskInfo;

    .line 67
    iget v4, v3, Landroid/os/storage/DiskInfo;->volumeCount:I

    .line 69
    invoke-virtual {v0, v3, v4}, Lcom/android/systemui/usb/StorageNotification;->onDiskScannedInternal(Landroid/os/storage/DiskInfo;I)V

    .line 71
    goto :goto_0

    .line 74
    :cond_0
    invoke-virtual {v1}, Landroid/os/storage/StorageManager;->getVolumes()Ljava/util/List;

    .line 75
    move-result-object v1

    .line 78
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 79
    move-result-object v1

    .line 82
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 83
    move-result v2

    .line 86
    if-eqz v2, :cond_1

    .line 87
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 89
    move-result-object v2

    .line 92
    check-cast v2, Landroid/os/storage/VolumeInfo;

    .line 93
    invoke-virtual {v0, v2}, Lcom/android/systemui/usb/StorageNotification;->onVolumeStateChangedInternal(Landroid/os/storage/VolumeInfo;)V

    .line 95
    goto :goto_1

    .line 98
    :cond_1
    iget-object v1, v0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    .line 99
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 101
    move-result-object v1

    .line 104
    new-instance v2, Landroid/os/Handler;

    .line 105
    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    .line 107
    iget-object v3, v0, Lcom/android/systemui/usb/StorageNotification;->mMoveCallback:Lcom/android/systemui/usb/StorageNotification$4;

    .line 110
    invoke-virtual {v1, v3, v2}, Landroid/content/pm/PackageManager;->registerMoveCallback(Landroid/content/pm/PackageManager$MoveCallback;Landroid/os/Handler;)V

    .line 112
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/usb/StorageNotification;->updateMissingPrivateVolumes()V

    .line 115
    return-void
    .line 118
.end method

.method public final updateMissingPrivateVolumes()V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/usb/StorageNotification;->isTv()Z

    .line 4
    move-result v1

    .line 7
    if-nez v1, :cond_5

    .line 8
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/usb/StorageNotification;->isAutomotive()Z

    .line 10
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    goto/16 :goto_1

    .line 16
    :cond_0
    iget-object v1, v0, Lcom/android/systemui/usb/StorageNotification;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 18
    invoke-virtual {v1}, Landroid/os/storage/StorageManager;->getVolumeRecords()Ljava/util/List;

    .line 20
    move-result-object v2

    .line 23
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 24
    move-result-object v2

    .line 27
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    move-result v3

    .line 31
    if-eqz v3, :cond_5

    .line 32
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    move-result-object v3

    .line 37
    check-cast v3, Landroid/os/storage/VolumeRecord;

    .line 38
    invoke-virtual {v3}, Landroid/os/storage/VolumeRecord;->getType()I

    .line 40
    move-result v4

    .line 43
    const/4 v5, 0x1

    .line 44
    if-eq v4, v5, :cond_1

    .line 45
    goto :goto_0

    .line 47
    :cond_1
    invoke-virtual {v3}, Landroid/os/storage/VolumeRecord;->getFsUuid()Ljava/lang/String;

    .line 48
    move-result-object v4

    .line 51
    invoke-virtual {v1, v4}, Landroid/os/storage/StorageManager;->findVolumeByUuid(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    .line 52
    move-result-object v6

    .line 55
    const v7, 0x53505256

    .line 56
    iget-object v8, v0, Lcom/android/systemui/usb/StorageNotification;->mNotificationManager:Landroid/app/NotificationManager;

    .line 59
    if-eqz v6, :cond_2

    .line 61
    invoke-virtual {v6}, Landroid/os/storage/VolumeInfo;->isMountedWritable()Z

    .line 63
    move-result v6

    .line 66
    if-nez v6, :cond_3

    .line 67
    :cond_2
    invoke-virtual {v3}, Landroid/os/storage/VolumeRecord;->isSnoozed()Z

    .line 69
    move-result v6

    .line 72
    if-eqz v6, :cond_4

    .line 73
    :cond_3
    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 75
    invoke-virtual {v8, v4, v7, v3}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 77
    goto :goto_0

    .line 80
    :cond_4
    invoke-virtual {v3}, Landroid/os/storage/VolumeRecord;->getNickname()Ljava/lang/String;

    .line 81
    move-result-object v6

    .line 84
    filled-new-array {v6}, [Ljava/lang/Object;

    .line 85
    move-result-object v6

    .line 88
    const v9, 0x10403cd    # @android:string/fingerprint_error_canceled

    .line 89
    iget-object v10, v0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    .line 92
    invoke-virtual {v10, v9, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 94
    move-result-object v6

    .line 97
    const v9, 0x10403cc    # @android:string/fingerprint_error_bad_calibration

    .line 98
    invoke-virtual {v10, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 101
    move-result-object v9

    .line 104
    new-instance v11, Landroid/app/Notification$Builder;

    .line 105
    const-string v12, "DSK"

    .line 107
    invoke-direct {v11, v10, v12}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 109
    const v12, 0x1080555    # @android:drawable/ic_signal_cellular_2_4_bar

    .line 112
    invoke-virtual {v11, v12}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 115
    move-result-object v11

    .line 118
    const v12, 0x106001c    # @android:color/system_notification_accent_color

    .line 119
    invoke-virtual {v10, v12}, Landroid/content/Context;->getColor(I)I

    .line 122
    move-result v12

    .line 125
    invoke-virtual {v11, v12}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 126
    move-result-object v11

    .line 129
    invoke-virtual {v11, v6}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 130
    move-result-object v6

    .line 133
    invoke-virtual {v6, v9}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 134
    move-result-object v6

    .line 137
    new-instance v13, Landroid/content/Intent;

    .line 138
    invoke-direct {v13}, Landroid/content/Intent;-><init>()V

    .line 140
    const-string v11, "com.android.settings"

    .line 143
    const-string v12, "com.android.settings.Settings$PrivateVolumeForgetActivity"

    .line 145
    invoke-virtual {v13, v11, v12}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 147
    invoke-virtual {v3}, Landroid/os/storage/VolumeRecord;->getFsUuid()Ljava/lang/String;

    .line 150
    move-result-object v11

    .line 153
    const-string v15, "android.os.storage.extra.FS_UUID"

    .line 154
    invoke-virtual {v13, v15, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 156
    invoke-virtual {v3}, Landroid/os/storage/VolumeRecord;->getFsUuid()Ljava/lang/String;

    .line 159
    move-result-object v3

    .line 162
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 163
    move-result v12

    .line 166
    iget-object v11, v0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    .line 167
    const/high16 v14, 0x14000000

    .line 169
    const/4 v3, 0x0

    .line 171
    sget-object v16, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 172
    move-object v7, v15

    .line 174
    move-object v15, v3

    .line 175
    invoke-static/range {v11 .. v16}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    .line 176
    move-result-object v3

    .line 179
    invoke-virtual {v6, v3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 180
    move-result-object v3

    .line 183
    new-instance v6, Landroid/app/Notification$BigTextStyle;

    .line 184
    invoke-direct {v6}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 186
    invoke-virtual {v6, v9}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    .line 189
    move-result-object v6

    .line 192
    invoke-virtual {v3, v6}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 193
    move-result-object v3

    .line 196
    invoke-virtual {v3, v5}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    .line 197
    move-result-object v3

    .line 200
    invoke-virtual {v3, v5}, Landroid/app/Notification$Builder;->setLocalOnly(Z)Landroid/app/Notification$Builder;

    .line 201
    move-result-object v3

    .line 204
    const-string/jumbo v5, "sys"

    .line 205
    invoke-virtual {v3, v5}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 208
    move-result-object v3

    .line 211
    new-instance v5, Landroid/content/Intent;

    .line 212
    const-string v6, "com.android.systemui.action.SNOOZE_VOLUME"

    .line 214
    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 216
    invoke-virtual {v5, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 219
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    .line 222
    move-result v6

    .line 225
    const/high16 v7, 0x14000000

    .line 226
    sget-object v9, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 228
    invoke-static {v10, v6, v5, v7, v9}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    .line 230
    move-result-object v5

    .line 233
    invoke-virtual {v3, v5}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 234
    move-result-object v3

    .line 237
    new-instance v5, Landroid/app/Notification$TvExtender;

    .line 238
    invoke-direct {v5}, Landroid/app/Notification$TvExtender;-><init>()V

    .line 240
    invoke-virtual {v3, v5}, Landroid/app/Notification$Builder;->extend(Landroid/app/Notification$Extender;)Landroid/app/Notification$Builder;

    .line 243
    move-result-object v3

    .line 246
    const/4 v5, 0x0

    .line 247
    invoke-static {v10, v3, v5}, Lcom/android/systemui/SystemUIApplication;->overrideNotificationAppName(Landroid/content/Context;Landroid/app/Notification$Builder;Z)V

    .line 248
    invoke-virtual {v3}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    .line 251
    move-result-object v3

    .line 254
    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 255
    const v6, 0x53505256

    .line 257
    invoke-virtual {v8, v4, v6, v3, v5}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 260
    goto/16 :goto_0

    .line 263
    :cond_5
    :goto_1
    return-void
    .line 265
.end method
