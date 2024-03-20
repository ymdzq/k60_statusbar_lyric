.class Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings$5;
.super Landroid/content/BroadcastReceiver;
.source "MiuiBluetoothBroadcastAudioSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;)V
    .locals 0

    .line 461
    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings$5;->this$0:Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .line 464
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 465
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "btBroadcastAudioReceiver action "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MiuiBluetoothBroadcastAudioSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "com.xiaomi.bluetooth.ACTION_BROADCAST_AUDIO_STATUS_CHANGED"

    .line 469
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const-string v1, "broadcast_status"

    .line 470
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    const-string v3, "broadcastId"

    const/4 v4, -0x1

    .line 471
    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    if-eqz v1, :cond_1

    if-eq v3, v4, :cond_1

    .line 473
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings$5;->this$0:Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;

    invoke-static {v1}, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->-$$Nest$mdisableScanning(Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;)V

    .line 474
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings$5;->this$0:Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;

    invoke-static {v1}, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->-$$Nest$fgetmSearchBleAudioSourceCategory(Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;)Lcom/android/settings/bluetooth/MiuiBluetoothAudioDeviceFilterCategory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/MiuiBluetoothAudioDeviceFilterCategory;->removeAll()V

    .line 475
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings$5;->this$0:Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;

    invoke-static {v1}, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->-$$Nest$fgetmSearchBleAudioSourceCategory(Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;)Lcom/android/settings/bluetooth/MiuiBluetoothAudioDeviceFilterCategory;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->access$000(Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;Landroidx/preference/PreferenceGroup;)V

    :cond_1
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 478
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "android.bluetooth.hearingaid.profile.action.CONNECTION_STATE_CHANGED"

    .line 479
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 480
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 481
    :cond_2
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings$5;->this$0:Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->-$$Nest$fgetmAuracastSourceController(Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;)Lcom/android/settings/development/BluetoothBCAudioOnlySourcePreferenceController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/development/BluetoothBCAudioOnlySourcePreferenceController;->updateBroadcastAudioPreference()V

    :cond_3
    const-string v0, "android.bluetooth.action.CONNECTION_STATE_CHANGED"

    .line 483
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "android.bluetooth.profile.extra.STATE"

    .line 484
    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string v0, "android.bluetooth.device.extra.DEVICE"

    .line 487
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/bluetooth/BluetoothDevice;

    .line 488
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings$5;->this$0:Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;

    invoke-static {p0, p2, p1}, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->-$$Nest$mhandleBassConnectionStateChange(Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;Landroid/bluetooth/BluetoothDevice;I)V

    :cond_4
    return-void
.end method
