.class Lcom/android/settingslib/bluetooth/VendorCachedBluetoothDevice$1;
.super Landroid/bluetooth/BleBroadcastAudioScanAssistCallback;
.source "VendorCachedBluetoothDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/bluetooth/VendorCachedBluetoothDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingslib/bluetooth/VendorCachedBluetoothDevice;


# direct methods
.method constructor <init>(Lcom/android/settingslib/bluetooth/VendorCachedBluetoothDevice;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/android/settingslib/bluetooth/VendorCachedBluetoothDevice$1;->this$0:Lcom/android/settingslib/bluetooth/VendorCachedBluetoothDevice;

    invoke-direct {p0}, Landroid/bluetooth/BleBroadcastAudioScanAssistCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBleBroadcastAudioSourceAdded(Landroid/bluetooth/BluetoothDevice;BI)V
    .locals 0

    .line 0
    return-void
.end method

.method public onBleBroadcastAudioSourceRemoved(Landroid/bluetooth/BluetoothDevice;BI)V
    .locals 0

    .line 0
    return-void
.end method

.method public onBleBroadcastAudioSourceUpdated(Landroid/bluetooth/BluetoothDevice;BI)V
    .locals 0

    .line 0
    return-void
.end method

.method public onBleBroadcastPinUpdated(Landroid/bluetooth/BluetoothDevice;BI)V
    .locals 0

    .line 0
    return-void
.end method

.method public onBleBroadcastSourceFound(Landroid/bluetooth/le/ScanResult;)V
    .locals 2

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBleBroadcastSourceFound"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VendorCachedBluetoothDevice"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/VendorCachedBluetoothDevice$1;->this$0:Lcom/android/settingslib/bluetooth/VendorCachedBluetoothDevice;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/bluetooth/VendorCachedBluetoothDevice;->setScanResult(Landroid/bluetooth/le/ScanResult;)V

    return-void
.end method
