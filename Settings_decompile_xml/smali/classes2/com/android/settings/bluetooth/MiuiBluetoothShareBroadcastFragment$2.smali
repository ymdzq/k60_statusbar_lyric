.class Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment$2;
.super Ljava/lang/Object;
.source "MiuiBluetoothShareBroadcastFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;)V
    .locals 0

    .line 344
    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment$2;->this$0:Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 347
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "refresh icon clicked and restart start scanning! mIsScanning = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment$2;->this$0:Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;

    invoke-static {v0}, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->-$$Nest$fgetmIsScanning(Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MiuiBluetoothShareBroadcastFragment"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment$2;->this$0:Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->-$$Nest$fgetmIsScanning(Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 349
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment$2;->this$0:Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->-$$Nest$fputmIsScanning(Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;Z)V

    .line 350
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment$2;->this$0:Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->-$$Nest$fgetmSearchBleAudioSourceCategory(Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;)Lcom/android/settings/bluetooth/MiuiBleAudioDeviceFilterCategory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/bluetooth/MiuiBleAudioDeviceFilterCategory;->removeAll()V

    .line 351
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment$2;->this$0:Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->-$$Nest$fgetmDevicePreferenceMap(Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 352
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment$2;->this$0:Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->-$$Nest$fgetmDeviceScanResultMap(Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 353
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment$2;->this$0:Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;

    invoke-static {p0}, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->-$$Nest$menableScanning(Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;)V

    goto :goto_0

    .line 355
    :cond_0
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment$2;->this$0:Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;

    invoke-static {p0}, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->-$$Nest$mdisableScanning(Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;)V

    :goto_0
    return-void
.end method
