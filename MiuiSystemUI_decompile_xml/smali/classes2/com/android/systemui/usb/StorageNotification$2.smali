.class public final Lcom/android/systemui/usb/StorageNotification$2;
.super Landroid/content/BroadcastReceiver;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/systemui/usb/StorageNotification;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/usb/StorageNotification;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/usb/StorageNotification$2;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/usb/StorageNotification$2;->this$0:Lcom/android/systemui/usb/StorageNotification;

    .line 4
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    iget p1, p0, Lcom/android/systemui/usb/StorageNotification$2;->$r8$classId:I

    .line 2
    packed-switch p1, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    const-string p1, "android.os.storage.extra.FS_UUID"

    .line 8
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    move-result-object p1

    .line 13
    iget-object p0, p0, Lcom/android/systemui/usb/StorageNotification$2;->this$0:Lcom/android/systemui/usb/StorageNotification;

    .line 14
    iget-object p0, p0, Lcom/android/systemui/usb/StorageNotification;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 16
    const/4 p2, 0x1

    .line 18
    invoke-virtual {p0, p1, p2}, Landroid/os/storage/StorageManager;->setVolumeSnoozed(Ljava/lang/String;Z)V

    .line 19
    return-void

    .line 22
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/usb/StorageNotification$2;->this$0:Lcom/android/systemui/usb/StorageNotification;

    .line 23
    iget-object p0, p0, Lcom/android/systemui/usb/StorageNotification;->mNotificationManager:Landroid/app/NotificationManager;

    .line 25
    sget-object p1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 27
    const/4 p2, 0x0

    .line 29
    const v0, 0x534d4f56

    .line 30
    invoke-virtual {p0, p2, v0, p1}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 33
    return-void

    .line 36
    nop

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 38
.end method
