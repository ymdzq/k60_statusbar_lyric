.class Lcom/android/settings/bluetooth/AudioShareDialogFragment$AudioShareReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AudioShareDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/AudioShareDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AudioShareReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/AudioShareDialogFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/AudioShareDialogFragment;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/android/settings/bluetooth/AudioShareDialogFragment$AudioShareReceiver;->this$0:Lcom/android/settings/bluetooth/AudioShareDialogFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    .line 138
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "receive the action: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BtAudioShareDialogFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "android.bluetooth.device.extra.DEVICE"

    .line 140
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_9

    .line 141
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/bluetooth/AudioShareDialogFragment$AudioShareReceiver;->this$0:Lcom/android/settings/bluetooth/AudioShareDialogFragment;

    invoke-static {v2}, Lcom/android/settings/bluetooth/AudioShareDialogFragment;->-$$Nest$fgetmAudioShareController(Lcom/android/settings/bluetooth/AudioShareDialogFragment;)Lcom/android/settings/bluetooth/BluetoothAudioShareController;

    move-result-object v2

    iget-object v2, v2, Lcom/android/settings/bluetooth/BluetoothAudioShareController;->mAddress:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/settings/bluetooth/AudioShareDialogFragment$AudioShareReceiver;->this$0:Lcom/android/settings/bluetooth/AudioShareDialogFragment;

    invoke-static {v0}, Lcom/android/settings/bluetooth/AudioShareDialogFragment;->-$$Nest$fgetmAudioSharing(Lcom/android/settings/bluetooth/AudioShareDialogFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 145
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v2, -0x7720920a

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, -0x1

    if-eq v0, v2, :cond_3

    const v2, 0x4a286686    # 2759073.5f

    if-eq v0, v2, :cond_2

    const v2, 0x7e2cc189

    if-eq v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    move p1, v3

    goto :goto_1

    :cond_2
    const-string v0, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    move p1, v4

    goto :goto_1

    :cond_3
    const-string v0, "MultiA2dp.ACTION.RESET_STATE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    move p1, v5

    :goto_1
    const-wide/16 v6, 0x0

    if-eqz p1, :cond_8

    if-eq p1, v4, :cond_6

    if-eq p1, v3, :cond_5

    goto/16 :goto_2

    :cond_5
    const-string p1, "android.bluetooth.device.extra.BOND_STATE"

    const/high16 v0, -0x80000000

    .line 165
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string v2, "android.bluetooth.device.extra.PREVIOUS_BOND_STATE"

    .line 167
    invoke-virtual {p2, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    const/16 v0, 0xb

    if-ne p2, v0, :cond_9

    const/16 p2, 0xa

    if-ne p1, p2, :cond_9

    const-string p1, "bond fail!"

    .line 170
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-object p1, p0, Lcom/android/settings/bluetooth/AudioShareDialogFragment$AudioShareReceiver;->this$0:Lcom/android/settings/bluetooth/AudioShareDialogFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/AudioShareDialogFragment;->-$$Nest$fgetmPairingDialogActivity(Lcom/android/settings/bluetooth/AudioShareDialogFragment;)Lcom/android/settings/bluetooth/BluetoothPairingDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo p2, "miui_device_enable_audio_share"

    const-string v0, ""

    invoke-static {p1, p2, v0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 172
    iget-object p0, p0, Lcom/android/settings/bluetooth/AudioShareDialogFragment$AudioShareReceiver;->this$0:Lcom/android/settings/bluetooth/AudioShareDialogFragment;

    const/4 p1, 0x5

    invoke-virtual {p0, p1, v6, v7}, Lcom/android/settings/bluetooth/AudioShareDialogFragment;->sendMessageDelay(IJ)V

    goto :goto_2

    :cond_6
    const-string p1, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    .line 155
    invoke-virtual {p2, p1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string v0, "android.bluetooth.profile.extra.STATE"

    .line 156
    invoke-virtual {p2, v0, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    if-ne p1, p2, :cond_7

    const-string/jumbo p0, "prevState and nextState are same, break."

    .line 158
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 161
    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "a2dp state = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " device address:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/settings/bluetooth/AudioShareDialogFragment$AudioShareReceiver;->this$0:Lcom/android/settings/bluetooth/AudioShareDialogFragment;

    invoke-static {v0}, Lcom/android/settings/bluetooth/AudioShareDialogFragment;->-$$Nest$fgetmAudioShareController(Lcom/android/settings/bluetooth/AudioShareDialogFragment;)Lcom/android/settings/bluetooth/BluetoothAudioShareController;

    move-result-object v0

    iget-object v0, v0, Lcom/android/settings/bluetooth/BluetoothAudioShareController;->mAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iget-object p0, p0, Lcom/android/settings/bluetooth/AudioShareDialogFragment$AudioShareReceiver;->this$0:Lcom/android/settings/bluetooth/AudioShareDialogFragment;

    invoke-static {p0, p2}, Lcom/android/settings/bluetooth/AudioShareDialogFragment;->-$$Nest$mhandleA2dpConnectionStateChanged(Lcom/android/settings/bluetooth/AudioShareDialogFragment;I)V

    goto :goto_2

    :cond_8
    const-string p1, "MultiA2dp.EXTRA.STATE"

    .line 147
    invoke-virtual {p2, p1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v4, :cond_9

    const-string/jumbo p1, "sendMessage: MESSAGE_UPDATE_AUDIO_SHARE_DIALOG!"

    .line 149
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object p1, p0, Lcom/android/settings/bluetooth/AudioShareDialogFragment$AudioShareReceiver;->this$0:Lcom/android/settings/bluetooth/AudioShareDialogFragment;

    invoke-static {p1, v4}, Lcom/android/settings/bluetooth/AudioShareDialogFragment;->-$$Nest$fputmAudioShareSuccess(Lcom/android/settings/bluetooth/AudioShareDialogFragment;Z)V

    .line 151
    iget-object p0, p0, Lcom/android/settings/bluetooth/AudioShareDialogFragment$AudioShareReceiver;->this$0:Lcom/android/settings/bluetooth/AudioShareDialogFragment;

    const/4 p1, 0x4

    invoke-virtual {p0, p1, v6, v7}, Lcom/android/settings/bluetooth/AudioShareDialogFragment;->sendMessageDelay(IJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    const-string/jumbo p1, "onReceive() error: "

    .line 177
    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_9
    :goto_2
    return-void
.end method
