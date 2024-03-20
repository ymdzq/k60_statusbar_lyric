.class Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings$4;
.super Ljava/lang/Object;
.source "MiuiBluetoothBroadcastAudioSettings.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


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

    .line 446
    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings$4;->this$0:Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 1

    const-string p1, "MiuiBluetoothBroadcastAudioSettings"

    const-string v0, "Bluetooth le audio service connected"

    .line 449
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings$4;->this$0:Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;

    check-cast p2, Landroid/bluetooth/BluetoothLeBroadcast;

    invoke-static {p1, p2}, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->-$$Nest$fputmBroadcastService(Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;Landroid/bluetooth/BluetoothLeBroadcast;)V

    .line 451
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings$4;->this$0:Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;

    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->-$$Nest$fgetmAuracastSourceController(Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;)Lcom/android/settings/development/BluetoothBCAudioOnlySourcePreferenceController;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings$4;->this$0:Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;

    invoke-static {p0}, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->-$$Nest$fgetmBroadcastService(Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;)Landroid/bluetooth/BluetoothLeBroadcast;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/settings/development/BluetoothBCAudioOnlySourcePreferenceController;->onBluetoothServiceConnected(Landroid/bluetooth/BluetoothLeBroadcast;)V

    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 1

    const-string p1, "MiuiBluetoothBroadcastAudioSettings"

    const-string v0, "Bluetooth le audio service disconnected"

    .line 455
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings$4;->this$0:Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->-$$Nest$fputmBroadcastService(Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;Landroid/bluetooth/BluetoothLeBroadcast;)V

    .line 457
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings$4;->this$0:Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;

    invoke-static {p0}, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->-$$Nest$fgetmAuracastSourceController(Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;)Lcom/android/settings/development/BluetoothBCAudioOnlySourcePreferenceController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settings/development/BluetoothBCAudioOnlySourcePreferenceController;->onBluetoothServiceDisconnected()V

    return-void
.end method
