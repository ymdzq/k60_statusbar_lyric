.class public final synthetic Lcom/android/systemui/screenrecord/RecordingService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/screenrecord/RecordingService;

.field public final synthetic f$1:Landroid/os/UserHandle;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/screenrecord/RecordingService;Landroid/os/UserHandle;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/screenrecord/RecordingService$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/screenrecord/RecordingService;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/screenrecord/RecordingService$$ExternalSyntheticLambda1;->f$1:Landroid/os/UserHandle;

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/systemui/screenrecord/RecordingService$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/screenrecord/RecordingService;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/screenrecord/RecordingService$$ExternalSyntheticLambda1;->f$1:Landroid/os/UserHandle;

    .line 4
    sget v1, Lcom/android/systemui/screenrecord/RecordingService;->$r8$clinit:I

    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    const-string v1, "RecordingService"

    .line 11
    const/4 v2, 0x0

    .line 13
    :try_start_0
    const-string/jumbo v3, "saving recording"

    .line 14
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    invoke-virtual {v0}, Lcom/android/systemui/screenrecord/RecordingService;->getRecorder()Lcom/android/systemui/screenrecord/ScreenMediaRecorder;

    .line 20
    move-result-object v3

    .line 23
    invoke-virtual {v3}, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->save()Lcom/android/systemui/screenrecord/ScreenMediaRecorder$SavedRecording;

    .line 24
    move-result-object v3

    .line 27
    invoke-virtual {v0, v3}, Lcom/android/systemui/screenrecord/RecordingService;->createSaveNotification(Lcom/android/systemui/screenrecord/ScreenMediaRecorder$SavedRecording;)Landroid/app/Notification;

    .line 28
    move-result-object v3

    .line 31
    invoke-virtual {v0, p0}, Lcom/android/systemui/screenrecord/RecordingService;->postGroupNotification(Landroid/os/UserHandle;)V

    .line 32
    iget-object v4, v0, Lcom/android/systemui/screenrecord/RecordingService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 35
    iget v5, v0, Lcom/android/systemui/screenrecord/RecordingService;->mNotificationId:I

    .line 37
    invoke-virtual {v4, v2, v5, v3, p0}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    goto :goto_0

    .line 42
    :catch_0
    move-exception v3

    .line 43
    new-instance v4, Ljava/lang/StringBuilder;

    .line 44
    const-string v5, "Error saving screen recording: "

    .line 46
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 51
    move-result-object v3

    .line 54
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    move-result-object v3

    .line 61
    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    const v1, 0x7f130a7b    # @string/screenrecord_save_error 'Error saving screen recording'

    .line 65
    invoke-virtual {v0, v1}, Lcom/android/systemui/screenrecord/RecordingService;->showErrorToast(I)V

    .line 68
    iget-object v1, v0, Lcom/android/systemui/screenrecord/RecordingService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 71
    iget v0, v0, Lcom/android/systemui/screenrecord/RecordingService;->mNotificationId:I

    .line 73
    invoke-virtual {v1, v2, v0, p0}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 75
    :goto_0
    return-void
    .line 78
.end method
