.class Lcom/android/settings/bluetooth/AuracastShareDialogFragment$StateHandle;
.super Landroid/os/Handler;
.source "AuracastShareDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/AuracastShareDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "StateHandle"
.end annotation


# instance fields
.field mFragment:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/settings/bluetooth/AuracastShareDialogFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/AuracastShareDialogFragment;)V
    .locals 1

    .line 87
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 88
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/AuracastShareDialogFragment$StateHandle;->mFragment:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private handleInnerMessage(Landroid/os/Message;)V
    .locals 5

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage: what: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AuracastShareDialogFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_8

    const/4 v2, 0x3

    const/4 v3, 0x2

    if-eq p1, v3, :cond_6

    if-eq p1, v2, :cond_5

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    goto/16 :goto_0

    .line 135
    :cond_0
    invoke-virtual {p0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 136
    invoke-virtual {p0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 138
    :cond_1
    iget-object p1, p0, Lcom/android/settings/bluetooth/AuracastShareDialogFragment$StateHandle;->mFragment:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/bluetooth/AuracastShareDialogFragment;

    iget-object v0, p0, Lcom/android/settings/bluetooth/AuracastShareDialogFragment$StateHandle;->mFragment:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/bluetooth/AuracastShareDialogFragment;

    invoke-static {v0}, Lcom/android/settings/bluetooth/AuracastShareDialogFragment;->-$$Nest$fgetmView(Lcom/android/settings/bluetooth/AuracastShareDialogFragment;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/AuracastShareDialogFragment$StateHandle;->mFragment:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/bluetooth/AuracastShareDialogFragment;

    sget v3, Lcom/android/settings/R$string;->bluetooth_device_title_audio_share_fail:I

    iget-object p0, p0, Lcom/android/settings/bluetooth/AuracastShareDialogFragment$StateHandle;->mFragment:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/bluetooth/AuracastShareDialogFragment;

    invoke-static {p0}, Lcom/android/settings/bluetooth/AuracastShareDialogFragment;->-$$Nest$fgetmAudioShareController(Lcom/android/settings/bluetooth/AuracastShareDialogFragment;)Lcom/android/settings/bluetooth/BluetoothAudioShareController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothAudioShareController;->getDeviceName()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v1, v3, p0}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, v0, v2, p0}, Lcom/android/settings/bluetooth/AuracastShareDialogFragment;->-$$Nest$mmodifyView(Lcom/android/settings/bluetooth/AuracastShareDialogFragment;Landroid/view/View;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 126
    :cond_2
    invoke-virtual {p0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 127
    invoke-virtual {p0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 129
    :cond_3
    iget-object p1, p0, Lcom/android/settings/bluetooth/AuracastShareDialogFragment$StateHandle;->mFragment:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/bluetooth/AuracastShareDialogFragment;

    iget-boolean p1, p1, Lcom/android/settings/bluetooth/AuracastShareDialogFragment;->isTimeoutAndUnpair:Z

    if-eqz p1, :cond_4

    goto/16 :goto_0

    .line 132
    :cond_4
    iget-object p1, p0, Lcom/android/settings/bluetooth/AuracastShareDialogFragment$StateHandle;->mFragment:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/bluetooth/AuracastShareDialogFragment;

    iget-object v0, p0, Lcom/android/settings/bluetooth/AuracastShareDialogFragment$StateHandle;->mFragment:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/bluetooth/AuracastShareDialogFragment;

    invoke-static {v0}, Lcom/android/settings/bluetooth/AuracastShareDialogFragment;->-$$Nest$fgetmView(Lcom/android/settings/bluetooth/AuracastShareDialogFragment;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/AuracastShareDialogFragment$StateHandle;->mFragment:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/bluetooth/AuracastShareDialogFragment;

    sget v2, Lcom/android/settings/R$string;->bluetooth_device_title_audio_share_success:I

    iget-object p0, p0, Lcom/android/settings/bluetooth/AuracastShareDialogFragment$StateHandle;->mFragment:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/bluetooth/AuracastShareDialogFragment;

    invoke-static {p0}, Lcom/android/settings/bluetooth/AuracastShareDialogFragment;->-$$Nest$fgetmAudioShareController(Lcom/android/settings/bluetooth/AuracastShareDialogFragment;)Lcom/android/settings/bluetooth/BluetoothAudioShareController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothAudioShareController;->getDeviceName()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, v0, v3, p0}, Lcom/android/settings/bluetooth/AuracastShareDialogFragment;->-$$Nest$mmodifyView(Lcom/android/settings/bluetooth/AuracastShareDialogFragment;Landroid/view/View;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 123
    :cond_5
    iget-object p0, p0, Lcom/android/settings/bluetooth/AuracastShareDialogFragment$StateHandle;->mFragment:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/bluetooth/AuracastShareDialogFragment;

    invoke-static {p0}, Lcom/android/settings/bluetooth/AuracastShareDialogFragment;->-$$Nest$maskPermission(Lcom/android/settings/bluetooth/AuracastShareDialogFragment;)V

    goto/16 :goto_0

    .line 107
    :cond_6
    iget-object p1, p0, Lcom/android/settings/bluetooth/AuracastShareDialogFragment$StateHandle;->mFragment:Ljava/lang/ref/WeakReference;

    .line 108
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/bluetooth/AuracastShareDialogFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/AuracastShareDialogFragment;->-$$Nest$fgetmPairingDialogActivity(Lcom/android/settings/bluetooth/AuracastShareDialogFragment;)Lcom/android/settings/bluetooth/BluetoothPairingDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "key_auracast_share"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/settings/bluetooth/AuracastShareDialogFragment$StateHandle;->mFragment:Ljava/lang/ref/WeakReference;

    .line 109
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/bluetooth/AuracastShareDialogFragment;

    invoke-static {v4}, Lcom/android/settings/bluetooth/AuracastShareDialogFragment;->-$$Nest$fgetmAudioShareController(Lcom/android/settings/bluetooth/AuracastShareDialogFragment;)Lcom/android/settings/bluetooth/BluetoothAudioShareController;

    move-result-object v4

    iget-object v4, v4, Lcom/android/settings/bluetooth/BluetoothAudioShareController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 107
    invoke-static {p1, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 110
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "state "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "1"

    .line 111
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 112
    new-instance p1, Landroid/content/Intent;

    const-string v1, "com.android.settings.ACTION_UNPAIR_AURACAST_SHARE_DEVICE"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 113
    iget-object v1, p0, Lcom/android/settings/bluetooth/AuracastShareDialogFragment$StateHandle;->mFragment:Ljava/lang/ref/WeakReference;

    .line 114
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/bluetooth/AuracastShareDialogFragment;

    invoke-static {v1}, Lcom/android/settings/bluetooth/AuracastShareDialogFragment;->-$$Nest$fgetmAudioShareController(Lcom/android/settings/bluetooth/AuracastShareDialogFragment;)Lcom/android/settings/bluetooth/BluetoothAudioShareController;

    move-result-object v1

    iget-object v1, v1, Lcom/android/settings/bluetooth/BluetoothAudioShareController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const-string v3, "android.bluetooth.device.extra.DEVICE"

    .line 113
    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "CURRENT_TIME"

    .line 115
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {p1, v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "com.android.settings"

    .line 116
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 117
    iget-object v1, p0, Lcom/android/settings/bluetooth/AuracastShareDialogFragment$StateHandle;->mFragment:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/bluetooth/AuracastShareDialogFragment;

    invoke-static {v1}, Lcom/android/settings/bluetooth/AuracastShareDialogFragment;->-$$Nest$fgetmPairingDialogActivity(Lcom/android/settings/bluetooth/AuracastShareDialogFragment;)Lcom/android/settings/bluetooth/BluetoothPairingDialog;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 118
    iget-object p1, p0, Lcom/android/settings/bluetooth/AuracastShareDialogFragment$StateHandle;->mFragment:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/bluetooth/AuracastShareDialogFragment;

    iput-boolean v0, p1, Lcom/android/settings/bluetooth/AuracastShareDialogFragment;->isTimeoutAndUnpair:Z

    .line 120
    :cond_7
    iget-object p1, p0, Lcom/android/settings/bluetooth/AuracastShareDialogFragment$StateHandle;->mFragment:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/bluetooth/AuracastShareDialogFragment;

    iget-object v0, p0, Lcom/android/settings/bluetooth/AuracastShareDialogFragment$StateHandle;->mFragment:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/bluetooth/AuracastShareDialogFragment;

    invoke-static {v0}, Lcom/android/settings/bluetooth/AuracastShareDialogFragment;->-$$Nest$fgetmView(Lcom/android/settings/bluetooth/AuracastShareDialogFragment;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/AuracastShareDialogFragment$StateHandle;->mFragment:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/bluetooth/AuracastShareDialogFragment;

    sget v3, Lcom/android/settings/R$string;->bluetooth_device_title_audio_share_fail:I

    iget-object p0, p0, Lcom/android/settings/bluetooth/AuracastShareDialogFragment$StateHandle;->mFragment:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/bluetooth/AuracastShareDialogFragment;

    invoke-static {p0}, Lcom/android/settings/bluetooth/AuracastShareDialogFragment;->-$$Nest$fgetmAudioShareController(Lcom/android/settings/bluetooth/AuracastShareDialogFragment;)Lcom/android/settings/bluetooth/BluetoothAudioShareController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothAudioShareController;->getDeviceName()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v1, v3, p0}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, v0, v2, p0}, Lcom/android/settings/bluetooth/AuracastShareDialogFragment;->-$$Nest$mmodifyView(Lcom/android/settings/bluetooth/AuracastShareDialogFragment;Landroid/view/View;ILjava/lang/String;)V

    goto :goto_0

    .line 104
    :cond_8
    iget-object p1, p0, Lcom/android/settings/bluetooth/AuracastShareDialogFragment$StateHandle;->mFragment:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/bluetooth/AuracastShareDialogFragment;

    iget-object v1, p0, Lcom/android/settings/bluetooth/AuracastShareDialogFragment$StateHandle;->mFragment:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/bluetooth/AuracastShareDialogFragment;

    invoke-static {v1}, Lcom/android/settings/bluetooth/AuracastShareDialogFragment;->-$$Nest$fgetmView(Lcom/android/settings/bluetooth/AuracastShareDialogFragment;)Landroid/view/View;

    move-result-object v1

    iget-object p0, p0, Lcom/android/settings/bluetooth/AuracastShareDialogFragment$StateHandle;->mFragment:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/bluetooth/AuracastShareDialogFragment;

    invoke-static {p0}, Lcom/android/settings/bluetooth/AuracastShareDialogFragment;->-$$Nest$fgetmAudioShareController(Lcom/android/settings/bluetooth/AuracastShareDialogFragment;)Lcom/android/settings/bluetooth/BluetoothAudioShareController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothAudioShareController;->getDeviceName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, v1, v0, p0}, Lcom/android/settings/bluetooth/AuracastShareDialogFragment;->-$$Nest$mmodifyView(Lcom/android/settings/bluetooth/AuracastShareDialogFragment;Landroid/view/View;ILjava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    .line 94
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/AuracastShareDialogFragment$StateHandle;->handleInnerMessage(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 96
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
