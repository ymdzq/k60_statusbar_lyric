.class Lcom/android/settings/bluetooth/BluetoothAdvancedSettings$1;
.super Ljava/lang/Object;
.source "BluetoothAdvancedSettings.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings$1;->this$0:Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 1

    const-string p1, "BluetoothAdvancedSettings"

    const-string v0, "Bluetooth le audio service connected"

    .line 127
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings$1;->this$0:Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;

    check-cast p2, Landroid/bluetooth/BluetoothLeBroadcast;

    invoke-static {p1, p2}, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->-$$Nest$fputmService(Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;Landroid/bluetooth/BluetoothLeBroadcast;)V

    .line 129
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings$1;->this$0:Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;

    invoke-static {p0}, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->-$$Nest$mupdateBroadcastAudioPreference(Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;)V

    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 1

    const-string p1, "BluetoothAdvancedSettings"

    const-string v0, "Bluetooth le audio service disconnected"

    .line 134
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings$1;->this$0:Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;

    invoke-static {p0}, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->-$$Nest$mupdateBroadcastAudioPreference(Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;)V

    return-void
.end method
