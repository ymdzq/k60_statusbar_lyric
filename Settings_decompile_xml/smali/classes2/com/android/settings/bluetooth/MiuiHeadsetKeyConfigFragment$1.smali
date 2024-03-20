.class Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "MiuiHeadsetKeyConfigFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;)V
    .locals 0

    .line 267
    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment$1;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .line 270
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "KeyConfig v1 mBluetoothA2dpReceiver.onReceive intent="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MiuiHeadsetKeyConfigFragment"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v1, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    .line 272
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const-string v3, "android.bluetooth.device.extra.DEVICE"

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    const-string p1, "android.bluetooth.profile.extra.STATE"

    .line 274
    invoke-virtual {p2, p1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 277
    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/bluetooth/BluetoothDevice;

    .line 279
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

    .line 280
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment$1;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;

    invoke-static {v0}, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->-$$Nest$fgetmDevice(Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 282
    invoke-virtual {p2, v0}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 283
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment$1;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;

    invoke-static {p1, v4}, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->-$$Nest$fputmDeviceConnected(Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;Z)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    if-eqz p2, :cond_1

    .line 284
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment$1;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->-$$Nest$fgetmDevice(Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    .line 286
    invoke-virtual {p2, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 287
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment$1;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;

    invoke-static {p1, v2}, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->-$$Nest$fputmDeviceConnected(Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;Z)V

    .line 289
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment$1;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;

    invoke-static {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->-$$Nest$fgetmDeviceConnected(Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;)Z

    move-result p1

    invoke-static {p0, p1}, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->-$$Nest$msetPreferenceEnable(Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;Z)V

    goto/16 :goto_2

    :cond_2
    const-string v1, "com.xiaomi.bluetooth.ACTION.MMA_STATUS_CHANGED"

    .line 290
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 291
    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    .line 293
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment$1;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;

    invoke-static {v1}, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->-$$Nest$fgetmCachedDevice(Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 294
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment$1;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;

    invoke-static {v1}, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->-$$Nest$fgetmCachedDevice(Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->findLeAddress()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_3
    const-string v1, ""

    .line 296
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ACTION_MMA_STATUS_CHANGED, device= "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " mDevice "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment$1;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;

    invoke-static {v5}, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->-$$Nest$fgetmDevice(Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " LEstr "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_4

    .line 298
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 299
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_4

    const-string/jumbo p1, "mma_type"

    .line 301
    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string/jumbo v1, "mma_status"

    .line 302
    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 303
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

    if-nez p1, :cond_4

    .line 305
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment$1;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;

    invoke-static {p2}, Lcom/android/settings/bluetooth/HeadsetIDConstants;->isConnectSate(I)Z

    move-result p1

    invoke-static {p0, p1}, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->-$$Nest$msetPreferenceEnable(Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;Z)V

    :cond_4
    :goto_2
    return-void
.end method
