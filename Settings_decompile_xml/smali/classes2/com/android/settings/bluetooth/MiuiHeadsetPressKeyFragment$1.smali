.class Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "MiuiHeadsetPressKeyFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;)V
    .locals 0

    .line 201
    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment$1;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .line 204
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "LDAC: mBluetoothA2dpReceiver.onReceive intent="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MiuiHeadsetPressKeyFragment"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v1, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    .line 206
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const-string v3, "android.bluetooth.device.extra.DEVICE"

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    const-string p1, "android.bluetooth.profile.extra.STATE"

    .line 208
    invoke-virtual {p2, p1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 211
    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/bluetooth/BluetoothDevice;

    .line 213
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "state changed "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    .line 214
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment$1;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;

    invoke-static {v0}, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->-$$Nest$fgetmDevice(Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 216
    invoke-virtual {p2, v0}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment$1;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;

    invoke-static {p0, v4}, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->-$$Nest$msetPreferenceEnable(Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;Z)V

    goto/16 :goto_1

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    if-eqz p2, :cond_3

    .line 218
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment$1;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->-$$Nest$fgetmDevice(Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    .line 220
    invoke-virtual {p2, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 221
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment$1;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;

    invoke-static {p0, v2}, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->-$$Nest$msetPreferenceEnable(Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;Z)V

    goto/16 :goto_1

    :cond_1
    const-string v1, "com.xiaomi.bluetooth.ACTION.MMA_STATUS_CHANGED"

    .line 223
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 224
    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    .line 226
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment$1;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;

    invoke-static {v1}, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->-$$Nest$fgetmCachedDevice(Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 227
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment$1;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;

    invoke-static {v1}, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->-$$Nest$fgetmCachedDevice(Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->findLeAddress()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    const-string v1, ""

    .line 229
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ACTION_MMA_STATUS_CHANGED, device= "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " mDevice "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment$1;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;

    invoke-static {v5}, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->-$$Nest$fgetmDevice(Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " LEstr "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_3

    .line 231
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 232
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_3

    const-string/jumbo p1, "mma_type"

    .line 234
    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string/jumbo v1, "mma_status"

    .line 235
    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 236
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ACTION_MMA_STATUS_CHANGED, state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_3

    .line 238
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment$1;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;

    invoke-static {p2}, Lcom/android/settings/bluetooth/HeadsetIDConstants;->isConnectSate(I)Z

    move-result p1

    invoke-static {p0, p1}, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->-$$Nest$msetPreferenceEnable(Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;Z)V

    :cond_3
    :goto_1
    return-void
.end method
