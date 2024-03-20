.class Lcom/android/settings/bluetooth/AudioShareDialogFragment$1;
.super Landroid/os/Handler;
.source "AudioShareDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/AudioShareDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/AudioShareDialogFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/AudioShareDialogFragment;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/android/settings/bluetooth/AudioShareDialogFragment$1;->this$0:Lcom/android/settings/bluetooth/AudioShareDialogFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage: what: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BtAudioShareDialogFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget p1, p1, Landroid/os/Message;->what:I

    const-string v0, ""

    const/4 v2, 0x0

    const-string/jumbo v3, "miui_device_enable_audio_share"

    const/4 v4, 0x2

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 129
    :pswitch_0
    iget-object p0, p0, Lcom/android/settings/bluetooth/AudioShareDialogFragment$1;->this$0:Lcom/android/settings/bluetooth/AudioShareDialogFragment;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/AudioShareDialogFragment;->enableAudioShare()V

    goto/16 :goto_0

    .line 97
    :pswitch_1
    iget-object p1, p0, Lcom/android/settings/bluetooth/AudioShareDialogFragment$1;->this$0:Lcom/android/settings/bluetooth/AudioShareDialogFragment;

    const-wide/16 v0, 0x7530

    invoke-virtual {p1, v4, v0, v1}, Lcom/android/settings/bluetooth/AudioShareDialogFragment;->sendMessageDelay(IJ)V

    .line 98
    iget-object p1, p0, Lcom/android/settings/bluetooth/AudioShareDialogFragment$1;->this$0:Lcom/android/settings/bluetooth/AudioShareDialogFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/AudioShareDialogFragment;->-$$Nest$fgetmPairingDialogActivity(Lcom/android/settings/bluetooth/AudioShareDialogFragment;)Lcom/android/settings/bluetooth/BluetoothPairingDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/bluetooth/AudioShareDialogFragment$1;->this$0:Lcom/android/settings/bluetooth/AudioShareDialogFragment;

    invoke-static {p0}, Lcom/android/settings/bluetooth/AudioShareDialogFragment;->-$$Nest$fgetmAudioShareController(Lcom/android/settings/bluetooth/AudioShareDialogFragment;)Lcom/android/settings/bluetooth/BluetoothAudioShareController;

    move-result-object p0

    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothAudioShareController;->mAddress:Ljava/lang/String;

    invoke-static {p1, v3, p0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 122
    :pswitch_2
    iget-object p1, p0, Lcom/android/settings/bluetooth/AudioShareDialogFragment$1;->this$0:Lcom/android/settings/bluetooth/AudioShareDialogFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/AudioShareDialogFragment;->-$$Nest$misProcessingEnableAudioShare(Lcom/android/settings/bluetooth/AudioShareDialogFragment;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 123
    iget-object p1, p0, Lcom/android/settings/bluetooth/AudioShareDialogFragment$1;->this$0:Lcom/android/settings/bluetooth/AudioShareDialogFragment;

    invoke-static {p1, v2}, Lcom/android/settings/bluetooth/AudioShareDialogFragment;->-$$Nest$fputmProcessingAudioShare(Lcom/android/settings/bluetooth/AudioShareDialogFragment;Z)V

    .line 125
    :cond_0
    invoke-virtual {p0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 126
    iget-object p1, p0, Lcom/android/settings/bluetooth/AudioShareDialogFragment$1;->this$0:Lcom/android/settings/bluetooth/AudioShareDialogFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/AudioShareDialogFragment;->-$$Nest$fgetmView(Lcom/android/settings/bluetooth/AudioShareDialogFragment;)Landroid/view/View;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/bluetooth/AudioShareDialogFragment$1;->this$0:Lcom/android/settings/bluetooth/AudioShareDialogFragment;

    sget v1, Lcom/android/settings/R$string;->bluetooth_device_title_audio_share_fail:I

    invoke-static {p0}, Lcom/android/settings/bluetooth/AudioShareDialogFragment;->-$$Nest$fgetmAudioShareController(Lcom/android/settings/bluetooth/AudioShareDialogFragment;)Lcom/android/settings/bluetooth/BluetoothAudioShareController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/bluetooth/BluetoothAudioShareController;->getDeviceName()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x3

    invoke-static {p1, v0, v1, p0}, Lcom/android/settings/bluetooth/AudioShareDialogFragment;->-$$Nest$mmodifyView(Lcom/android/settings/bluetooth/AudioShareDialogFragment;Landroid/view/View;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 116
    :pswitch_3
    invoke-virtual {p0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 117
    iget-object p1, p0, Lcom/android/settings/bluetooth/AudioShareDialogFragment$1;->this$0:Lcom/android/settings/bluetooth/AudioShareDialogFragment;

    invoke-static {p1, v2}, Lcom/android/settings/bluetooth/AudioShareDialogFragment;->-$$Nest$fputmProcessingAudioShare(Lcom/android/settings/bluetooth/AudioShareDialogFragment;Z)V

    .line 118
    iget-object p1, p0, Lcom/android/settings/bluetooth/AudioShareDialogFragment$1;->this$0:Lcom/android/settings/bluetooth/AudioShareDialogFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/AudioShareDialogFragment;->-$$Nest$fgetmPairingDialogActivity(Lcom/android/settings/bluetooth/AudioShareDialogFragment;)Lcom/android/settings/bluetooth/BluetoothPairingDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v3, v0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 119
    iget-object p1, p0, Lcom/android/settings/bluetooth/AudioShareDialogFragment$1;->this$0:Lcom/android/settings/bluetooth/AudioShareDialogFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/AudioShareDialogFragment;->-$$Nest$fgetmView(Lcom/android/settings/bluetooth/AudioShareDialogFragment;)Landroid/view/View;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/bluetooth/AudioShareDialogFragment$1;->this$0:Lcom/android/settings/bluetooth/AudioShareDialogFragment;

    sget v1, Lcom/android/settings/R$string;->bluetooth_device_title_audio_share_success:I

    invoke-static {p0}, Lcom/android/settings/bluetooth/AudioShareDialogFragment;->-$$Nest$fgetmAudioShareController(Lcom/android/settings/bluetooth/AudioShareDialogFragment;)Lcom/android/settings/bluetooth/BluetoothAudioShareController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/bluetooth/BluetoothAudioShareController;->getDeviceName()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, v0, v4, p0}, Lcom/android/settings/bluetooth/AudioShareDialogFragment;->-$$Nest$mmodifyView(Lcom/android/settings/bluetooth/AudioShareDialogFragment;Landroid/view/View;ILjava/lang/String;)V

    goto :goto_0

    .line 113
    :pswitch_4
    iget-object p0, p0, Lcom/android/settings/bluetooth/AudioShareDialogFragment$1;->this$0:Lcom/android/settings/bluetooth/AudioShareDialogFragment;

    invoke-static {p0}, Lcom/android/settings/bluetooth/AudioShareDialogFragment;->-$$Nest$maskPermission(Lcom/android/settings/bluetooth/AudioShareDialogFragment;)V

    goto :goto_0

    .line 105
    :pswitch_5
    iget-object p1, p0, Lcom/android/settings/bluetooth/AudioShareDialogFragment$1;->this$0:Lcom/android/settings/bluetooth/AudioShareDialogFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/AudioShareDialogFragment;->-$$Nest$misA2dpConnected(Lcom/android/settings/bluetooth/AudioShareDialogFragment;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/bluetooth/AudioShareDialogFragment$1;->this$0:Lcom/android/settings/bluetooth/AudioShareDialogFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/AudioShareDialogFragment;->-$$Nest$misProcessingEnableAudioShare(Lcom/android/settings/bluetooth/AudioShareDialogFragment;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/settings/bluetooth/AudioShareDialogFragment$1;->this$0:Lcom/android/settings/bluetooth/AudioShareDialogFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/AudioShareDialogFragment;->-$$Nest$misAudioShareEnable(Lcom/android/settings/bluetooth/AudioShareDialogFragment;)Z

    move-result p1

    if-nez p1, :cond_2

    :cond_1
    const-string p1, "connect and enable audio share timeout!"

    .line 106
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object p1, p0, Lcom/android/settings/bluetooth/AudioShareDialogFragment$1;->this$0:Lcom/android/settings/bluetooth/AudioShareDialogFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/AudioShareDialogFragment;->-$$Nest$fgetmPairingDialogActivity(Lcom/android/settings/bluetooth/AudioShareDialogFragment;)Lcom/android/settings/bluetooth/BluetoothPairingDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v3, v0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 108
    iget-object p1, p0, Lcom/android/settings/bluetooth/AudioShareDialogFragment$1;->this$0:Lcom/android/settings/bluetooth/AudioShareDialogFragment;

    const/4 v0, 0x5

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/settings/bluetooth/AudioShareDialogFragment;->sendMessageDelay(IJ)V

    .line 109
    iget-object p0, p0, Lcom/android/settings/bluetooth/AudioShareDialogFragment$1;->this$0:Lcom/android/settings/bluetooth/AudioShareDialogFragment;

    invoke-static {p0}, Lcom/android/settings/bluetooth/AudioShareDialogFragment;->-$$Nest$fgetmAudioShareController(Lcom/android/settings/bluetooth/AudioShareDialogFragment;)Lcom/android/settings/bluetooth/BluetoothAudioShareController;

    move-result-object p1

    iget-object p1, p1, Lcom/android/settings/bluetooth/BluetoothAudioShareController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-static {p0, p1}, Lcom/android/settings/bluetooth/AudioShareDialogFragment;->-$$Nest$msendBroadcastUnpair(Lcom/android/settings/bluetooth/AudioShareDialogFragment;Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_0

    .line 102
    :pswitch_6
    iget-object p1, p0, Lcom/android/settings/bluetooth/AudioShareDialogFragment$1;->this$0:Lcom/android/settings/bluetooth/AudioShareDialogFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/AudioShareDialogFragment;->-$$Nest$fgetmView(Lcom/android/settings/bluetooth/AudioShareDialogFragment;)Landroid/view/View;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/bluetooth/AudioShareDialogFragment$1;->this$0:Lcom/android/settings/bluetooth/AudioShareDialogFragment;

    invoke-static {p0}, Lcom/android/settings/bluetooth/AudioShareDialogFragment;->-$$Nest$fgetmAudioShareController(Lcom/android/settings/bluetooth/AudioShareDialogFragment;)Lcom/android/settings/bluetooth/BluetoothAudioShareController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothAudioShareController;->getDeviceName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1, p0}, Lcom/android/settings/bluetooth/AudioShareDialogFragment;->-$$Nest$mmodifyView(Lcom/android/settings/bluetooth/AudioShareDialogFragment;Landroid/view/View;ILjava/lang/String;)V

    :cond_2
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
