.class Lcom/android/settings/bluetooth/AuracastShareDialogFragment$AuracastShareReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AuracastShareDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/AuracastShareDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AuracastShareReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/AuracastShareDialogFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/AuracastShareDialogFragment;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/android/settings/bluetooth/AuracastShareDialogFragment$AuracastShareReceiver;->this$0:Lcom/android/settings/bluetooth/AuracastShareDialogFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private handleBassStateAction(Landroid/content/Intent;)V
    .locals 5

    const-string v0, "android.bluetooth.profile.extra.STATE"

    const/4 v1, -0x1

    .line 177
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    .line 178
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "android.bluetooth.device.extra.DEVICE"

    .line 179
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    const-string v2, "AuracastShareDialogFragment"

    if-ne v0, v1, :cond_0

    if-nez v0, :cond_0

    const-string/jumbo p0, "pre state equal state and disconnect"

    .line 181
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-nez p1, :cond_1

    const-string p0, "device is null"

    .line 185
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 188
    :cond_1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/bluetooth/AuracastShareDialogFragment$AuracastShareReceiver;->this$0:Lcom/android/settings/bluetooth/AuracastShareDialogFragment;

    invoke-static {v3}, Lcom/android/settings/bluetooth/AuracastShareDialogFragment;->-$$Nest$fgetmAudioShareController(Lcom/android/settings/bluetooth/AuracastShareDialogFragment;)Lcom/android/settings/bluetooth/BluetoothAudioShareController;

    move-result-object v3

    iget-object v3, v3, Lcom/android/settings/bluetooth/BluetoothAudioShareController;->mAddress:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "device not equal "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/settings/bluetooth/AuracastShareDialogFragment$AuracastShareReceiver;->this$0:Lcom/android/settings/bluetooth/AuracastShareDialogFragment;

    invoke-static {p0}, Lcom/android/settings/bluetooth/AuracastShareDialogFragment;->-$$Nest$fgetmAudioShareController(Lcom/android/settings/bluetooth/AuracastShareDialogFragment;)Lcom/android/settings/bluetooth/BluetoothAudioShareController;

    move-result-object p0

    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothAudioShareController;->mAddress:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const-wide/16 v3, 0x0

    if-nez v0, :cond_3

    const-string p1, "BASS Profile disconnect"

    .line 193
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget-object p0, p0, Lcom/android/settings/bluetooth/AuracastShareDialogFragment$AuracastShareReceiver;->this$0:Lcom/android/settings/bluetooth/AuracastShareDialogFragment;

    const/4 p1, 0x5

    invoke-virtual {p0, p1, v3, v4}, Lcom/android/settings/bluetooth/AuracastShareDialogFragment;->sendMessageDelay(IJ)V

    goto :goto_0

    :cond_3
    const/4 p1, 0x2

    if-ne v0, p1, :cond_4

    const-string p1, "BASS Profile connect"

    .line 196
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    iget-object p1, p0, Lcom/android/settings/bluetooth/AuracastShareDialogFragment$AuracastShareReceiver;->this$0:Lcom/android/settings/bluetooth/AuracastShareDialogFragment;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/settings/bluetooth/AuracastShareDialogFragment;->-$$Nest$fputmAudioShareSuccess(Lcom/android/settings/bluetooth/AuracastShareDialogFragment;Z)V

    .line 198
    iget-object p0, p0, Lcom/android/settings/bluetooth/AuracastShareDialogFragment$AuracastShareReceiver;->this$0:Lcom/android/settings/bluetooth/AuracastShareDialogFragment;

    const/4 p1, 0x4

    invoke-virtual {p0, p1, v3, v4}, Lcom/android/settings/bluetooth/AuracastShareDialogFragment;->sendMessageDelay(IJ)V

    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 149
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "receive the action: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AuracastShareDialogFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v2, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_1
    const-string v0, "android.bluetooth.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_2
    const-string v0, "android.bluetooth.bc.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const-string p1, "android.bluetooth.device.extra.BOND_STATE"

    const/high16 v0, -0x80000000

    .line 153
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string v0, "android.bluetooth.device.extra.DEVICE"

    .line 156
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/bluetooth/BluetoothDevice;

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xa

    if-ne p1, v0, :cond_3

    if-eqz p2, :cond_3

    .line 158
    iget-object p1, p0, Lcom/android/settings/bluetooth/AuracastShareDialogFragment$AuracastShareReceiver;->this$0:Lcom/android/settings/bluetooth/AuracastShareDialogFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/AuracastShareDialogFragment;->-$$Nest$fgetmAudioShareController(Lcom/android/settings/bluetooth/AuracastShareDialogFragment;)Lcom/android/settings/bluetooth/BluetoothAudioShareController;

    move-result-object p1

    iget-object p1, p1, Lcom/android/settings/bluetooth/BluetoothAudioShareController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 159
    invoke-virtual {p2, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "bond fail!"

    .line 160
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object p0, p0, Lcom/android/settings/bluetooth/AuracastShareDialogFragment$AuracastShareReceiver;->this$0:Lcom/android/settings/bluetooth/AuracastShareDialogFragment;

    const/4 p1, 0x5

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/settings/bluetooth/AuracastShareDialogFragment;->sendMessageDelay(IJ)V

    goto :goto_1

    :pswitch_1
    const-string p1, "MTK BASS State intent"

    .line 169
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    invoke-direct {p0, p2}, Lcom/android/settings/bluetooth/AuracastShareDialogFragment$AuracastShareReceiver;->handleBassStateAction(Landroid/content/Intent;)V

    goto :goto_1

    :pswitch_2
    const-string p1, "Qcom BASS State intent"

    .line 165
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    invoke-direct {p0, p2}, Lcom/android/settings/bluetooth/AuracastShareDialogFragment$AuracastShareReceiver;->handleBassStateAction(Landroid/content/Intent;)V

    :cond_3
    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x58cee5b6 -> :sswitch_2
        0xa5c2dde -> :sswitch_1
        0x7e2cc189 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
