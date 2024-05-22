.class public Lcom/android/systemui/screenrecord/RecordingService;
.super Landroid/app/Service;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/screenrecord/ScreenMediaRecorder$ScreenMediaRecorderListener;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mAudioSource:Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

.field public final mController:Lcom/android/systemui/screenrecord/RecordingController;

.field public final mKeyguardDismissUtil:Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;

.field public final mLongExecutor:Ljava/util/concurrent/Executor;

.field public final mMainHandler:Landroid/os/Handler;

.field public mNotificationId:I

.field public final mNotificationManager:Landroid/app/NotificationManager;

.field public mOriginalShowTaps:Z

.field public mRecorder:Lcom/android/systemui/screenrecord/ScreenMediaRecorder;

.field public mShowTaps:Z

.field public final mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

.field public final mUserContextTracker:Lcom/android/systemui/settings/UserContextProvider;


# direct methods
.method public constructor <init>(Lcom/android/systemui/screenrecord/RecordingController;Ljava/util/concurrent/Executor;Landroid/os/Handler;Lcom/android/internal/logging/UiEventLogger;Landroid/app/NotificationManager;Lcom/android/systemui/settings/UserContextProvider;Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 2
    const/16 v0, 0x10b1

    .line 5
    iput v0, p0, Lcom/android/systemui/screenrecord/RecordingService;->mNotificationId:I

    .line 7
    iput-object p1, p0, Lcom/android/systemui/screenrecord/RecordingService;->mController:Lcom/android/systemui/screenrecord/RecordingController;

    .line 9
    iput-object p2, p0, Lcom/android/systemui/screenrecord/RecordingService;->mLongExecutor:Ljava/util/concurrent/Executor;

    .line 11
    iput-object p3, p0, Lcom/android/systemui/screenrecord/RecordingService;->mMainHandler:Landroid/os/Handler;

    .line 13
    iput-object p4, p0, Lcom/android/systemui/screenrecord/RecordingService;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 15
    iput-object p5, p0, Lcom/android/systemui/screenrecord/RecordingService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 17
    iput-object p6, p0, Lcom/android/systemui/screenrecord/RecordingService;->mUserContextTracker:Lcom/android/systemui/settings/UserContextProvider;

    .line 19
    iput-object p7, p0, Lcom/android/systemui/screenrecord/RecordingService;->mKeyguardDismissUtil:Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;

    .line 21
    return-void
    .line 23
.end method


# virtual methods
.method public createErrorNotification()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    .line 2
    move-result-object v0

    .line 5
    new-instance v1, Landroid/os/Bundle;

    .line 6
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 8
    const v2, 0x7f130a82    # @string/screenrecord_title 'Screen Recorder'

    .line 11
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 14
    move-result-object v2

    .line 17
    const-string v3, "android.substName"

    .line 18
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    const v2, 0x7f130a7f    # @string/screenrecord_start_error 'Error starting screen recording'

    .line 23
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 26
    move-result-object v0

    .line 29
    new-instance v2, Landroid/app/Notification$Builder;

    .line 30
    const-string/jumbo v3, "screen_record"

    .line 32
    invoke-direct {v2, p0, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 35
    const v3, 0x7f081197    # @drawable/ic_screenrecord 'res/drawable/ic_screenrecord.xml'

    .line 38
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 41
    move-result-object v2

    .line 44
    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 45
    move-result-object v0

    .line 48
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    .line 49
    move-result-object v0

    .line 52
    iget v1, p0, Lcom/android/systemui/screenrecord/RecordingService;->mNotificationId:I

    .line 53
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    .line 55
    move-result-object v0

    .line 58
    invoke-virtual {p0, v1, v0}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    .line 59
    return-void
    .line 62
.end method

.method public createProcessingNotification()Landroid/app/Notification;
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    .line 2
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/android/systemui/screenrecord/RecordingService;->mAudioSource:Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

    .line 10
    sget-object v2, Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;->NONE:Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

    .line 12
    if-ne v1, v2, :cond_0

    .line 14
    const v1, 0x7f130a76    # @string/screenrecord_ongoing_screen_only 'Recording screen'

    .line 16
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 19
    move-result-object v1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const v1, 0x7f130a75    # @string/screenrecord_ongoing_screen_and_audio 'Recording screen and audio'

    .line 24
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 27
    move-result-object v1

    .line 30
    :goto_0
    new-instance v2, Landroid/os/Bundle;

    .line 31
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 33
    const v3, 0x7f130a82    # @string/screenrecord_title 'Screen Recorder'

    .line 36
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 39
    move-result-object v0

    .line 42
    const-string v3, "android.substName"

    .line 43
    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    new-instance v0, Landroid/app/Notification$Builder;

    .line 48
    const-string/jumbo v3, "screen_record"

    .line 50
    invoke-direct {v0, p0, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 53
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 56
    move-result-object v0

    .line 59
    invoke-virtual {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    .line 60
    move-result-object p0

    .line 63
    const v1, 0x7f130a6e    # @string/screenrecord_background_processing_label 'Processing screen recording'

    .line 64
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 67
    move-result-object p0

    .line 70
    invoke-virtual {v0, p0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 71
    move-result-object p0

    .line 74
    const v0, 0x7f081197    # @drawable/ic_screenrecord 'res/drawable/ic_screenrecord.xml'

    .line 75
    invoke-virtual {p0, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 78
    move-result-object p0

    .line 81
    const-string/jumbo v0, "screen_record_saved"

    .line 82
    invoke-virtual {p0, v0}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 85
    move-result-object p0

    .line 88
    invoke-virtual {p0, v2}, Landroid/app/Notification$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    .line 89
    move-result-object p0

    .line 92
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    .line 93
    move-result-object p0

    .line 96
    return-object p0
    .line 97
.end method

.method public createRecordingNotification()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    .line 2
    move-result-object v0

    .line 5
    new-instance v1, Landroid/os/Bundle;

    .line 6
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 8
    const v2, 0x7f130a82    # @string/screenrecord_title 'Screen Recorder'

    .line 11
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 14
    move-result-object v2

    .line 17
    const-string v3, "android.substName"

    .line 18
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    iget-object v2, p0, Lcom/android/systemui/screenrecord/RecordingService;->mAudioSource:Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

    .line 23
    sget-object v3, Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;->NONE:Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

    .line 25
    if-ne v2, v3, :cond_0

    .line 27
    const v2, 0x7f130a76    # @string/screenrecord_ongoing_screen_only 'Recording screen'

    .line 29
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 32
    move-result-object v0

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const v2, 0x7f130a75    # @string/screenrecord_ongoing_screen_and_audio 'Recording screen and audio'

    .line 37
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 40
    move-result-object v0

    .line 43
    :goto_0
    new-instance v2, Landroid/content/Intent;

    .line 44
    const-class v3, Lcom/android/systemui/screenrecord/RecordingService;

    .line 46
    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 48
    const-string v3, "com.android.systemui.screenrecord.STOP_FROM_NOTIF"

    .line 51
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 53
    move-result-object v2

    .line 56
    const/high16 v3, 0xc000000

    .line 57
    const/4 v4, 0x2

    .line 59
    invoke-static {p0, v4, v2, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 60
    move-result-object v2

    .line 63
    new-instance v3, Landroid/app/Notification$Action$Builder;

    .line 64
    const v4, 0x7f080ee6    # @drawable/ic_android 'res/drawable/ic_android.xml'

    .line 66
    invoke-static {p0, v4}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    .line 69
    move-result-object v4

    .line 72
    invoke-virtual {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    .line 73
    move-result-object v5

    .line 76
    const v6, 0x7f130a80    # @string/screenrecord_stop_label 'Stop'

    .line 77
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 80
    move-result-object v5

    .line 83
    invoke-direct {v3, v4, v5, v2}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 84
    invoke-virtual {v3}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    .line 87
    move-result-object v2

    .line 90
    new-instance v3, Landroid/app/Notification$Builder;

    .line 91
    const-string/jumbo v4, "screen_record"

    .line 93
    invoke-direct {v3, p0, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 96
    const v4, 0x7f081197    # @drawable/ic_screenrecord 'res/drawable/ic_screenrecord.xml'

    .line 99
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 102
    move-result-object v3

    .line 105
    invoke-virtual {v3, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 106
    move-result-object v0

    .line 109
    const/4 v3, 0x1

    .line 110
    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setUsesChronometer(Z)Landroid/app/Notification$Builder;

    .line 111
    move-result-object v0

    .line 114
    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setColorized(Z)Landroid/app/Notification$Builder;

    .line 115
    move-result-object v0

    .line 118
    invoke-virtual {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    .line 119
    move-result-object v4

    .line 122
    const v5, 0x7f06000e    # @color/GM2_red_700 '#c5221f'

    .line 123
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    .line 126
    move-result v4

    .line 129
    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 130
    move-result-object v0

    .line 133
    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 134
    move-result-object v0

    .line 137
    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setForegroundServiceBehavior(I)Landroid/app/Notification$Builder;

    .line 138
    move-result-object v0

    .line 141
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    .line 142
    move-result-object v0

    .line 145
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    .line 146
    move-result-object v0

    .line 149
    iget v1, p0, Lcom/android/systemui/screenrecord/RecordingService;->mNotificationId:I

    .line 150
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    .line 152
    move-result-object v0

    .line 155
    invoke-virtual {p0, v1, v0}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    .line 156
    return-void
    .line 159
.end method

.method public createSaveNotification(Lcom/android/systemui/screenrecord/ScreenMediaRecorder$SavedRecording;)Landroid/app/Notification;
    .locals 8

    .line 1
    iget-object v0, p1, Lcom/android/systemui/screenrecord/ScreenMediaRecorder$SavedRecording;->mUri:Landroid/net/Uri;

    .line 2
    new-instance v1, Landroid/content/Intent;

    .line 4
    const-string v2, "android.intent.action.VIEW"

    .line 6
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8
    const v2, 0x10000001

    .line 11
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 14
    move-result-object v1

    .line 17
    const-string/jumbo v2, "video/mp4"

    .line 18
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 21
    move-result-object v1

    .line 24
    new-instance v2, Landroid/app/Notification$Action$Builder;

    .line 25
    const v3, 0x7f081197    # @drawable/ic_screenrecord 'res/drawable/ic_screenrecord.xml'

    .line 27
    invoke-static {p0, v3}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    .line 30
    move-result-object v4

    .line 33
    invoke-virtual {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    .line 34
    move-result-object v5

    .line 37
    const v6, 0x7f130a7e    # @string/screenrecord_share_label 'Share'

    .line 38
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 41
    move-result-object v5

    .line 44
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 45
    move-result-object v0

    .line 48
    new-instance v6, Landroid/content/Intent;

    .line 49
    const-class v7, Lcom/android/systemui/screenrecord/RecordingService;

    .line 51
    invoke-direct {v6, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 53
    const-string v7, "com.android.systemui.screenrecord.SHARE"

    .line 56
    invoke-virtual {v6, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    move-result-object v6

    .line 61
    const-string v7, "extra_path"

    .line 62
    invoke-virtual {v6, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 64
    move-result-object v0

    .line 67
    const/high16 v6, 0xc000000

    .line 68
    const/4 v7, 0x2

    .line 70
    invoke-static {p0, v7, v0, v6}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 71
    move-result-object v0

    .line 74
    invoke-direct {v2, v4, v5, v0}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 75
    invoke-virtual {v2}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    .line 78
    move-result-object v0

    .line 81
    new-instance v2, Landroid/os/Bundle;

    .line 82
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 84
    invoke-virtual {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    .line 87
    move-result-object v4

    .line 90
    const v5, 0x7f130a82    # @string/screenrecord_title 'Screen Recorder'

    .line 91
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 94
    move-result-object v4

    .line 97
    const-string v5, "android.substName"

    .line 98
    invoke-virtual {v2, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    new-instance v4, Landroid/app/Notification$Builder;

    .line 103
    const-string/jumbo v5, "screen_record"

    .line 105
    invoke-direct {v4, p0, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 108
    invoke-virtual {v4, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 111
    move-result-object v3

    .line 114
    invoke-virtual {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    .line 115
    move-result-object v4

    .line 118
    const v5, 0x7f130a7d    # @string/screenrecord_save_title 'Screen recording saved'

    .line 119
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 122
    move-result-object v4

    .line 125
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 126
    move-result-object v3

    .line 129
    invoke-virtual {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    .line 130
    move-result-object v4

    .line 133
    const v5, 0x7f130a7c    # @string/screenrecord_save_text 'Tap to view'

    .line 134
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 137
    move-result-object v4

    .line 140
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 141
    move-result-object v3

    .line 144
    const/high16 v4, 0x4000000

    .line 145
    invoke-static {p0, v7, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 147
    move-result-object p0

    .line 150
    invoke-virtual {v3, p0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 151
    move-result-object p0

    .line 154
    invoke-virtual {p0, v0}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    .line 155
    move-result-object p0

    .line 158
    const/4 v0, 0x1

    .line 159
    invoke-virtual {p0, v0}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 160
    move-result-object p0

    .line 163
    const-string/jumbo v1, "screen_record_saved"

    .line 164
    invoke-virtual {p0, v1}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 167
    move-result-object p0

    .line 170
    invoke-virtual {p0, v2}, Landroid/app/Notification$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    .line 171
    move-result-object p0

    .line 174
    iget-object p1, p1, Lcom/android/systemui/screenrecord/ScreenMediaRecorder$SavedRecording;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    .line 175
    if-eqz p1, :cond_0

    .line 177
    new-instance v1, Landroid/app/Notification$BigPictureStyle;

    .line 179
    invoke-direct {v1}, Landroid/app/Notification$BigPictureStyle;-><init>()V

    .line 181
    invoke-virtual {v1, p1}, Landroid/app/Notification$BigPictureStyle;->bigPicture(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    .line 184
    move-result-object p1

    .line 187
    invoke-virtual {p1, v0}, Landroid/app/Notification$BigPictureStyle;->showBigPictureWhenCollapsed(Z)Landroid/app/Notification$BigPictureStyle;

    .line 188
    move-result-object p1

    .line 191
    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 192
    :cond_0
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    .line 195
    move-result-object p0

    .line 198
    return-object p0
    .line 199
.end method

.method public getRecorder()Lcom/android/systemui/screenrecord/ScreenMediaRecorder;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/screenrecord/RecordingService;->mRecorder:Lcom/android/systemui/screenrecord/ScreenMediaRecorder;

    .line 2
    return-object p0
    .line 4
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
    .line 3
.end method

.method public final onCreate()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 2
    return-void
    .line 5
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .locals 13

    .line 1
    move-object v8, p0

    .line 2
    move-object v0, p1

    .line 3
    const/4 v9, 0x2

    .line 4
    if-nez v0, :cond_0

    .line 5
    return v9

    .line 7
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 11
    new-instance v2, Ljava/lang/StringBuilder;

    .line 12
    const-string v3, "onStartCommand "

    .line 14
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    move-result-object v2

    .line 25
    const-string v3, "RecordingService"

    .line 26
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    new-instance v2, Landroid/app/NotificationChannel;

    .line 31
    const v4, 0x7f130a82    # @string/screenrecord_title 'Screen Recorder'

    .line 33
    invoke-virtual {p0, v4}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    .line 36
    move-result-object v4

    .line 39
    const-string/jumbo v5, "screen_record"

    .line 40
    const/4 v6, 0x3

    .line 43
    invoke-direct {v2, v5, v4, v6}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 44
    const v4, 0x7f130a6f    # @string/screenrecord_channel_description 'Ongoing notification for a screen record session'

    .line 47
    invoke-virtual {p0, v4}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    .line 50
    move-result-object v4

    .line 53
    invoke-virtual {v2, v4}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    .line 54
    const/4 v10, 0x1

    .line 57
    invoke-virtual {v2, v10}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    .line 58
    iget-object v4, v8, Lcom/android/systemui/screenrecord/RecordingService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 61
    invoke-virtual {v4, v2}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 63
    iget-object v2, v8, Lcom/android/systemui/screenrecord/RecordingService;->mUserContextTracker:Lcom/android/systemui/settings/UserContextProvider;

    .line 66
    check-cast v2, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 68
    invoke-virtual {v2}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserContext()Landroid/content/Context;

    .line 70
    move-result-object v2

    .line 73
    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    .line 74
    move-result v4

    .line 77
    new-instance v2, Landroid/os/UserHandle;

    .line 78
    invoke-direct {v2, v4}, Landroid/os/UserHandle;-><init>(I)V

    .line 80
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 83
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 86
    move-result v5

    .line 89
    const/4 v11, 0x0

    .line 90
    const/4 v7, -0x1

    .line 91
    const-string v12, "com.android.systemui.screenrecord.STOP_FROM_NOTIF"

    .line 92
    sparse-switch v5, :sswitch_data_0

    .line 94
    :goto_0
    move v6, v7

    .line 97
    goto :goto_1

    .line 98
    :sswitch_0
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 99
    move-result v5

    .line 102
    if-nez v5, :cond_4

    .line 103
    goto :goto_0

    .line 105
    :sswitch_1
    const-string v5, "com.android.systemui.screenrecord.STOP"

    .line 106
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 108
    move-result v5

    .line 111
    if-nez v5, :cond_1

    .line 112
    goto :goto_0

    .line 114
    :cond_1
    move v6, v9

    .line 115
    goto :goto_1

    .line 116
    :sswitch_2
    const-string v5, "com.android.systemui.screenrecord.START"

    .line 117
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 119
    move-result v5

    .line 122
    if-nez v5, :cond_2

    .line 123
    goto :goto_0

    .line 125
    :cond_2
    move v6, v10

    .line 126
    goto :goto_1

    .line 127
    :sswitch_3
    const-string v5, "com.android.systemui.screenrecord.SHARE"

    .line 128
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 130
    move-result v5

    .line 133
    if-nez v5, :cond_3

    .line 134
    goto :goto_0

    .line 136
    :cond_3
    move v6, v11

    .line 137
    :cond_4
    :goto_1
    packed-switch v6, :pswitch_data_0

    .line 138
    goto/16 :goto_5

    .line 141
    :pswitch_0
    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 143
    move-result v1

    .line 146
    if-eqz v1, :cond_5

    .line 147
    iget-object v1, v8, Lcom/android/systemui/screenrecord/RecordingService;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 149
    sget-object v2, Lcom/android/systemui/screenrecord/Events$ScreenRecordEvent;->SCREEN_RECORD_END_NOTIFICATION:Lcom/android/systemui/screenrecord/Events$ScreenRecordEvent;

    .line 151
    invoke-interface {v1, v2}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 153
    goto :goto_2

    .line 156
    :cond_5
    iget-object v1, v8, Lcom/android/systemui/screenrecord/RecordingService;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 157
    sget-object v2, Lcom/android/systemui/screenrecord/Events$ScreenRecordEvent;->SCREEN_RECORD_END_QS_TILE:Lcom/android/systemui/screenrecord/Events$ScreenRecordEvent;

    .line 159
    invoke-interface {v1, v2}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 161
    :goto_2
    const-string v1, "android.intent.extra.user_handle"

    .line 164
    invoke-virtual {p1, v1, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 166
    move-result v0

    .line 169
    invoke-virtual {p0, v0}, Lcom/android/systemui/screenrecord/RecordingService;->stopService(I)V

    .line 170
    goto/16 :goto_5

    .line 173
    :pswitch_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 175
    move-result-wide v1

    .line 178
    long-to-int v1, v1

    .line 179
    add-int/lit16 v1, v1, 0x10b1

    .line 180
    iput v1, v8, Lcom/android/systemui/screenrecord/RecordingService;->mNotificationId:I

    .line 182
    invoke-static {}, Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;->values()[Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

    .line 184
    move-result-object v1

    .line 187
    const-string v2, "extra_useAudio"

    .line 188
    invoke-virtual {p1, v2, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 190
    move-result v2

    .line 193
    aget-object v1, v1, v2

    .line 194
    iput-object v1, v8, Lcom/android/systemui/screenrecord/RecordingService;->mAudioSource:Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

    .line 196
    new-instance v1, Ljava/lang/StringBuilder;

    .line 198
    const-string v2, "recording with audio source "

    .line 200
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 202
    iget-object v2, v8, Lcom/android/systemui/screenrecord/RecordingService;->mAudioSource:Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

    .line 205
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 207
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 210
    move-result-object v1

    .line 213
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    const-string v1, "extra_showTaps"

    .line 217
    invoke-virtual {p1, v1, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 219
    move-result v1

    .line 222
    iput-boolean v1, v8, Lcom/android/systemui/screenrecord/RecordingService;->mShowTaps:Z

    .line 223
    const-string v1, "extra_captureTarget"

    .line 225
    const-class v2, Lcom/android/systemui/media/MediaProjectionCaptureTarget;

    .line 227
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 229
    move-result-object v0

    .line 232
    move-object v6, v0

    .line 233
    check-cast v6, Lcom/android/systemui/media/MediaProjectionCaptureTarget;

    .line 234
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    .line 236
    move-result-object v0

    .line 239
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 240
    move-result-object v0

    .line 243
    const-string/jumbo v1, "show_touches"

    .line 244
    invoke-static {v0, v1, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 247
    move-result v0

    .line 250
    if-eqz v0, :cond_6

    .line 251
    move v0, v10

    .line 253
    goto :goto_3

    .line 254
    :cond_6
    move v0, v11

    .line 255
    :goto_3
    iput-boolean v0, v8, Lcom/android/systemui/screenrecord/RecordingService;->mOriginalShowTaps:Z

    .line 256
    iget-boolean v0, v8, Lcom/android/systemui/screenrecord/RecordingService;->mShowTaps:Z

    .line 258
    invoke-virtual {p0}, Landroid/app/Service;->getContentResolver()Landroid/content/ContentResolver;

    .line 260
    move-result-object v2

    .line 263
    invoke-static {v2, v1, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 264
    new-instance v0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;

    .line 267
    iget-object v1, v8, Lcom/android/systemui/screenrecord/RecordingService;->mUserContextTracker:Lcom/android/systemui/settings/UserContextProvider;

    .line 269
    check-cast v1, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 271
    invoke-virtual {v1}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserContext()Landroid/content/Context;

    .line 273
    move-result-object v2

    .line 276
    iget-object v3, v8, Lcom/android/systemui/screenrecord/RecordingService;->mMainHandler:Landroid/os/Handler;

    .line 277
    iget-object v5, v8, Lcom/android/systemui/screenrecord/RecordingService;->mAudioSource:Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

    .line 279
    move-object v1, v0

    .line 281
    move-object v7, p0

    .line 282
    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;-><init>(Landroid/content/Context;Landroid/os/Handler;ILcom/android/systemui/screenrecord/ScreenRecordingAudioSource;Lcom/android/systemui/media/MediaProjectionCaptureTarget;Lcom/android/systemui/screenrecord/ScreenMediaRecorder$ScreenMediaRecorderListener;)V

    .line 283
    iput-object v0, v8, Lcom/android/systemui/screenrecord/RecordingService;->mRecorder:Lcom/android/systemui/screenrecord/ScreenMediaRecorder;

    .line 286
    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/screenrecord/RecordingService;->getRecorder()Lcom/android/systemui/screenrecord/ScreenMediaRecorder;

    .line 288
    move-result-object v0

    .line 291
    invoke-virtual {v0}, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->start()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 292
    move v0, v10

    .line 295
    goto :goto_4

    .line 296
    :catch_0
    move-exception v0

    .line 297
    const v1, 0x7f130a7f    # @string/screenrecord_start_error 'Error starting screen recording'

    .line 298
    invoke-virtual {p0, v1}, Lcom/android/systemui/screenrecord/RecordingService;->showErrorToast(I)V

    .line 301
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 304
    move v0, v11

    .line 307
    :goto_4
    if-eqz v0, :cond_7

    .line 308
    invoke-virtual {p0, v10}, Lcom/android/systemui/screenrecord/RecordingService;->updateState(Z)V

    .line 310
    invoke-virtual {p0}, Lcom/android/systemui/screenrecord/RecordingService;->createRecordingNotification()V

    .line 313
    iget-object v0, v8, Lcom/android/systemui/screenrecord/RecordingService;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 316
    sget-object v1, Lcom/android/systemui/screenrecord/Events$ScreenRecordEvent;->SCREEN_RECORD_START:Lcom/android/systemui/screenrecord/Events$ScreenRecordEvent;

    .line 318
    invoke-interface {v0, v1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 320
    goto :goto_5

    .line 323
    :cond_7
    invoke-virtual {p0, v11}, Lcom/android/systemui/screenrecord/RecordingService;->updateState(Z)V

    .line 324
    invoke-virtual {p0}, Lcom/android/systemui/screenrecord/RecordingService;->createErrorNotification()V

    .line 327
    invoke-virtual {p0, v9}, Landroid/app/Service;->stopForeground(I)V

    .line 330
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    .line 333
    return v9

    .line 336
    :pswitch_2
    const-string v1, "extra_path"

    .line 337
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 339
    move-result-object v0

    .line 342
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 343
    move-result-object v0

    .line 346
    new-instance v1, Landroid/content/Intent;

    .line 347
    const-string v3, "android.intent.action.SEND"

    .line 349
    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 351
    const-string/jumbo v3, "video/mp4"

    .line 354
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 357
    move-result-object v1

    .line 360
    const-string v3, "android.intent.extra.STREAM"

    .line 361
    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 363
    move-result-object v0

    .line 366
    iget-object v1, v8, Lcom/android/systemui/screenrecord/RecordingService;->mKeyguardDismissUtil:Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;

    .line 367
    new-instance v3, Lcom/android/systemui/screenrecord/RecordingService$$ExternalSyntheticLambda0;

    .line 369
    invoke-direct {v3, p0, v0, v2}, Lcom/android/systemui/screenrecord/RecordingService$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/screenrecord/RecordingService;Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 371
    invoke-virtual {v1, v3, v11, v11}, Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;->executeWhenUnlocked(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;ZZ)V

    .line 374
    invoke-virtual {p0}, Landroid/app/Service;->closeSystemDialogs()V

    .line 377
    :goto_5
    return v10

    .line 380
    nop

    .line 381
    :sswitch_data_0
    .sparse-switch
        -0x649efbd3 -> :sswitch_3
        -0x64998750 -> :sswitch_2
        -0x1c04f22c -> :sswitch_1
        -0x1130027a -> :sswitch_0
    .end sparse-switch

    .line 382
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
    .line 400
.end method

.method public final postGroupNotification(Landroid/os/UserHandle;)V
    .locals 4

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    invoke-virtual {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    .line 7
    move-result-object v1

    .line 10
    const v2, 0x7f130a82    # @string/screenrecord_title 'Screen Recorder'

    .line 11
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 14
    move-result-object v1

    .line 17
    const-string v2, "android.substName"

    .line 18
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    new-instance v1, Landroid/app/Notification$Builder;

    .line 23
    const-string/jumbo v2, "screen_record"

    .line 25
    invoke-direct {v1, p0, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 28
    const v2, 0x7f081197    # @drawable/ic_screenrecord 'res/drawable/ic_screenrecord.xml'

    .line 31
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 34
    move-result-object v1

    .line 37
    invoke-virtual {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    .line 38
    move-result-object v2

    .line 41
    const v3, 0x7f130a7d    # @string/screenrecord_save_title 'Screen recording saved'

    .line 42
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 45
    move-result-object v2

    .line 48
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 49
    move-result-object v1

    .line 52
    const-string/jumbo v2, "screen_record_saved"

    .line 53
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 56
    move-result-object v1

    .line 59
    const/4 v2, 0x1

    .line 60
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setGroupSummary(Z)Landroid/app/Notification$Builder;

    .line 61
    move-result-object v1

    .line 64
    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    .line 65
    move-result-object v0

    .line 68
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    .line 69
    move-result-object v0

    .line 72
    iget-object p0, p0, Lcom/android/systemui/screenrecord/RecordingService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 73
    const-string v1, "RecordingService"

    .line 75
    const/16 v2, 0x10b1

    .line 77
    invoke-virtual {p0, v1, v2, v0, p1}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 79
    return-void
    .line 82
.end method

.method public final saveRecording(I)V
    .locals 4

    .line 1
    new-instance v0, Landroid/os/UserHandle;

    .line 2
    invoke-direct {v0, p1}, Landroid/os/UserHandle;-><init>(I)V

    .line 4
    iget-object p1, p0, Lcom/android/systemui/screenrecord/RecordingService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 7
    iget v1, p0, Lcom/android/systemui/screenrecord/RecordingService;->mNotificationId:I

    .line 9
    invoke-virtual {p0}, Lcom/android/systemui/screenrecord/RecordingService;->createProcessingNotification()Landroid/app/Notification;

    .line 11
    move-result-object v2

    .line 14
    const/4 v3, 0x0

    .line 15
    invoke-virtual {p1, v3, v1, v2, v0}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 16
    iget-object p1, p0, Lcom/android/systemui/screenrecord/RecordingService;->mLongExecutor:Ljava/util/concurrent/Executor;

    .line 19
    new-instance v1, Lcom/android/systemui/screenrecord/RecordingService$$ExternalSyntheticLambda1;

    .line 21
    invoke-direct {v1, p0, v0}, Lcom/android/systemui/screenrecord/RecordingService$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/screenrecord/RecordingService;Landroid/os/UserHandle;)V

    .line 23
    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 26
    return-void
    .line 29
.end method

.method public showErrorToast(I)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 3
    move-result-object p0

    .line 6
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 7
    return-void
    .line 10
.end method

.method public final stopService(I)V
    .locals 4

    .line 1
    const/4 v0, -0x1

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    iget-object p1, p0, Lcom/android/systemui/screenrecord/RecordingService;->mUserContextTracker:Lcom/android/systemui/settings/UserContextProvider;

    .line 5
    check-cast p1, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 7
    invoke-virtual {p1}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserContext()Landroid/content/Context;

    .line 9
    move-result-object p1

    .line 12
    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    .line 13
    move-result p1

    .line 16
    :cond_0
    const-string v0, "notifying for user "

    .line 17
    const-string v1, "RecordingService"

    .line 19
    invoke-static {v0, p1, v1}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;ILjava/lang/String;)V

    .line 21
    iget-boolean v0, p0, Lcom/android/systemui/screenrecord/RecordingService;->mOriginalShowTaps:Z

    .line 24
    invoke-virtual {p0}, Landroid/app/Service;->getContentResolver()Landroid/content/ContentResolver;

    .line 26
    move-result-object v2

    .line 29
    const-string/jumbo v3, "show_touches"

    .line 30
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 33
    invoke-virtual {p0}, Lcom/android/systemui/screenrecord/RecordingService;->getRecorder()Lcom/android/systemui/screenrecord/ScreenMediaRecorder;

    .line 36
    move-result-object v0

    .line 39
    if-eqz v0, :cond_5

    .line 40
    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/screenrecord/RecordingService;->getRecorder()Lcom/android/systemui/screenrecord/ScreenMediaRecorder;

    .line 42
    move-result-object v0

    .line 45
    invoke-virtual {v0}, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->end()V

    .line 46
    invoke-virtual {p0, p1}, Lcom/android/systemui/screenrecord/RecordingService;->saveRecording(I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    goto :goto_0

    .line 52
    :catchall_0
    move-exception p1

    .line 53
    invoke-virtual {p0}, Lcom/android/systemui/screenrecord/RecordingService;->getRecorder()Lcom/android/systemui/screenrecord/ScreenMediaRecorder;

    .line 54
    move-result-object p0

    .line 57
    iget-object v0, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mTempVideoFile:Ljava/io/File;

    .line 58
    if-eqz v0, :cond_1

    .line 60
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 62
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mTempAudioFile:Ljava/io/File;

    .line 65
    if-eqz p0, :cond_2

    .line 67
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 69
    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    .line 72
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 74
    throw p0

    .line 77
    :catch_0
    move-exception p1

    .line 78
    invoke-virtual {p0}, Lcom/android/systemui/screenrecord/RecordingService;->getRecorder()Lcom/android/systemui/screenrecord/ScreenMediaRecorder;

    .line 79
    move-result-object v0

    .line 82
    iget-object v2, v0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mTempVideoFile:Ljava/io/File;

    .line 83
    if-eqz v2, :cond_3

    .line 85
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 87
    :cond_3
    iget-object v0, v0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mTempAudioFile:Ljava/io/File;

    .line 90
    if-eqz v0, :cond_4

    .line 92
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 94
    :cond_4
    const v0, 0x7f130a7f    # @string/screenrecord_start_error 'Error starting screen recording'

    .line 97
    invoke-virtual {p0, v0}, Lcom/android/systemui/screenrecord/RecordingService;->showErrorToast(I)V

    .line 100
    const-string/jumbo v0, "stopRecording called, but there was an error when endingrecording"

    .line 103
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 109
    invoke-virtual {p0}, Lcom/android/systemui/screenrecord/RecordingService;->createErrorNotification()V

    .line 112
    goto :goto_0

    .line 115
    :cond_5
    const-string/jumbo p1, "stopRecording called, but recorder was null"

    .line 116
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :goto_0
    const/4 p1, 0x0

    .line 122
    invoke-virtual {p0, p1}, Lcom/android/systemui/screenrecord/RecordingService;->updateState(Z)V

    .line 123
    const/4 p1, 0x2

    .line 126
    invoke-virtual {p0, p1}, Landroid/app/Service;->stopForeground(I)V

    .line 127
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    .line 130
    return-void
    .line 133
.end method

.method public final updateState(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/screenrecord/RecordingService;->mUserContextTracker:Lcom/android/systemui/settings/UserContextProvider;

    .line 2
    check-cast v0, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 4
    invoke-virtual {v0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserContext()Landroid/content/Context;

    .line 6
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    .line 10
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    iget-object p0, p0, Lcom/android/systemui/screenrecord/RecordingService;->mController:Lcom/android/systemui/screenrecord/RecordingController;

    .line 16
    invoke-virtual {p0, p1}, Lcom/android/systemui/screenrecord/RecordingController;->updateState(Z)V

    .line 18
    goto :goto_0

    .line 21
    :cond_0
    new-instance v0, Landroid/content/Intent;

    .line 22
    const-string v1, "com.android.systemui.screenrecord.UPDATE_STATE"

    .line 24
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 26
    const-string v1, "extra_state"

    .line 29
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 31
    const/high16 p1, 0x40000000    # 2.0f

    .line 34
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 36
    const-string p1, "com.android.systemui.permission.SELF"

    .line 39
    invoke-virtual {p0, v0, p1}, Landroid/app/Service;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 41
    :goto_0
    return-void
    .line 44
.end method
